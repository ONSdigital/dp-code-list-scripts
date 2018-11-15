CREATE CONSTRAINT ON (n:`_code_ott-residence`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_ott-residence`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_ott-residence` { label:'residence', edition:'one-off' });
MERGE (node:`_code`:`_code_ott-residence` { value:"overseas-residents" });
MATCH (parent:`_code_list`:`_code_list_ott-residence`),(node:`_code`:`_code_ott-residence` { value:"overseas-residents" }) MERGE (node)-[:usedBy { label:"Overseas Residents"}]->(parent);
MERGE (node:`_code`:`_code_ott-residence` { value:"uk-residents" });
MATCH (parent:`_code_list`:`_code_list_ott-residence`),(node:`_code`:`_code_ott-residence` { value:"uk-residents" }) MERGE (node)-[:usedBy { label:"UK Residents"}]->(parent);
