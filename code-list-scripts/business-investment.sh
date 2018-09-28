#!/bin/bash

#This script will import required code lists for all business investment datasets
# Business Investment GFCF
# Business Investment Capital Formation

cypher-shell < ./cypher/yyyy.cypher
cypher-shell < ./migration-scripts/uk-only.cypher
cypher-shell < ./cypher/business-investment-activity.cypher
cypher-shell < ./cypher/business-investment-instrument-asset.cypher
cypher-shell < ./cypher/business-investment-prices.cypher
