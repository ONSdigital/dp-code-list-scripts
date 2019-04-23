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
`./convert-cypher-to-gremlin.sh cypher/<new-file-name>`

To convert geography code lists:
`cd geo-specific-codelist`
`./convert-cypher-to-gremlin.sh <new-file-name>`

Each of these scripts can also take multiple cypher files as input, and in all cases will output the `.grm` file into the local `gremlin` directory.


# Importing code lists

#### Locally

To load code lists locally, execute the script that relates to the correct dataset, and all of the relevant code lists will be imported.

E.g. `./code-list-scripts/cpih.sh` will import all the code lists required for CPIH.

Note: Some code list scripts do not properly set their constraints, and code lists may be shared across multiple datasets. This may lead to a situation where running 2 different dataset import scripts results in 2 copies of the same code list in the graph. The import process will not work in this case. Be sure to only load each code list once.

#### Environments

To load code lists to any environment you will need:
- SSH access to the database for that environment
- the console or shell command for the query language you plan on using (either `cypher-shell` or `gremlin`) in your `$PATH`

Loading each code list is a 3 step process from that point:
1. Disable your local database
2. Open a tunnel to the database port on the relevant server
3. Pass the relevant code list file into the query command - this is where cypher and gremlin diverge:
  -  for cypher, use the cypher shell e.g. `cypher-shell < code-list-scripts/cypher/ashe-earnings.cypher`
  - for gremlin, use the [`gremiln-import.sh`](gremlin-import.sh) script, which wraps the `gremiln` command e.g. `./gremlin-import.sh geo-specific-codelist/gremlin/ctry17.grm`
