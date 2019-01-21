#!/bin/bash

#This script will import required code lists for the drug related deaths by local authority dataset

cypher-shell < ./cypher/yyyy-yy.cypher
cypher-shell < ./migration-scripts/ashe-sex.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher
cypher-shell < ./cypher/drug-deaths-type-of-death.cypher
cypher-shell < ./cypher/drug-deaths-mortality.cypher