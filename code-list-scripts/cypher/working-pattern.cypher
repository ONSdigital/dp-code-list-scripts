CREATE (node:`_code_list`:`_code_list_working-pattern` { label:'Working Pattern', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_working-pattern`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_working-pattern`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_working-pattern` { value:'all' });
MATCH (parent:`_code_list`:`_code_list_working-pattern`),(node:`_code`:`_code_working-pattern` { value:'all' }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
MERGE (node:`_code`:`_code_working-pattern` { value:'full-time' });
MATCH (parent:`_code_list`:`_code_list_working-pattern`),(node:`_code`:`_code_working-pattern` { value:'full-time' }) MERGE (node)-[:usedBy { label:"Full-Time"}]->(parent);
MERGE (node:`_code`:`_code_working-pattern` { value:'part-time' });
MATCH (parent:`_code_list`:`_code_list_working-pattern`),(node:`_code`:`_code_working-pattern` { value:'part-time' }) MERGE (node)-[:usedBy { label:"Part-Time"}]->(parent);
