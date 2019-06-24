/*
This module provides a command that will loads a large volume of Instance nodes
into the database.

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

It creates 30,000 instances, corresponding to all permutations of:
- dataset suffices 0 - 299.
- edition suffices 0 - 9.
- version suffices 0 - 9.

It also then adds a single Code node that has an *inDataset* relationships to 
each of the Instances.

The dimensions set used is fixed.

The label suffix used for each instance is 0,1,2...2999; in the order they are created.

The *is_published* field is set true on most of the instances. It is set
false only on Instances with *dataset* set to test_dataset_200 (i.e. 1 in 300).

The nodes created are also given a magic marker (boolean) property to make it
easy to find them and delete them.

The script assumes that this URI will reach a Gremlin Server.
(Typically facilitated with an SSH tunnel from the local host to the AWS
managed server).

`dialer := gremgo.NewDialer("ws://127.0.0.1:8182/gremlin")`
*/

package main

import (
	"fmt"

	gremgo "github.com/gedge/gremgo-neptune"
)

const nDatasets = 299
const nEditions = 10
const nVersions = 10

func main() {
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
	err = executeTheScript(&client)

	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Printf("Finished normally\n")
}

const magicMarkerForThisScriptsInstances = "xxxx_pch_is_instance"
const magicMarkerForThisScriptsCodes = "xxxx_pch_is_code"

func executeTheScript(client *gremgo.Client) error {
	if err := removeOldContent(client); err != nil {
		return err
	}
	for dataset := 0; dataset < nDatasets; dataset++ {
		if err := makeForOneDataset(client, dataset); err != nil {
			return err
		}
	}
	if err := makeAndLinkTheCodeNode(client); err != nil {
		return err
	}
	return nil
}

func removeOldContent(client *gremgo.Client) error {
	qry := fmt.Sprintf(removeIncumbentNodesQry, magicMarkerForThisScriptsInstances)
	_, err := client.Execute(qry, nil, nil)
	if err != nil {
		return err
	}
	qry = fmt.Sprintf(removeIncumbentNodesQry, magicMarkerForThisScriptsCodes)
	_, err = client.Execute(qry, nil, nil)
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
	isPub := datasetSuffix != 200

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
	qry := fmt.Sprintf(makeCodeNodeQry, magicMarkerForThisScriptsCodes, magicMarkerForThisScriptsInstances)
	fmt.Printf("XXXXXXXX: %s\n", qry)
	_, err := client.Execute(qry, nil, nil)
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

const makeCodeNodeQry = `g.addV('_code').
	property(single, '%s', true).
	addE('inDataset').to(g.V().has('%s', true))
	`
