package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/ONSdigital/dp-code-list-scripts/code-list-scripts/file"
	"github.com/ONSdigital/dp-code-list-scripts/code-list-scripts/query"
	"github.com/ONSdigital/dp-code-list-scripts/code-list-scripts/regex"
	"github.com/davecgh/go-spew/spew"
)

func main() {

	filePtr := flag.String("file", "cypher/codelist.cypher", "path to a cypher file to be converted")
	flag.Parse()

	input := file.Read(*filePtr)

	output := &file.File{
		Content: []string{},
	}
	var codelist, edition string
	for _, l := range input.Content {

		if s := regex.IsCreate.FindString(l); len(s) > 0 {
			var out []string
			out, codelist, edition = createCodeList(l)
			output.Content = append(output.Content, out...)
		}

		if strings.HasPrefix(l, "MATCH") {
			output.Content = append(output.Content, createCode(l, codelist, edition)...)
		}

		output.Content = append(output.Content, query.NewLine)
	}

	output.Write(codelist)

	os.Exit(0)

}

func createCodeList(line string) ([]string, string, string) {
	matches := regex.KVPattern.FindAllStringSubmatch(line, -1)

	kvs := make(map[string]string)
	for _, m := range matches {
		if len(m) != 3 {
			spew.Dump(m)
			log.Fatal("this regex should have 2 capture groups!")
		}

		k := strings.Trim(m[1], "\"")
		v := strings.Trim(m[2], "\"")
		kvs[k] = v
	}

	edition := clean(kvs, "edition")

	ids := regex.CodeListID.FindStringSubmatch(line)
	if len(ids) != 2 {
		spew.Dump(ids)
		log.Fatal("this regex should have 1 capture group!")
	}

	id := ids[1]
	id = strings.Trim(id, "\"")

	var result []string
	result = append(result, fmt.Sprintf(query.CodeListCheckExists, id, edition))
	result = append(result, fmt.Sprintf(query.CodeListCreateV, id))

	lastProp := len(kvs)
	count := 1
	for k, v := range kvs {
		if count < lastProp {
			result = append(result, fmt.Sprintf(query.CodeListPropertyDot, k, v))
		} else {
			result = append(result, fmt.Sprintf(query.CodeListPropertyEnd, k, v))
		}
		count++
	}

	result = append(result, query.Next)

	return result, id, edition
}

func createCode(line, id, edition string) []string {
	matches := regex.KVPattern.FindAllStringSubmatch(line, -1)

	kvs := make(map[string]string)
	for _, m := range matches {
		if len(m) != 3 {
			spew.Dump(m)
			log.Fatal("this regex should have 2 capture groups!")
		}

		kvs[m[1]] = m[2]
	}

	value := clean(kvs, "value")
	label := clean(kvs, "label")

	var result []string
	result = append(result, fmt.Sprintf(query.CodeCheckExists, id, value))
	result = append(result, fmt.Sprintf(query.CodeCreateV, id, value))

	result = append(result, fmt.Sprintf(query.EdgeCheckExists, id, value))
	result = append(result, fmt.Sprintf(query.EdgeCreate, id, value))
	result = append(result, query.EdgeAddLabel)
	result = append(result, fmt.Sprintf(query.EdgeFindList, id, edition))
	result = append(result, fmt.Sprintf(query.EdgeAddProperty, label))

	return result
}

func clean(kvs map[string]string, key string) string {
	v, ok := kvs[key]
	if !ok {
		log.Fatal(key + " not found")
	}

	return strings.Trim(v, "\"")
}
