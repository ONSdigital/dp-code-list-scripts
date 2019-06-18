CREATE CONSTRAINT ON (n:`_code_children-sex`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_children-sex`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_children-sex` { label:"sex", edition:"one-off" });
MERGE (node:`_code`:`_code_children-sex` { value:"total" });
MATCH (parent:`_code_list`:`_code_list_children-sex`),                (node:`_code`:`_code_children-sex` { value:"total" })                 MERGE (node)-[:usedBy { label:"Total"}]->(parent);
MERGE (node:`_code`:`_code_children-sex` { value:"boys" });
MATCH (parent:`_code_list`:`_code_list_children-sex`),                (node:`_code`:`_code_children-sex` { value:"boys" })                 MERGE (node)-[:usedBy { label:"Boys"}]->(parent);
MERGE (node:`_code`:`_code_children-sex` { value:"girls" });
MATCH (parent:`_code_list`:`_code_list_children-sex`),                (node:`_code`:`_code_children-sex` { value:"girls" })                 MERGE (node)-[:usedBy { label:"Girls"}]->(parent);
