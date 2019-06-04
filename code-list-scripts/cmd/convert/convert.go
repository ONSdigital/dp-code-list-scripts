package main

import (
	"bufio"
	"flag"
	"fmt"
	"log"
	"os"
	"regexp"
	"strings"

	"github.com/davecgh/go-spew/spew"
)

var isCreate *regexp.Regexp
var kvPattern *regexp.Regexp
var codeListID *regexp.Regexp

const (
	codeListCheckExists = "g.V().hasLabel('_code_list_%s').has('edition', '%s').fold().coalesce(unfold(),"
	codeListAddV        = "	addV('_code_list_%s::_code_list')."
	codeListPropertyDot = "		property(single, '%s', '%s')."
	codeListPropertyEnd = "		property(single, '%s', '%s')"
	next                = "	).next()"
)

func init() {
	fmt.Println("init")
	var err error
	isCreate, err = regexp.Compile("^CREATE +\\([^{]+{ *")
	if err != nil {
		log.Fatal("first regex failed")
	}

	inTicks := "'[^']+'"
	inQuotes := `"[^"]+"`
	kvPattern, err = regexp.Compile("([a-zA-Z0-9_\\-\"`']+) *: *(" + inTicks + "|" + inQuotes + ")[, ]*")
	if err != nil {
		log.Fatal("second regex failed")
	}

	codeListID, err = regexp.Compile("^CREATE[ ]*\\(.+_code_list_([^`]+).*")
	if err != nil {
		log.Fatal("third regex failed")
	}

	fmt.Println("init complete")
}

func main() {

	filePtr := flag.String("file", "cypher/codelist.cypher", "path to a cypher file to be converted")
	flag.Parse()
	fmt.Println("parsed flag")

	lines := readFile(*filePtr)
	fmt.Println("read file")

	for _, l := range lines {

		if strings.HasPrefix(l, "MATCH") {
			continue
		}

    var addToOutput []string
		//if idx := isCreate.FindStringIndex(l); len(idx) > 0 {
    if s := isCreate.FindString(l); len(s) > 0 {
      addToOutput = createCodeList(l)
		}



	}

	//	output := "gremlin/" + *filePtr + ".grm"

}

func createCodeList(line string) []string {
  fmt.Println("IS CREATE")
  matches := kvPattern.FindAllStringSubmatch(line, -1)

  kvs := make(map[string]string)
  for _, m := range matches {
    if len(m) != 3 {
      spew.Dump(m)
      log.Fatal("this regex should have 2 capture groups!")
    }

    kvs[m[1]] = m[2]
  }

  if _, ok := kvs["edition"]; !ok {
    spew.Dump(kvs)
    log.Println("line: " + line)
    log.Fatal("no edition on create code list line")
  }

  id := codeListID.FindString(line)
  if len(id) == 0 {
    fmt.Println("line: " + line)
    log.Fatal("no ID found")
  }

  var result []string
  result = append(result, fmt.Sprintf(codeListCheckExists, id, kvs["edition"]))
  result = append(result, fmt.Sprintf(codeListAddV, id))

  lastProp := len(kvs)
  count := 1
  for k, v := range kvs {
    if count < lastProp {
      result = append(result, fmt.Sprintf(codeListPropertyDot, k, v))
    } else {
      result = append(result, fmt.Sprintf(codeListPropertyEnd, k, v))
    }
    count++
  }

  return result
}

func readFile(name string) []string {
	file, err := os.Open(name)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	lines := []string{}
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		lines = append(lines, scanner.Text())
	}

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}

	return lines
}
