package file

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

//File contains each line of a text or query file
type File struct {
	Content []string
}

//Read contents of a file at a given path
func Read(name string) *File {
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

	return &File{lines}
}

//Write contents of file to a prestructured path with the provided ID
func (f *File) Write(codelist string, geo bool) {
	var output string

	if geo {
		output = "geo-specific-codelist/"
	} else {
		output = "code-list-scripts/"
	}

	output = output + "gremlin/" + codelist + ".grm"
	fmt.Println(fmt.Sprintf("Writing %v lines to %s", len(f.Content), output))

	_ = os.Remove(output)
	openFile, err := os.Create(output)
	if err != nil {
		log.Fatal("cannot open file to write " + err.Error())
	}
	defer openFile.Close()

	writer := bufio.NewWriter(openFile)
	for _, l := range f.Content {
		_, err = writer.WriteString(l + "\n")
		if err != nil {
			log.Fatal("failed writing file")
		}
	}
	writer.Flush()
}
