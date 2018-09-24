CREATE (node:`_code_list`:`_code_list_ashe-sex` { label:'sex', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_ashe-sex`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_ashe-sex`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_ashe-sex` { value:'male' });
MATCH (parent:`_code_list`:`_code_list_ashe-sex`),(node:`_code`:`_code_ashe-sex` { value:'male' }) MERGE (node)-[:usedBy { label:"Male"}]->(parent);
MERGE (node:`_code`:`_code_ashe-sex` { value:'female' });
MATCH (parent:`_code_list`:`_code_list_ashe-sex`),(node:`_code`:`_code_ashe-sex` { value:'female' }) MERGE (node)-[:usedBy { label:"Female"}]->(parent);
MERGE (node:`_code`:`_code_ashe-sex` { value:'all' });
MATCH (parent:`_code_list`:`_code_list_ashe-sex`),(node:`_code`:`_code_ashe-sex` { value:'all' }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
