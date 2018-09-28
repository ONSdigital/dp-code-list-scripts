#!/bin/bash

#This script will import required code lists for the mid year population dataset

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ./migration-scripts/mid-year-pop-geography.cypher
cypher-shell < ./migration-scripts/mid-year-pop-sex.cypher
cypher-shell < ./migration-scripts/mid-year-pop-age.cypher