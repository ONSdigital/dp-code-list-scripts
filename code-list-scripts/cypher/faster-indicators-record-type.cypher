CREATE CONSTRAINT ON (n:`_code_faster-indicators-record-type`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_faster-indicators-record-type`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_faster-indicators-record-type` { label:"recordtype", edition:"one-off" });
MERGE (node:`_code`:`_code_faster-indicators-record-type` { value:"tax-due" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-record-type`),                (node:`_code`:`_code_faster-indicators-record-type` { value:"tax-due" })                 MERGE (node)-[:usedBy { label:"Tax due"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-record-type` { value:"repayment-claim" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-record-type`),                (node:`_code`:`_code_faster-indicators-record-type` { value:"repayment-claim" })                 MERGE (node)-[:usedBy { label:"Repayment claim"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-record-type` { value:"re-input-tax-due" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-record-type`),                (node:`_code`:`_code_faster-indicators-record-type` { value:"re-input-tax-due" })                 MERGE (node)-[:usedBy { label:"Re-input tax due"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-record-type` { value:"re-input-repayment-claim" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-record-type`),                (node:`_code`:`_code_faster-indicators-record-type` { value:"re-input-repayment-claim" })                 MERGE (node)-[:usedBy { label:"Re-input repayment claim"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-record-type` { value:"replacements-tax-due-and-repayments" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-record-type`),                (node:`_code`:`_code_faster-indicators-record-type` { value:"replacements-tax-due-and-repayments" })                 MERGE (node)-[:usedBy { label:"Replacements (Tax due and repayments)"}]->(parent);
