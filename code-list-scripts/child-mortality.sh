#!/bin/bash

#This script will import required code lists for the Child Mortality dataset


cypher-shell < ./cypher/unit-of-measure.cypher
cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher
cypher-shell < ./cypher/births-and-deaths.cypher