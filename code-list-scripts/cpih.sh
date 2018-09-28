#!/bin/bash

#This script will import required code lists for the CPIH dataset


cypher-shell < ./cypher/cpih1dim1aggid.cypher
cypher-shell < ./migration-scripts/uk-only.cypher
cypher-shell < ./cypher/mmm-yy.cypher
