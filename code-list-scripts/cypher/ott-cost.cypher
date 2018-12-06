CREATE CONSTRAINT ON (n:`_code_ott-cost`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_ott-cost`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_ott-cost` { label:'cost', edition:'one-off' });
MERGE (node:`_code`:`_code_ott-cost` { value:"night" });
MATCH (parent:`_code_list`:`_code_list_ott-cost`),(node:`_code`:`_code_ott-cost` { value:"night" }) MERGE (node)-[:usedBy { label:"Night"}]->(parent);
MERGE (node:`_code`:`_code_ott-cost` { value:"spend" });
MATCH (parent:`_code_list`:`_code_list_ott-cost`),(node:`_code`:`_code_ott-cost` { value:"spend" }) MERGE (node)-[:usedBy { label:"Spend"}]->(parent);
MERGE (node:`_code`:`_code_ott-cost` { value:"vist" });
MATCH (parent:`_code_list`:`_code_list_ott-cost`),(node:`_code`:`_code_ott-cost` { value:"vist" }) MERGE (node)-[:usedBy { label:"Vist"}]->(parent);
