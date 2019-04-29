#!/bin/bash

#This script will import required code lists for the CPIH dataset


cypher-shell < ./cypher/lms-average-actual-hours-of-work.cypher
cypher-shell < ./cypher/lms-economic-inactivity-reason.cypher
cypher-shell < ./cypher/lms-jobseekers-duration.cypher
cypher-shell < ./cypher/lms-sic.cypher
cypher-shell < ./cypher/lms-work-type.cypher
cypher-shell < ./cypher/mmm-mmm-yyyy.cypher
cypher-shell < ./cypher/lms-age-bracket.cypher
cypher-shell < ./cypher/unit-of-measure.cypher
cypher-shell < ./cypher/lms-economic-status.cypher
cypher-shell < ./cypher/mmm-yy.cypher
cypher-shell < ./cypher/seasonal-adjustment.cypher
cypher-shell < ./migration-scripts/ashe-sex.cypher
cypher-shell < ../geo-specific-codelist/admin-geography.cypher