#!/bin/bash

#This script will import required code lists for the trade dataset

cypher-shell < ./cypher/mmm-yy.cypher
cypher-shell < ./migration-scripts/uk-only.cypher
cypher-shell < ./cypher/trade-commodity.cypher
cypher-shell < ./cypher/trade-country.cypher
cypher-shell < ./cypher/trade-direction.cypher