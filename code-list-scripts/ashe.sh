#!/bin/bash

#This script will import required code lists for all ASHE datasets
# ASHE Table 7 (hours)
# ASHE Table 7 (earnings)
# ASHE Table 8 (hours)
# ASHE Table 8 (earnings)

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ./migration-scripts/ashe-sex.cypher
cypher-shell < ./cypher/ashe-working-pattern.cypher
cypher-shell < ./cypher/ashe-hours.cypher
cypher-shell < ./cypher/ashe-earnings.cypher
cypher-shell < ./cypher/ashe-statistics.cypher
cypher-shell < ./migration-scripts/ashe-geography.cypher