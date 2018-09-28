#!/bin/bash

#This script will import required code lists for the wellbeing dataset

cypher-shell < ./migration-scripts/year-ending.cypher
cypher-shell < ./migration-scripts/wellbeing-geography.cypher
cypher-shell < ./cypher/wellbeing-estimate.cypher
cypher-shell < ./cypher/wellbeing-measureofwellbeing.cypher