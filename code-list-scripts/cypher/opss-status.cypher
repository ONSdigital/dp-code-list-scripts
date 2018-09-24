CREATE (node:`_code_list`:`_code_list_opss-status` { label:'status', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_opss-status`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_opss-status`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_opss-status` { value:'all-statuses' });
MATCH (parent:`_code_list`:`_code_list_opss-status`),(node:`_code`:`_code_opss-status` { value:'all-statuses' }) MERGE (node)-[:usedBy { label:"All statuses"}]->(parent);
MERGE (node:`_code`:`_code_opss-status` { value:'closed' });
MATCH (parent:`_code_list`:`_code_list_opss-status`),(node:`_code`:`_code_opss-status` { value:'closed' }) MERGE (node)-[:usedBy { label:"Closed"}]->(parent);
MERGE (node:`_code`:`_code_opss-status` { value:'open' });
MATCH (parent:`_code_list`:`_code_list_opss-status`),(node:`_code`:`_code_opss-status` { value:'open' }) MERGE (node)-[:usedBy { label:"Open"}]->(parent);
