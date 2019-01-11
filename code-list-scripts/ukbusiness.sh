#!/bin/bash

#This script will import required code lists for the Uk Business dataset

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher
cypher-shell < ./cypher/uk-business-broad-industry-group.cypher
cypher-shell < ./cypher/uk-business-unit.cypher

