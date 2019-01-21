#!/bin/bash

#This script will import required code lists for the parents country of birth by local authority dataset

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher
cypher-shell < ./cypher/parents-country-birth.cypher
cypher-shell < ./cypher/unit-of-measure.cypher