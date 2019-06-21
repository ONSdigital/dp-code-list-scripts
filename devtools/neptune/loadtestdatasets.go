/*
This module provides a command that will load some hard-coded test Instance nodes into a Neptune
database, to aid the development and performance awareness of the dp-graph code list library.

Specifically, to develop the codelists.GetCodeDatasets() method.

It also then adds one Code node that has an *inDataset* relationships to each of the instances.

It creates Instance nodes with properties like this: (to match the incumbent ones we use
in the Neo4j database).

- label: instance_41
- dataset: test_dataset_42
- dataset_id: test_dataset_42 // same as dataset
- dimensions: ("sex", "age", "geography")
- edition: test_edition_43
- version: 45
- is_published: true

The dataset suffices are 0 - 299.
The edition suffices are 0 - 9.
The version suffices are 0 - 9.

The dimensions are constant.

An instance is created for all permutations of {dataset, edition, version}.
The label suffix used for each instance is 0,1,2... in the order they are created.
The *is_published* field is set true on most of the instances. It is set false only on
Instances with *dataset* set to test_dataset_200 (i.e. 1 in 300).

The instances also have a boolean *xxxx-findme-2084567* property to make it
easy to find them and delete them.
*/

package main

import (
	"encoding/json"
	"fmt"

	gremgo "github.com/gedge/gremgo-neptune"
)

func main() {
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
	err = executeTheScript(client)
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Printf("Finished normally\n")
}

const nDatasets = 1
const nEditions = 1
const nVersions = 1

func executeTheScript(client gremgo.Client) error {
    for dataset := 0; dataset < nDatasets; dataset++ {
        err := makeDataset(client, dataset)
        if err != nil {
            return err
        }
    }
    return nil
}

func makeDataset(client gremgo.Client, datasetSuffix int) error {
    for edition := 0; edition < nEditions; edition++ {
        err := makeEdition(client, datasetSuffix, edition)
        if err != nil {
            return err
        }
    }
    return nil
}

func makeEdition(client gremgo.Client, datasetSuffix int, editionSuffix int) error {
    for version := 0; version < nVersions; version++ {
        err := makeVersion(client, datasetSuffix, editionSuffix, version)
        if err != nil {
            return err
        }
    }
    return nil
}

func makeVersion(client gremgo.Client, datasetSuffix int, editionSuffix int, version int) error {
    //dataset := fmt.Sprintf("test_dataset_%d", datasetSuffix)
    //edition := fmt.Sprintf("test_edition_%d", editionSuffix)

    // qry := fmt.Sprintf(instanceQuery, dataset, edition, version)
    qry := fmt.Sprintf(instanceQuery)
	res, err := client.Execute(qry, nil, nil)
	if err != nil {
		return err
	}
	JSON, err := json.Marshal(res[0].Result.Data)
	if err != nil {
		return err
	}
	fmt.Printf("JSON: %s\n", JSON)
    return nil
}

var instanceQuery = `
    g.V().has('magicnumber-xxx-926', true).fold().coalesce(unfold(), 
    addV('_instance').
        property(single, 'magicnumber-xxx-926', true).
    ).next()
`
