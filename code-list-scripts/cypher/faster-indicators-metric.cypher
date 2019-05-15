CREATE CONSTRAINT ON (n:`_code_faster-indicators-metric`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_faster-indicators-metric`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_faster-indicators-metric` { label:"metric", edition:"one-off" });
MERGE (node:`_code`:`_code_faster-indicators-metric` { value:"turnover-current-prices" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-metric`),                (node:`_code`:`_code_faster-indicators-metric` { value:"turnover-current-prices" })                 MERGE (node)-[:usedBy { label:"Turnover current prices"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-metric` { value:"expenditure-current-prices" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-metric`),                (node:`_code`:`_code_faster-indicators-metric` { value:"expenditure-current-prices" })                 MERGE (node)-[:usedBy { label:"Expenditure current prices"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-metric` { value:"new-reporters" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-metric`),                (node:`_code`:`_code_faster-indicators-metric` { value:"new-reporters" })                 MERGE (node)-[:usedBy { label:"New reporters"}]->(parent);
