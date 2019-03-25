CREATE CONSTRAINT ON (n:`_code_awe-type-of-pay`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_awe-type-of-pay`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_awe-type-of-pay` { label:"typeofpay", edition:"one-off" });
MERGE (node:`_code`:`_code_awe-type-of-pay` { value:"total-pay" });
MATCH (parent:`_code_list`:`_code_list_awe-type-of-pay`),                (node:`_code`:`_code_awe-type-of-pay` { value:"total-pay" })                 MERGE (node)-[:usedBy { label:"Total Pay"}]->(parent);
MERGE (node:`_code`:`_code_awe-type-of-pay` { value:"bonus-pay" });
MATCH (parent:`_code_list`:`_code_list_awe-type-of-pay`),                (node:`_code`:`_code_awe-type-of-pay` { value:"bonus-pay" })                 MERGE (node)-[:usedBy { label:"Bonus Pay"}]->(parent);
MERGE (node:`_code`:`_code_awe-type-of-pay` { value:"regular-pay" });
MATCH (parent:`_code_list`:`_code_list_awe-type-of-pay`),                (node:`_code`:`_code_awe-type-of-pay` { value:"regular-pay" })                 MERGE (node)-[:usedBy { label:"Regular Pay"}]->(parent);
MERGE (node:`_code`:`_code_awe-type-of-pay` { value:"total-pay-index" });
MATCH (parent:`_code_list`:`_code_list_awe-type-of-pay`),                (node:`_code`:`_code_awe-type-of-pay` { value:"total-pay-index" })                 MERGE (node)-[:usedBy { label:"Total Pay Index"}]->(parent);
MERGE (node:`_code`:`_code_awe-type-of-pay` { value:"regular-pay-index" });
MATCH (parent:`_code_list`:`_code_list_awe-type-of-pay`),                (node:`_code`:`_code_awe-type-of-pay` { value:"regular-pay-index" })                 MERGE (node)-[:usedBy { label:"Regular Pay Index"}]->(parent);
