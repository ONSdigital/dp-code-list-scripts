CREATE CONSTRAINT ON (n:`_code_ott-cost`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_ott-cost`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_ott-cost` { label:'cost', edition:'one-off' });
MERGE (node:`_code`:`_code_ott-cost` { value:"Night" });
MATCH (parent:`_code_list`:`_code_list_ott-cost`),(node:`_code`:`_code_ott-cost` { value:"night" }) MERGE (node)-[:usedBy { label:"night"}]->(parent);
MERGE (node:`_code`:`_code_ott-cost` { value:"Spend" });
MATCH (parent:`_code_list`:`_code_list_ott-cost`),(node:`_code`:`_code_ott-cost` { value:"spend" }) MERGE (node)-[:usedBy { label:"spend"}]->(parent);
MERGE (node:`_code`:`_code_ott-cost` { value:"Vist" });
MATCH (parent:`_code_list`:`_code_list_ott-cost`),(node:`_code`:`_code_ott-cost` { value:"vist" }) MERGE (node)-[:usedBy { label:"vist"}]->(parent);
