#!/bin/bash

#This script will import required code lists for average weekly earnings

cypher-shell < ./cypher/mmm-yyyy.cypher
cypher-shell < ./cypher/sic.cypher
cypher-shell < ./cypher/awe-type-of-pay.cypher
cypher-shell < ./cypher/awe-earnings.cypher
cypher-shell < ../geo-specific-codelist/crty17.cypher