CREATE (node:`_code_list`:`_code_list_census-1961-industry` { label:'industry', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-industry`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-industry`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-industry` { value:'agriculture' });
MATCH (parent:`_code_list`:`_code_list_census-1961-industry`),(node:`_code`:`_code_census-1961-industry` { value:'agriculture' }) MERGE (node)-[:usedBy { label:"Agriculture"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-industry` { value:'defence' });
MATCH (parent:`_code_list`:`_code_list_census-1961-industry`),(node:`_code`:`_code_census-1961-industry` { value:'defence' }) MERGE (node)-[:usedBy { label:"Defence"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-industry` { value:'mining' });
MATCH (parent:`_code_list`:`_code_list_census-1961-industry`),(node:`_code`:`_code_census-1961-industry` { value:'mining' }) MERGE (node)-[:usedBy { label:"Mining"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-industry` { value:'production' });
MATCH (parent:`_code_list`:`_code_list_census-1961-industry`),(node:`_code`:`_code_census-1961-industry` { value:'production' }) MERGE (node)-[:usedBy { label:"Production"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-industry` { value:'service-industries' });
MATCH (parent:`_code_list`:`_code_list_census-1961-industry`),(node:`_code`:`_code_census-1961-industry` { value:'service-industries' }) MERGE (node)-[:usedBy { label:"Service industries"}]->(parent);

