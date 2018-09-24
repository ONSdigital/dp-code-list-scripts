#!/bin/bash

#This script will import required code lists for all crime datasets
# Crime by accomodation
# Crime with offences - NONE OF THESE LISTS CURRENTLY EXIST

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ./cypher/crime-accomodation-type.cypher
cypher-shell < ./migration-scripts/crime-age.cypher
cypher-shell < ./migration-scripts/england-and-wales-only.cypher
cypher-shell < ./cypher/crime-type.cypher
cypher-shell < ./cypher/crime-measurement-type.cypher
cypher-shell < ./migration-scripts/crime-sex.cypher
