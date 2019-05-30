CREATE CONSTRAINT ON (n:`_code_faster-indicators-estimate`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_faster-indicators-estimate`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_faster-indicators-estimate` { label:"estimate", edition:"one-off" });
MERGE (node:`_code`:`_code_faster-indicators-estimate` { value:"first-estimate" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-estimate`),                (node:`_code`:`_code_faster-indicators-estimate` { value:"first-estimate" })                 MERGE (node)-[:usedBy { label:"First Estimate"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-estimate` { value:"second-estimate" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-estimate`),                (node:`_code`:`_code_faster-indicators-estimate` { value:"second-estimate" })                 MERGE (node)-[:usedBy { label:"Second Estimate"}]->(parent);
