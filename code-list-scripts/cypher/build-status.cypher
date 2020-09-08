CREATE CONSTRAINT ON (n:`_code_build-status`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_build-status`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_build-status` { label:'Build Status', edition:'one-off' });
MERGE (node:`_code`:`_code_build-status` { value:"all" });
MATCH (parent:`_code_list`:`_code_list_build-status`),(node:`_code`:`_code_build-status` { value:"all" }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
MERGE (node:`_code`:`_code_build-status` { value:"existing" });
MATCH (parent:`_code_list`:`_code_list_build-status`),(node:`_code`:`_code_build-status` { value:"existing" }) MERGE (node)-[:usedBy { label:"Existing"}]->(parent);
MERGE (node:`_code`:`_code_build-status` { value:"newly-built" });
MATCH (parent:`_code_list`:`_code_list_build-status`),(node:`_code`:`_code_build-status` { value:"newly-built" }) MERGE (node)-[:usedBy { label:"Newly built"}]->(parent);
