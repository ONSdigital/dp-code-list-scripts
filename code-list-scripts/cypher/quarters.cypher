CREATE CONSTRAINT ON (n:`_code_quarters`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_quarters`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_quarters` { label:"quarter", edition:"one-off" });
MERGE (node:`_code`:`_code_quarters` { value:"q1" });
MATCH (parent:`_code_list`:`_code_list_quarters`),(node:`_code`:`_code_quarters` { value:"q1" }) MERGE (node)-[:usedBy { label:"Q1"}]->(parent);
MERGE (node:`_code`:`_code_quarters` { value:"q4" });
MATCH (parent:`_code_list`:`_code_list_quarters`),(node:`_code`:`_code_quarters` { value:"q4" }) MERGE (node)-[:usedBy { label:"Q4"}]->(parent);
MERGE (node:`_code`:`_code_quarters` { value:"q3" });
MATCH (parent:`_code_list`:`_code_list_quarters`),(node:`_code`:`_code_quarters` { value:"q3" }) MERGE (node)-[:usedBy { label:"Q3"}]->(parent);
MERGE (node:`_code`:`_code_quarters` { value:"q2" });
MATCH (parent:`_code_list`:`_code_list_quarters`),(node:`_code`:`_code_quarters` { value:"q2" }) MERGE (node)-[:usedBy { label:"Q2"}]->(parent);
