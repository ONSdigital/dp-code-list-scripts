#!/bin/bash

#This script will import required code lists for all NPP datasets
# NPP - population numbers
# NPP - mortality assumptions - financial years and cross border rates missing
# NPP - migration - financial years missing
# NPP - fertility - financial years missing
# NPP - deaths - financial years missing
# NPP - births - financial years missing
# NPP - cross border rates - npp-border missing

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ./migration-scripts/uk-only.cypher
cypher-shell < ./cypher/npp-projection-type.cypher
cypher-shell < ./migration-scripts/npp-age.cypher
cypher-shell < ./migration-scripts/npp-sex.cypher
cypher-shell < ./cypher/npp-population-measure.cypher