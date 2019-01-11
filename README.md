New codelists
================

Scripts to create new Cypher queries for CMD.

## Geo specific codelist
Used to create a 'real' geography codelist using data from the geoportal.

https://onsdigital.github.io/dp-code-list-scripts/geo-specific-codelist/new-codelist.html

## New codelist
Used to create a codelist using the two column format from the v4.

https://onsdigital.github.io/dp-code-list-scripts/new-codelist/new-codelist.html

Note: Create codelist CSV to upload from v4 file by extracting the two coluns and removing duplicates.


## Code-list scripts
Contains a store of all cypher queries to populate Neo and load existing datasets, with scripts for each dataset group. New codelists should also be stored here.

## Import to a new development environment

In order to import data in a development environment, the code lists must be present in the database first.
Execute the script that relates to the correct dataset, and all of the relevant code lists will be imported.

E.g. `./code-list-scripts/cpih.sh`
