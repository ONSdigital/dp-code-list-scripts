CREATE (node:`_code_list`:`_code_list_census-1961-household-type` { label:'householdtype', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-household-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-household-type`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-household-type` { value:'all-households' });
MATCH (parent:`_code_list`:`_code_list_census-1961-household-type`),(node:`_code`:`_code_census-1961-household-type` { value:'all-households' }) MERGE (node)-[:usedBy { label:"All households"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-household-type` { value:'all-persons-in-households' });
MATCH (parent:`_code_list`:`_code_list_census-1961-household-type`),(node:`_code`:`_code_census-1961-household-type` { value:'all-persons-in-households' }) MERGE (node)-[:usedBy { label:"All persons in households"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-household-type` { value:'households-sharing-a-dwelling-with-exclusive-use-of-a-stove-and-sink' });
MATCH (parent:`_code_list`:`_code_list_census-1961-household-type`),(node:`_code`:`_code_census-1961-household-type` { value:'households-sharing-a-dwelling-with-exclusive-use-of-a-stove-and-sink' }) MERGE (node)-[:usedBy { label:"Households sharing a dwelling with exclusive use of a stove and sink"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-household-type` { value:'households-sharing-a-dwelling-without-exclusive-use-of-a-stove-and-sink' });
MATCH (parent:`_code_list`:`_code_list_census-1961-household-type`),(node:`_code`:`_code_census-1961-household-type` { value:'households-sharing-a-dwelling-without-exclusive-use-of-a-stove-and-sink' }) MERGE (node)-[:usedBy { label:"Households sharing a dwelling without exclusive use of a stove and sink"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-household-type` { value:'households-sharing-a-dwelling' });
MATCH (parent:`_code_list`:`_code_list_census-1961-household-type`),(node:`_code`:`_code_census-1961-household-type` { value:'households-sharing-a-dwelling' }) MERGE (node)-[:usedBy { label:"Households sharing a dwelling"}]->(parent);

