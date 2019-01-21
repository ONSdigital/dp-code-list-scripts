#!/bin/bash

#This script will import required code lists for the life expectancy by local authority dataset

cypher-shell < ../geo-specific-codelist/admin-geography.cypher
cypher-shell < ./cypher/yyyy-yy.cypher
cypher-shell < ./cypher/birth-cohort.cypher
cypher-shell < ./cypher/life-expectancy-variable.cypher