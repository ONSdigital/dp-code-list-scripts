#!/bin/bash

#This script will import required code lists for all NPP datasets
# NPP - population numbers
# NPP - mortality assumptions 
# NPP - migration
# NPP - fertility
# NPP - deaths
# NPP - births 
# NPP - cross border rates

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ./cypher/yyyy-yy.cypher
cypher-shell < ./migration-scripts/uk-only.cypher
cypher-shell < ./cypher/npp-all-projectiontype.cypher
cypher-shell < ./cypher/npp-age.cypher
cypher-shell < ./cypher/npp-sex.cypher
cypher-shell < ./cypher/npp-population-measure.cypher