CREATE CONSTRAINT ON (n:`_code_sex-codelist`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_sex-codelist`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_sex-codelist` { label:"sex", edition:"one-off" });
MERGE (node:`_code`:`_code_sex-codelist` { value:"people" });
MATCH (parent:`_code_list`:`_code_list_sex-codelist`),                (node:`_code`:`_code_sex-codelist` { value:"people" })                 MERGE (node)-[:usedBy { label:"People"}]->(parent);
MERGE (node:`_code`:`_code_sex-codelist` { value:"men" });
MATCH (parent:`_code_list`:`_code_list_sex-codelist`),                (node:`_code`:`_code_sex-codelist` { value:"men" })                 MERGE (node)-[:usedBy { label:"Men"}]->(parent);
MERGE (node:`_code`:`_code_sex-codelist` { value:"women" });
MATCH (parent:`_code_list`:`_code_list_sex-codelist`),                (node:`_code`:`_code_sex-codelist` { value:"women" })                 MERGE (node)-[:usedBy { label:"Women"}]->(parent);
