CREATE (node:`_code_list`:`_code_list_census-1961-tenure-variable` { label:'tenurevariable', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-tenure-variable`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-tenure-variable`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-tenure-variable` { value:'households' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure-variable`),(node:`_code`:`_code_census-1961-tenure-variable` { value:'households' }) MERGE (node)-[:usedBy { label:"Households"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-tenure-variable` { value:'persons' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure-variable`),(node:`_code`:`_code_census-1961-tenure-variable` { value:'persons' }) MERGE (node)-[:usedBy { label:"Persons"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-tenure-variable` { value:'rooms' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure-variable`),(node:`_code`:`_code_census-1961-tenure-variable` { value:'rooms' }) MERGE (node)-[:usedBy { label:"Rooms"}]->(parent);

