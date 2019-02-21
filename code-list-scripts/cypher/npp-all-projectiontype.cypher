CREATE CONSTRAINT ON (n:`_code_npp-all-projectiontype`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_npp-all-projectiontype`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_npp-all-projectiontype` { label:"projectiontype", edition:"one-off" });
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"pph" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"pph" })                 MERGE (node)-[:usedBy { label:"High migration"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"hpp" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"hpp" })                 MERGE (node)-[:usedBy { label:"High fertility"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"ppz" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"ppz" })                 MERGE (node)-[:usedBy { label:"Zero net migration (natural change only)"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"lpp" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"lpp" })                 MERGE (node)-[:usedBy { label:"Low fertility"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"ppl" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"ppl" })                 MERGE (node)-[:usedBy { label:"Low migration"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"plp" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"plp" })                 MERGE (node)-[:usedBy { label:"Low life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"lll" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"lll" })                 MERGE (node)-[:usedBy { label:"Low population"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"hhh" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"hhh" })                 MERGE (node)-[:usedBy { label:"High population"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"php" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"php" })                 MERGE (node)-[:usedBy { label:"High life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_npp-all-projectiontype` { value:"ppp" });
MATCH (parent:`_code_list`:`_code_list_npp-all-projectiontype`),                (node:`_code`:`_code_npp-all-projectiontype` { value:"ppp" })                 MERGE (node)-[:usedBy { label:"Principal"}]->(parent);
