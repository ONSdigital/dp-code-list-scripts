/*
This module provides a command for loading a large volume of Instance nodes
into the database.

It also makes a single Code node that has a "inDataset" link to all
of them. And a CodeList node that the Code is "usedBy".

It is intended to validate the development and performance of the
codelists.GetCodeDatasets() method in dp-graph.

It creates Instance nodes of this structure: (to match the incumbent
ones we use in the Neo4j database).

- label: _instance_2021
- dataset: test_dataset_134
- dataset_id: test_dataset_134 // same as dataset
- dimensions: ("sex", "age", "geography")
- edition: test_edition_4
- version: 6
- is_published: true

It creates 15,000 instances, corresponding to all permutations of:
- dataset suffices 0 - 149.
- edition suffices 0 - 9.
- version suffices 0 - 9.

(these are adjustable using the constantns below)

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
easy to find them and delete them.

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

	gremgo "github.com/gedge/gremgo-neptune"
)

const nDatasets = 3
const nEditions = 2
const nVersions = 2

func main() {
	createInstances := flag.Bool("i", false, "Create some Instance nodes")
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
	if *createInstances == true {
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
	instanceLabel := fmt.Sprintf("_instance_%d", instanceID)
	instanceID++

	dataset := fmt.Sprintf("test_dataset_%d", datasetSuffix)
	edition := fmt.Sprintf("test_edition_%d", editionSuffix)
	isPub := datasetSuffix != 0

	// The dataset argument is repeated below deliberately.
	// The version argument alone is (int).
	qry := fmt.Sprintf(makeInstanceNodeQry, instanceLabel, magicMarkerForThisScriptsInstances, dataset,
		dataset, edition, version, isPub)
	_, err := client.Execute(qry, nil, nil)
	if err != nil {
		return err
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

const makeInstanceNodeQry = `g.addV('%s').
	property(single, '%s', true).
	property(single, 'dataset', '%s').
	property(single, 'dataset_id', '%s').
	property(single, 'edition', '%s').
	property(single, 'version', '%d').
	property(single, 'is_published', %v)
	`

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
