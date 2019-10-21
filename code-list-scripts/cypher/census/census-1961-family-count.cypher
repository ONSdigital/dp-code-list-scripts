CREATE (node:`_code_list`:`_code_list_census-1961-family-count` { label:'familycount', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-family-count`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-family-count`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-family-count` { value:'no-family' });
MATCH (parent:`_code_list`:`_code_list_census-1961-family-count`),(node:`_code`:`_code_census-1961-family-count` { value:'no-family' }) MERGE (node)-[:usedBy { label:"No family"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-family-count` { value:'one-family' });
MATCH (parent:`_code_list`:`_code_list_census-1961-family-count`),(node:`_code`:`_code_census-1961-family-count` { value:'one-family' }) MERGE (node)-[:usedBy { label:"One family"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-family-count` { value:'two-or-more-families' });
MATCH (parent:`_code_list`:`_code_list_census-1961-family-count`),(node:`_code`:`_code_census-1961-family-count` { value:'two-or-more-families' }) MERGE (node)-[:usedBy { label:"Two or more families"}]->(parent);

