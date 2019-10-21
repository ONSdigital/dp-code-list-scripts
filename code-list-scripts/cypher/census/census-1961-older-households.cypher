CREATE (node:`_code_list`:`_code_list_census-1961-older-households` { label:'olderhouseholds', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-older-households`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-older-households`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-older-households` { value:'both-female' });
MATCH (parent:`_code_list`:`_code_list_census-1961-older-households`),(node:`_code`:`_code_census-1961-older-households` { value:'both-female' }) MERGE (node)-[:usedBy { label:"Both female"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-older-households` { value:'both-male' });
MATCH (parent:`_code_list`:`_code_list_census-1961-older-households`),(node:`_code`:`_code_census-1961-older-households` { value:'both-male' }) MERGE (node)-[:usedBy { label:"Both male"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-older-households` { value:'married-couple' });
MATCH (parent:`_code_list`:`_code_list_census-1961-older-households`),(node:`_code`:`_code_census-1961-older-households` { value:'married-couple' }) MERGE (node)-[:usedBy { label:"Married couple"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-older-households` { value:'unmarried-couple-female-older' });
MATCH (parent:`_code_list`:`_code_list_census-1961-older-households`),(node:`_code`:`_code_census-1961-older-households` { value:'unmarried-couple-female-older' }) MERGE (node)-[:usedBy { label:"Unmarried couple: female older"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-older-households` { value:'unmarried-couple-male-older' });
MATCH (parent:`_code_list`:`_code_list_census-1961-older-households`),(node:`_code`:`_code_census-1961-older-households` { value:'unmarried-couple-male-older' }) MERGE (node)-[:usedBy { label:"Unmarried couple: male older"}]->(parent);

