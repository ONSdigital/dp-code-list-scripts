#!/bin/bash

#This script will import required code lists for the knife crime datasets

cypher-shell < ./cypher/mmm-mmm-yyyy.cypher
cypher-shell < ./cypher/crime-offence-code.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher
