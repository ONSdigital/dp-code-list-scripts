CREATE CONSTRAINT ON (n:`_code_seasonal-adjustment`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_seasonal-adjustment`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_seasonal-adjustment` { label:'seasonaladjustment', edition:'one-off' });
MERGE (node:`_code`:`_code_seasonal-adjustment` { value:"nsa" });
MATCH (parent:`_code_list`:`_code_list_seasonal-adjustment`),(node:`_code`:`_code_seasonal-adjustment` { value:"nsa" }) MERGE (node)-[:usedBy { label:"Non Seasonal Adjustment"}]->(parent);
MERGE (node:`_code`:`_code_seasonal-adjustment` { value:"sa" });
MATCH (parent:`_code_list`:`_code_list_seasonal-adjustment`),(node:`_code`:`_code_seasonal-adjustment` { value:"sa" }) MERGE (node)-[:usedBy { label:"Seasonal Adjustment"}]->(parent);
