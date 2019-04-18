#!/bin/bash

#This script will import required code lists for the Construction dataset

cypher-shell < ./cypher/mmm-yy.cypher
cypher-shell < ./cypher/type-of-prices.cypher
cypher-shell < ./cypher/seasonal-adjustment.cypher
cypher-shell < ./cypher/construction-series-type.cypher
cypher-shell < ./cypher/construction-classifications.cypher
