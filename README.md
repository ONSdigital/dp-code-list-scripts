Code List Scripts
================

# Creating code lists

When cypher files have been created for a given code list they should be stored in either `code-list-scripts/cypher` or `geo-specific-codelist`. Files should be named according to their code list ID i.e. a script for `ashe-earnings` should be called `ashe-earnings.cypher`

All cypher code list files should define:
1) The code list node, including its edition
2) Constraints on the code list node, so only one node exists per edition
3) Constraints on the codes, so only one node exists for each code across all editions of that code list
4) Each code node, and its relationship to the code list node, which should contain a web-friendly label

Geography code lists differ in that:
- all geography codes should consider themselves of the 'geography' code list for the purpose of setting constraints i.e only one node should exist for a code, even if it is used in multiple lists - meaning all codes bear the label `_code_geography`
- code lists which are formal geographic definitions (provided by the Geography team) should contain additional details on the list node:
  - a `_geography` label
  - the parameter `geography_list_ID`

There are also some scripts to help create new Cypher queries for CMD.

#### Geography specific codelists
  Used to create a 'real' geography codelist using data from the geoportal.

  https://onsdigital.github.io/dp-code-list-scripts/geo-specific-codelist/new-codelist.html

#### General codelists
  Used to create a codelist using the two column format from the v4.

  https://onsdigital.github.io/dp-code-list-scripts/new-codelist/new-codelist.html

  Note: Create codelist CSV to upload from v4 file by extracting the two columns and removing duplicates.


# Cypher & Gremlin

To keep options open, its preferable to keep a full list of code lists up to date in both Cypher and Gremlin. This can most easily be achieved by continuing to create the scripts in Cypher, and then using conversion scripts to parse those files and output the equivalent Gremlin.

There are separate conversion scripts for general code list scripts and geography code lists.

To convert general code lists:
`cd code-list-scripts`
`./convert.sh cypher/<new-file-name>`

To convert geography code lists:
`cd geo-specific-codelist`
`./convert-cypher-to-gremlin.sh <new-file-name>`

Each of these scripts can also take multiple cypher files as input, and in all cases will output the `.grm` file into the relevant `gremlin` directory.


# Importing code lists

#### Locally

To load code lists locally, code lists have been grouped by dataset into a selection of YAML files. When loading code lists, you're likely doing it to satisfy the requirements for importing a specific dataset. The [`load`](code-list-scripts/load.go) program has been written to allow multiple code lists to be loaded to the relevant database by specifying a query language and which dataset YAML file defines the required lists.

e.g. `./load -q=cypher -f=ashe.yaml` will import all code lists required for ASHE datasets using the cypher query console.
`-q`: query language - options are `cypher` or `gremlin`
`-f`: YAML file
Optional arguments: -u and -p for providing user and passphrase specifically to `cypher-shell`

`Load` relies on both `cypher-shell` and `gremlin` query consoles, so make sure you have both installed, and connections to whichever database you're targeting.

Note: Some code list scripts do not properly set their constraints, and code lists may be shared across multiple datasets. This may lead to a situation where running 2 different dataset import scripts results in 2 copies of the same code list in the graph. The import process will not work in this case. Be sure to only load each code list once.

#### Environments

To load code lists to any environment you will need:
- SSH access to the database for that environment
- the console or shell command for the query language you plan on using (either `cypher-shell` or `gremlin.sh`) in your `$PATH`

Loading each code list is a 3-step process from that point:
1. Disable your local database
2. Open a tunnel to the database port on the relevant server
3. Either:

  a. Pass the relevant code list file into the query command - this is where cypher and gremlin diverge:

  -  for cypher, use the cypher shell e.g.

     `cypher-shell < code-list-scripts/cypher/ashe-earnings.cypher`

  - for gremlin, use the [`gremlin-import.sh`](gremlin-import.sh) script, which wraps the `gremlin.sh` command (from gremlin-console) e.g.

    `./gremlin-import.sh geo-specific-codelist/gremlin/ctry17.grm`

  b. Use the [`load`](code-list-scripts/load.go) tool to select which query language and YAML file's contents you would like to load
