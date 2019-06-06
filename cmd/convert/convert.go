package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/ONSdigital/dp-code-list-scripts/file"
	"github.com/ONSdigital/dp-code-list-scripts/query"
	"github.com/ONSdigital/dp-code-list-scripts/regex"
	"github.com/davecgh/go-spew/spew"
)

func main() {

	filePtr := flag.String("file", "cypher/codelist.cypher", "path to a cypher file to be converted")
	geoPtr := flag.Bool("geography", false, "flag indicating if code list is an official geographic list")

	flag.Parse()

	input := file.Read(*filePtr)
	output := &file.File{
		Content: []string{},
	}

	var codelist, edition string
	for _, l := range input.Content {

		if s := regex.IsCreate.FindString(l); len(s) > 0 {
			var out []string
			out, codelist, edition = createCodeList(l, *geoPtr)
			output.Content = append(output.Content, out...)
		}

		if strings.HasPrefix(l, "MATCH") {
			output.Content = append(output.Content, createCode(l, codelist, edition, *geoPtr)...)
		}

		output.Content = append(output.Content, query.NewLine)
	}

	output.Write(codelist, *geoPtr)

	os.Exit(0)

}

func createCodeList(line string, geo bool) ([]string, string, string) {
	matches := regex.KVPattern.FindAllStringSubmatch(line, -1)

	kvs := make(map[string]string)
	for _, m := range matches {
		if len(m) != 3 {
			spew.Dump(m)
			log.Fatal("this regex should have 2 capture groups!")
		}

		k := trim(m[1])
		v := trim(m[2])
		kvs[k] = v
	}

	edition := clean(kvs, "edition")

	ids := regex.CodeListID.FindStringSubmatch(line)
	if len(ids) != 2 {
		spew.Dump(ids)
		log.Fatal("this regex should have 1 capture group!")
	}

	id := ids[1]
	id = trim(id)

	var result []string
	result = append(result, fmt.Sprintf(query.CodeListCheckExists, id, edition))
	result = append(result, query.CodeListCreateV)

	lastProp := len(kvs)
	count := 1
	result = append(result, fmt.Sprintf(query.CodeListPropertyDot, "listID", id))
	if geo {
		result = append(result, fmt.Sprintf(query.CodeListPropertyDot, "geography", "true"))
	}
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

func createCode(line, id, edition string, geo bool) []string {
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
	if geo {
		result = prepareEdge(result, "geography", value)
	} else {
		result = prepareEdge(result, id, value)
	}

	result = append(result, query.EdgeAddLabel)
	result = append(result, fmt.Sprintf(query.EdgeFindList, id, edition))
	result = append(result, fmt.Sprintf(query.EdgeAddProperty, label))

	return result
}

func prepareEdge(r []string, id, value string) []string {
	r = append(r, fmt.Sprintf(query.CodeCheckExists, id, value))
	r = append(r, query.CodeCreateV)
	r = append(r, fmt.Sprintf(query.CodeAddProperty, id, value))
	r = append(r, query.Next)

	r = append(r, fmt.Sprintf(query.EdgeCheckExists, id, value))
	r = append(r, fmt.Sprintf(query.EdgeFindCode, id, value))
	return r
}

func clean(kvs map[string]string, key string) string {
	v, ok := kvs[key]
	if !ok {
		log.Fatal(key + " not found")
	}

	return trim(v)
}

func trim(s string) string {
	return strings.Trim(s, "\"'")
}
