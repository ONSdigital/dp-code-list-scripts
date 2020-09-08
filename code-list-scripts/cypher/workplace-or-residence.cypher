CREATE CONSTRAINT ON (n:`_code_workplace-or-residence`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_workplace-or-residence`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_workplace-or-residence` { label:'Workplace Or Residence', edition:'one-off' });
MERGE (node:`_code`:`_code_workplace-or-residence` { value:"residence" });
MATCH (parent:`_code_list`:`_code_list_workplace-or-residence`),(node:`_code`:`_code_workplace-or-residence` { value:"residence" }) MERGE (node)-[:usedBy { label:"Residence"}]->(parent);
MERGE (node:`_code`:`_code_workplace-or-residence` { value:"workplace" });
MATCH (parent:`_code_list`:`_code_list_workplace-or-residence`),(node:`_code`:`_code_workplace-or-residence` { value:"workplace" }) MERGE (node)-[:usedBy { label:"Workplace"}]->(parent);
