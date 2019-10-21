CREATE (node:`_code_list`:`_code_list_census-1961-building-type-variable` { label:'buildingtypevariable', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-building-type-variable`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-building-type-variable`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-building-type-variable` { value:'dwellings' });
MATCH (parent:`_code_list`:`_code_list_census-1961-building-type-variable`),(node:`_code`:`_code_census-1961-building-type-variable` { value:'dwellings' }) MERGE (node)-[:usedBy { label:"Dwellings"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-building-type-variable` { value:'household-spaces' });
MATCH (parent:`_code_list`:`_code_list_census-1961-building-type-variable`),(node:`_code`:`_code_census-1961-building-type-variable` { value:'household-spaces' }) MERGE (node)-[:usedBy { label:"Household spaces"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-building-type-variable` { value:'persons' });
MATCH (parent:`_code_list`:`_code_list_census-1961-building-type-variable`),(node:`_code`:`_code_census-1961-building-type-variable` { value:'persons' }) MERGE (node)-[:usedBy { label:"Persons"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-building-type-variable` { value:'rooms' });
MATCH (parent:`_code_list`:`_code_list_census-1961-building-type-variable`),(node:`_code`:`_code_census-1961-building-type-variable` { value:'rooms' }) MERGE (node)-[:usedBy { label:"Rooms"}]->(parent);

