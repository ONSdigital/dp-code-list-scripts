CREATE (node:`_code_list`:`_code_list_census-1961-persons-per-room` { label:'personsperroom', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-persons-per-room`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-persons-per-room`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-persons-per-room` { value:'0-5' });
MATCH (parent:`_code_list`:`_code_list_census-1961-persons-per-room`),(node:`_code`:`_code_census-1961-persons-per-room` { value:'0-5' }) MERGE (node)-[:usedBy { label:"<0.5"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-persons-per-room` { value:'0-5--0-75' });
MATCH (parent:`_code_list`:`_code_list_census-1961-persons-per-room`),(node:`_code`:`_code_census-1961-persons-per-room` { value:'0-5--0-75' }) MERGE (node)-[:usedBy { label:"0.5 to <0.75"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-persons-per-room` { value:'0-75--1' });
MATCH (parent:`_code_list`:`_code_list_census-1961-persons-per-room`),(node:`_code`:`_code_census-1961-persons-per-room` { value:'0-75--1' }) MERGE (node)-[:usedBy { label:"0.75 to <1"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-persons-per-room` { value:'1' });
MATCH (parent:`_code_list`:`_code_list_census-1961-persons-per-room`),(node:`_code`:`_code_census-1961-persons-per-room` { value:'1' }) MERGE (node)-[:usedBy { label:"1"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-persons-per-room` { value:'1--1-5' });
MATCH (parent:`_code_list`:`_code_list_census-1961-persons-per-room`),(node:`_code`:`_code_census-1961-persons-per-room` { value:'1--1-5' }) MERGE (node)-[:usedBy { label:">1 to <1.5"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-persons-per-room` { value:'1-5+' });
MATCH (parent:`_code_list`:`_code_list_census-1961-persons-per-room`),(node:`_code`:`_code_census-1961-persons-per-room` { value:'1-5+' }) MERGE (node)-[:usedBy { label:"1.5+"}]->(parent);

