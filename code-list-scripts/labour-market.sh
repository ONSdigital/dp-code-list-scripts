#!/bin/bash

#This script will import required code lists for the labour market dataset


cypher-shell < ./cypher/lms-age-bracket.cypher
cypher-shell < ./cypher/lms-economic-status.cypher
cypher-shell < ./cypher/lms-unit-of-measure.cypher
cypher-shell < ./cypher/mmm-mmm-yyyy.cypher
cypher-shell < ./migration-scripts/ashe-sex.cypher
cypher-shell < ./cypher/seasonal-adjustment.cypher
