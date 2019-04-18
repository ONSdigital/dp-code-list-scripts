#!/bin/bash

#This script will import required code lists for the 1961 Census dataset


cypher-shell < ./cypher/census-1961-age-groups.cypher
cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ../geo-specific-codelist/1961-geography.cypher
cypher-shell < ./migration-scripts/ashe-sex.cypher
cypher-shell < ./cypher/census-1961-marital-status.cypher