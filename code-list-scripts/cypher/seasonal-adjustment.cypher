CREATE CONSTRAINT ON (n:`_code_seasonal-adjustment`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_seasonal-adjustment`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_seasonal-adjustment` { label:'seasonaladjustment', edition:'one-off' });
MERGE (node:`_code`:`_code_seasonal-adjustment` { value:"non-seasonal-adjustment" });
MATCH (parent:`_code_list`:`_code_list_seasonal-adjustment`),(node:`_code`:`_code_seasonal-adjustment` { value:"non-seasonal-adjustment" }) MERGE (node)-[:usedBy { label:"Non Seasonal Adjustment"}]->(parent);
MERGE (node:`_code`:`_code_seasonal-adjustment` { value:"seasonal-adjustment" });
MATCH (parent:`_code_list`:`_code_list_seasonal-adjustment`),(node:`_code`:`_code_seasonal-adjustment` { value:"seasonal-adjustment" }) MERGE (node)-[:usedBy { label:"Seasonal Adjustment"}]->(parent);
