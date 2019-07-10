/*
This module provides a command for loading a large volume of Instance nodes
into the database.

It also makes a single Code node that has a "inDataset" link to all
of them. And a CodeList node that the Code is "usedBy".

It is intended to validate the development and performance of the
codelists.GetCodeDatasets() method in dp-graph.

It creates Instance nodes of this structure: (to match the incumbent
ones we use in the Neo4j database).

- label: _2021_Instance
- dataset: test_dataset_134
- dataset_id: test_dataset_134 // same as dataset
- dimensions: ("sex", "age", "geography")
- edition: test_edition_4
- version: 6
- is_published: true

It creates (for example) 15,000 instances, corresponding to all permutations of:
- dataset suffices 0 - 149.
- edition suffices 0 - 9.
- version suffices 0 - 9.

(these are adjustable using the constants below)

The label suffix used for each instance is 0,1,2...; in the order they are created.

The *is_published* field is set to true on all instances, except for those
with dataset suffix 0.

The Code node is like this:
- label: _code
- listID: "code-list-id-for-dataset-test"
- value: "code-value-for-dataset-test"

The CodeList node is like this:
- label: _code_list
- listID: "code-list-id-for-dataset-test"
- edition: "code-list-edition-for-dataset-test"

The Code node is linked to the CodeList with an edge of type: usedBy, and
a *label* property set to "test-dimension-name".

The nodes created are also given a magic marker (boolean) property to make it
easy to find them and delete them - and thus to run this script repeatedly without
bloating the database or leaving out-of-date schema items behind.

The script assumes that this URI will reach a Gremlin Server.
(Typically facilitated with an SSH tunnel from the local host to the AWS
managed server).

`dialer := gremgo.NewDialer("ws://127.0.0.1:8182/gremlin")`

Usage:

	go run loadtestdatasets.go -i // Create the Instances
	go run loadtestdatasets.go -c // Create the linked Code
*/

package main

import (
	"flag"
	"fmt"
	"os"
	"strconv"
	"strings"

	gremgo "github.com/ONSdigital/gremgo-neptune"
)

var nDatasets = 3
var nEditions = 2
var nVersions = 2

func main() {
	createInstances := flag.Bool("i", false, "Create some Instance nodes")
	createImport := flag.Bool("d", false, "Create some import nodes - instance, dimension and observations")
	createCode := flag.Bool("c", false, "Create a Code node linked to the Instances")
	flag.Parse()

	// Canonical boilerplate to bring up and use Gremgo...
	errs := make(chan error)
	go func(errs chan error) {
		err := <-errs
		fmt.Printf("Lost connection to the database: %s\n", err.Error())
	}(errs)

	dialer := gremgo.NewDialer("ws://127.0.0.1:8182/gremlin")
	client, err := gremgo.Dial(dialer, errs)
	if err != nil {
		fmt.Println(err)
		return
	}
	// Neptune behaviour injected here.
	if *createImport == true {
		err = executeImportScript(&client)
	} else if *createInstances == true {
		err = executeInstanceScript(&client)
	} else if *createCode == true {
		err = executeCodeScript(&client)
	} else {
		fmt.Printf("You must specify -i or -c\n")
		os.Exit(1)
	}
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Printf("Finished normally\n")
}

const magicMarkerForThisScriptsInstances = "xxxx_pch_is_instance"
const magicMarkerForThisScriptsCodes = "xxxx_pch_is_code"

func executeInstanceScript(client *gremgo.Client) error {
	if err := removeInstances(client); err != nil {
		return err
	}
	if err := removeCode(client); err != nil {
		return err
	}
	for dataset := 0; dataset < nDatasets; dataset++ {
		if err := makeForOneDataset(client, dataset); err != nil {
			return err
		}
	}
	return nil
}

func executeImportScript(client *gremgo.Client) error {
	if err := removeInstances(client); err != nil {
		return err
	}

	nDatasets = 1
	nEditions = 1
	nVersions = 1
	instanceID = 54321

	if err := makeForOneDataset(client, 11111); err != nil {
		return err
	}

	if err := makeAndLinkTheDimensions(client); err != nil {
		return err
	}

	if err := makeAndLinkObservations(client); err != nil {
		return err
	}

	return nil
}

func executeCodeScript(client *gremgo.Client) error {
	if err := removeCode(client); err != nil {
		return err
	}
	if err := makeAndLinkTheCodeNode(client); err != nil {
		return err
	}
	return nil
}

func removeInstances(client *gremgo.Client) error {
	qry := fmt.Sprintf(removeIncumbentNodesQry, magicMarkerForThisScriptsInstances)
	_, err := client.Execute(qry, nil, nil)
	if err != nil {
		return err
	}
	return nil
}

func removeCode(client *gremgo.Client) error {
	qry := fmt.Sprintf(removeIncumbentNodesQry, magicMarkerForThisScriptsCodes)
	_, err := client.Execute(qry, nil, nil)
	if err != nil {
		return err
	}
	return nil
}

func makeForOneDataset(client *gremgo.Client, datasetSuffix int) error {
	for edition := 0; edition < nEditions; edition++ {
		if err := makeForOneEdition(client, datasetSuffix, edition); err != nil {
			return err
		}
	}
	return nil
}

func makeForOneEdition(client *gremgo.Client, datasetSuffix int, editionSuffix int) error {
	for version := 0; version < nVersions; version++ {
		if err := makeForOneVersion(
			client, datasetSuffix, editionSuffix, version); err != nil {
			return err
		}
	}
	return nil
}

var instanceID int

func makeForOneVersion(client *gremgo.Client, datasetSuffix int, editionSuffix int, version int) error {
	instanceLabel := fmt.Sprintf("_%d_Instance", instanceID)
	instanceID++

	dataset := fmt.Sprintf("test_dataset_%d", datasetSuffix)
	edition := fmt.Sprintf("test_edition_%d", editionSuffix)
	isPub := datasetSuffix != 0

	// The dataset argument is repeated below deliberately.
	// The version argument is of type string. It should by rights be
	// of type int to make the version an int in the database, but that is
	// too problematic for the response parsing in
	// codelists.GetCodeDatasets() method in dp-graph.
	qry := fmt.Sprintf(makeInstanceNodeQry, instanceLabel, magicMarkerForThisScriptsInstances, dataset,
		dataset, edition, version, header, isPub)
	_, err := client.Execute(qry, nil, nil)
	if err != nil {
		return err
	}
	return nil
}

var header = "v4_0,geo,geo,age,age,sic,sic"
var ageLabel = "age"
var geoLabel = "geo"
var sicLabel = "sic"
var dimensions = map[string][]string{
	sicLabel: []string{"A", "02", "02.40", "02.20", "02.10", "02.3", "02.30", "01", "01.7"}, //"02.4", "02.2", "02.1" excluded to trigger has_data=false on hierarchy
	geoLabel: []string{"uk"},
	ageLabel: []string{"5", "15", "25", "35", "45", "55"},
}

func makeAndLinkTheDimensions(client *gremgo.Client) error {
	for dimensionID, options := range dimensions {
		dimensionLabel := fmt.Sprintf("_%d_%s", instanceID, dimensionID)

		for _, opt := range options {
			q := fmt.Sprintf(makeDimensionNodeQry, dimensionLabel, magicMarkerForThisScriptsInstances, opt, fmt.Sprintf("_%d_Instance", instanceID))
			if _, err := client.Execute(q, nil, nil); err != nil {
				return err
			}
		}
	}

	return nil
}

func makeAndLinkObservations(client *gremgo.Client) error {
	count := 1
	geo := dimensions[geoLabel][0]
	dimGeo := fmt.Sprintf("_%d_%s", instanceID, geoLabel)
	observationLabel := fmt.Sprintf("_%d_observation", instanceID)
	for _, age := range dimensions[ageLabel] {
		dimAge := fmt.Sprintf("_%d_%s", instanceID, ageLabel)
		for _, sic := range dimensions[sicLabel] {
			dimSic := fmt.Sprintf("_%d_%s", instanceID, sicLabel)

			observation := count * 100
			row := strconv.Itoa(observation) + "," + geoLabel + "," + geo + "," + sicLabel + "," + sic + "," + ageLabel + "," + age

			obsNodeQry := fmt.Sprintf(makeObservationNodeQryPart,
				observationLabel,
				magicMarkerForThisScriptsInstances,
				observation,
				count,
				row,
			)
			obsNodeQry += fmt.Sprintf(makeIsValueOfEdgePart, dimAge, age)
			obsNodeQry += fmt.Sprintf(makeIsValueOfEdgePart, dimSic, sic)
			obsNodeQry += fmt.Sprintf(makeIsValueOfEdgePart, dimGeo, geo)

			obsNodeQry = strings.Trim(obsNodeQry, ".")

			fmt.Println("observation query: " + obsNodeQry)
			_, err := client.Execute(obsNodeQry, nil, nil)
			if err != nil {
				return err
			}
			count++
		}
	}

	return nil
}

func makeAndLinkTheCodeNode(client *gremgo.Client) error {
	makeCodeQry := fmt.Sprintf(makeCodeNodeQry, magicMarkerForThisScriptsCodes, magicMarkerForThisScriptsCodes)
	_, err := client.Execute(makeCodeQry, nil, nil)
	if err != nil {
		return err
	}
	linkCodeQry := fmt.Sprintf(linkCodeNodeQry, magicMarkerForThisScriptsCodes, magicMarkerForThisScriptsInstances)
	_, err = client.Execute(linkCodeQry, nil, nil)
	if err != nil {
		return err
	}
	return nil
}

// Removes nodes with a given marker property == true
const removeIncumbentNodesQry = `g.V().has('%s', true).drop()`

// Note this query creates the instance's version property as a string
// deliberately. The schema should, logically, have an int. But that makes
// query (and its response parsing) in codelists.GetCodeDatasets() too difficult.
const makeInstanceNodeQry = `g.addV('%s').
	property(single, '%s', true).
	property(single, 'dataset', '%s').
	property(single, 'dataset_id', '%s').
	property(single, 'edition', '%s').
	property(single, 'version', %d).
	property(single, 'header', '%s').
	property(single, 'is_published', %v)`

const makeDimensionNodeQry = `g.addV('%s').
	property(single, '%s', true).
	property(single, 'value', '%s').
	addE('has_dimension').
		from(g.V().hasLabel('%s'))`

const makeObservationNodeQryPart = `g.addV('%s').
	property(single, '%s', true).
	property(single, 'value', '%s').
	property(single, 'rowIndex', '%s').
	property(single, 'row', '%s').`

const makeIsValueOfEdgePart = `
	addE('isValueOf').
	to(g.V().hasLabel('%s').has('value', '%s')).outV().`

const makeCodeNodeQry = `g.addV('_code').as('C').
    property(single, '%s', true).
    property(single, 'listID', 'code-list-id-for-dataset-test').
    property(single, 'value', 'code-value-for-dataset-test').
    addV('_code_list').
        property(single, '%s', true).
        property(single, 'listID', 'code-list-id-for-dataset-test').
        property(single, 'edition', 'code-list-edition-for-dataset-test').
    addE('usedBy').from(select('C')).
        property(single, 'label', 'test-dimension-name')
	`

const linkCodeNodeQry = `g.V().hasLabel('_code').has('%s', true).as('C').
	V().has('%s', true).
	addE('inDataset').from(select('C'))
`
