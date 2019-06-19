CREATE (node:`_code_list`:`_code_list_crime-sex` { label:'sex', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_crime-sex`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_crime-sex`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_crime-sex` { value:'female' });
MATCH (parent:`_code_list`:`_code_list_crime-sex`),(node:`_code`:`_code_crime-sex` { value:'female' }) MERGE (node)-[:usedBy { label:"Female"}]->(parent);
MERGE (node:`_code`:`_code_crime-sex` { value:'male' });
MATCH (parent:`_code_list`:`_code_list_crime-sex`),(node:`_code`:`_code_crime-sex` { value:'male' }) MERGE (node)-[:usedBy { label:"Male"}]->(parent);
MERGE (node:`_code`:`_code_crime-sex` { value:'all-adults' });
MATCH (parent:`_code_list`:`_code_list_crime-sex`),(node:`_code`:`_code_crime-sex` { value:'all-adults' }) MERGE (node)-[:usedBy { label:"All adults"}]->(parent);
