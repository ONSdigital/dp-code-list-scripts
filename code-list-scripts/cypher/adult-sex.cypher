CREATE CONSTRAINT ON (n:`_code_adult-sex`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_adult-sex`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_adult-sex` { label:"sex", edition:"one-off" });
MERGE (node:`_code`:`_code_adult-sex` { value:"people" });
MATCH (parent:`_code_list`:`_code_list_adult-sex`),                (node:`_code`:`_code_adult-sex` { value:"people" })                 MERGE (node)-[:usedBy { label:"People"}]->(parent);
MERGE (node:`_code`:`_code_adult-sex` { value:"men" });
MATCH (parent:`_code_list`:`_code_list_adult-sex`),                (node:`_code`:`_code_adult-sex` { value:"men" })                 MERGE (node)-[:usedBy { label:"Men"}]->(parent);
MERGE (node:`_code`:`_code_adult-sex` { value:"women" });
MATCH (parent:`_code_list`:`_code_list_adult-sex`),                (node:`_code`:`_code_adult-sex` { value:"women" })                 MERGE (node)-[:usedBy { label:"Women"}]->(parent);
