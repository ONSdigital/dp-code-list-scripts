#!/bin/bash

#This script will import required code lists for the House Prices dataset


cypher-shell < ./cypher/property-type.cypher
cypher-shell < ./migration-scripts/mmm-yy.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher
cypher-shell < ./cypher/house-price-variable.cypher
cypher-shell < ./cypher/house-price-age.cypher