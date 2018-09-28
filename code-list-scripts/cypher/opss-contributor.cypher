CREATE (node:`_code_list`:`_code_list_opss-contributor` { label:'contributor', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_opss-contributor`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_opss-contributor`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_opss-contributor` { value:'employer' });
MATCH (parent:`_code_list`:`_code_list_opss-contributor`),(node:`_code`:`_code_opss-contributor` { value:'employer' }) MERGE (node)-[:usedBy { label:"Employer"}]->(parent);
MERGE (node:`_code`:`_code_opss-contributor` { value:'member' });
MATCH (parent:`_code_list`:`_code_list_opss-contributor`),(node:`_code`:`_code_opss-contributor` { value:'member' }) MERGE (node)-[:usedBy { label:"Member"}]->(parent);
MERGE (node:`_code`:`_code_opss-contributor` { value:'all-contributors' });
MATCH (parent:`_code_list`:`_code_list_opss-contributor`),(node:`_code`:`_code_opss-contributor` { value:'all-contributors' }) MERGE (node)-[:usedBy { label:"All contributors"}]->(parent);
