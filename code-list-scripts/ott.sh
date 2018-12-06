#!/bin/bash

#This script will import required code lists for the Overseas Travel and Tourism dataset

cypher-shell < ./cypher/ott-age.cypher
cypher-shell < ./cypher/ott-cost.cypher
cypher-shell < ./cypher/ott-countries-in-groups.cypher
cypher-shell < ./cypher/ott-country.cypher
cypher-shell < ./cypher/ott-purpose.cypher
cypher-shell < ./cypher/ott-residence.cypher
cypher-shell < ./cypher/ott-sex.cypher
cypher-shell < ./cypher/calendar-month.cypher
cypher-shell < ./migration-scripts/calendar-years