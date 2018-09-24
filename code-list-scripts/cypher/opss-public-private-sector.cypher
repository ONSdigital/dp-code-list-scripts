CREATE (node:`_code_list`:`_code_list_opss-public-private-sector` { label:'publicprivatesector', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_opss-public-private-sector`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_opss-public-private-sector`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_opss-public-private-sector` { value:'private' });
MATCH (parent:`_code_list`:`_code_list_opss-public-private-sector`),(node:`_code`:`_code_opss-public-private-sector` { value:'private' }) MERGE (node)-[:usedBy { label:"Private"}]->(parent);
MERGE (node:`_code`:`_code_opss-public-private-sector` { value:'public' });
MATCH (parent:`_code_list`:`_code_list_opss-public-private-sector`),(node:`_code`:`_code_opss-public-private-sector` { value:'public' }) MERGE (node)-[:usedBy { label:"Public"}]->(parent);
MERGE (node:`_code`:`_code_opss-public-private-sector` { value:'all-sectors' });
MATCH (parent:`_code_list`:`_code_list_opss-public-private-sector`),(node:`_code`:`_code_opss-public-private-sector` { value:'all-sectors' }) MERGE (node)-[:usedBy { label:"All sectors"}]->(parent);
