CREATE CONSTRAINT ON (n:`_code_awe-earnings`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_awe-earnings`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_awe-earnings` { label:"earnings", edition:"one-off" });
MERGE (node:`_code`:`_code_awe-earnings` { value:"weekly-earnings" });
MATCH (parent:`_code_list`:`_code_list_awe-earnings`),                (node:`_code`:`_code_awe-earnings` { value:"weekly-earnings" })                 MERGE (node)-[:usedBy { label:"Weekly Earnings (£)"}]->(parent);
MERGE (node:`_code`:`_code_awe-earnings` { value:"single-month" });
MATCH (parent:`_code_list`:`_code_list_awe-earnings`),                (node:`_code`:`_code_awe-earnings` { value:"single-month" })                 MERGE (node)-[:usedBy { label:"Single month - % change year on year"}]->(parent);
MERGE (node:`_code`:`_code_awe-earnings` { value:"3-month-average" });
MATCH (parent:`_code_list`:`_code_list_awe-earnings`),                (node:`_code`:`_code_awe-earnings` { value:"3-month-average" })                 MERGE (node)-[:usedBy { label:"3 month average - % change year on year"}]->(parent);
