#!/bin/bash

#This script will import required code lists for the suicide by local authority dataset

cypher-shell < ./cypher/mmm-yy.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher
cypher-shell < ./cypher/housing-rental-prices-variable.cypher