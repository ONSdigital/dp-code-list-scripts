#!/bin/bash

#This script will import required code lists for the suicide by local authority dataset

cypher-shell < ./migration-scripts/calendar-years.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher