CREATE CONSTRAINT ON (n:`_code_faster-indicators-estimate`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_faster-indicators-estimate`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_faster-indicators-estimate` { label:"estimate", edition:"one-off" });
MERGE (node:`_code`:`_code_faster-indicators-estimate` { value:"M1" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-estimate`),                (node:`_code`:`_code_faster-indicators-estimate` { value:"M1" })                 MERGE (node)-[:usedBy { label:"M1"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-estimate` { value:"M2" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-estimate`),                (node:`_code`:`_code_faster-indicators-estimate` { value:"M2" })                 MERGE (node)-[:usedBy { label:"M2"}]->(parent);
