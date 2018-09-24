CREATE (node:`_code_list`:`_code_list_npp-sex` { label:'sex', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_npp-sex`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_npp-sex`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_npp-sex` { value:'1' });
MATCH (parent:`_code_list`:`_code_list_npp-sex`),(node:`_code`:`_code_npp-sex` { value:'1' }) MERGE (node)-[:usedBy { label:"Male"}]->(parent);
MERGE (node:`_code`:`_code_npp-sex` { value:'2' });
MATCH (parent:`_code_list`:`_code_list_npp-sex`),(node:`_code`:`_code_npp-sex` { value:'2' }) MERGE (node)-[:usedBy { label:"Female"}]->(parent);
