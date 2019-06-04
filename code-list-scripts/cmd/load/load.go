package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"os"
	"os/exec"

	yaml "gopkg.in/yaml.v2"
)

var authenticated bool

type Import struct {
	Language string   `language`
	Files    []string `files`
}

type YMLFile struct {
	List []Import `imports`
}

func main() {
	ql := flag.String("q", "", "query language - 'cypher' or 'gremlin'")
	f := flag.String("f", "", "file path to JSON file defining a list of code lists to import")
	u := flag.String("u", "", "user")
	p := flag.String("p", "", "passphrase")

	flag.Parse()

	if ql == nil || f == nil {
		fmt.Println("query language and file path must be provided")
		os.Exit(1)
	}

	if (u != nil || p != nil) && (len(*u) > 0 || len(*p) > 0) {
		authenticated = true
	}

	file, err := ioutil.ReadFile(*f)
	if err != nil {
		fmt.Println("couldnt read file: " + err.Error())
		os.Exit(1)
	}

	var ymlF YMLFile
	err = yaml.Unmarshal(file, &ymlF)
	if err != nil {
		fmt.Println("unable to unmarshal JSON: " + err.Error())
		os.Exit(1)
	}

	switch *ql {
	case "cypher":
		for _, imp := range ymlF.List {
			if imp.Language == *ql {
				imp.loadCypher(*u, *p)
				os.Exit(0)
			}
		}
	case "gremlin":
		for _, imp := range ymlF.List {
			if imp.Language == *ql {
				imp.loadGremlin()
				os.Exit(0)
			}
		}
	default:
		fmt.Println("invalid -q argument: must be 'cypher' or 'gremlin'")
		os.Exit(1)
	}
}

func (i *Import) loadCypher(user, pass string) {
	for _, codelist := range i.Files {
		args := []string{}
		if authenticated {
			args = append(args, "-u", user, "-p", pass)
		}

		args = append(args, "<", codelist)

		command := "cypher-shell "
		for _, a := range args {
			command += a + " "
		}
		cmd := exec.Command("bash", "-c", command)
		cmd.Stderr = os.Stderr

		if err := cmd.Run(); err == nil {
			fmt.Println("loaded: " + codelist)
		}
	}
}

func (i *Import) loadGremlin() {
	command := "./gremlin-import.sh "
	for _, file := range i.Files {
		command += file + " "
	}
	cmd := exec.Command("bash", "-c", command)
	cmd.Stderr = os.Stderr

	if err := cmd.Run(); err != nil {
		fmt.Println("gremlin import failed: " + err.Error())
	}
}
