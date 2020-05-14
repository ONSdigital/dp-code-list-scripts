CREATE (node:`_code_list`:`_code_list_census-1961-households-sharing-dwelling` { label:'numberofhouseholds', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-households-sharing-dwelling`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-households-sharing-dwelling`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'1' });
MATCH (parent:`_code_list`:`_code_list_census-1961-households-sharing-dwelling`),(node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'1' }) MERGE (node)-[:usedBy { label:"1"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'2' });
MATCH (parent:`_code_list`:`_code_list_census-1961-households-sharing-dwelling`),(node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'2' }) MERGE (node)-[:usedBy { label:"2"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'3' });
MATCH (parent:`_code_list`:`_code_list_census-1961-households-sharing-dwelling`),(node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'3' }) MERGE (node)-[:usedBy { label:"3"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'4' });
MATCH (parent:`_code_list`:`_code_list_census-1961-households-sharing-dwelling`),(node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'4' }) MERGE (node)-[:usedBy { label:"4"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'5' });
MATCH (parent:`_code_list`:`_code_list_census-1961-households-sharing-dwelling`),(node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'5' }) MERGE (node)-[:usedBy { label:"5"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'6' });
MATCH (parent:`_code_list`:`_code_list_census-1961-households-sharing-dwelling`),(node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'6' }) MERGE (node)-[:usedBy { label:"6"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'7+' });
MATCH (parent:`_code_list`:`_code_list_census-1961-households-sharing-dwelling`),(node:`_code`:`_code_census-1961-households-sharing-dwelling` { value:'7+' }) MERGE (node)-[:usedBy { label:"7+"}]->(parent);

