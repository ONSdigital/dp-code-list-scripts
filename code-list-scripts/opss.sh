#!/bin/bash

#This script will import required code lists for all OPSS datasets
# OPSS Membership
# OPSS Rates

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ./migration-scripts/uk-only.cypher
cypher-shell < ./cypher/opss-scheme-membership-sizeband.cypher
cypher-shell < ./cypher/opss-status.cypher
cypher-shell < ./cypher/opss-benefit-type.cypher
cypher-shell < ./cypher/opss-public-private-sector.cypher
cypher-shell < ./cypher/opss-membership-type.cypher
cypher-shell < ./cypher/opss-contributor.cypher