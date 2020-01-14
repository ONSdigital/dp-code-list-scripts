CREATE CONSTRAINT ON (n:`_code_economic-activity`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_economic-activity`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_economic-activity` { label:"economicactivity", edition:"one-off" });
MERGE (node:`_code`:`_code_economic-activity` { value:"economic-activity" });
MATCH (parent:`_code_list`:`_code_list_economic-activity`),(node:`_code`:`_code_economic-activity` { value:"economic-activity" }) MERGE (node)-[:usedBy { label:"Economic activity"}]->(parent);
MERGE (node:`_code`:`_code_economic-activity` { value:"employment-rate" });
MATCH (parent:`_code_list`:`_code_list_economic-activity`),(node:`_code`:`_code_economic-activity` { value:"employment-rate" }) MERGE (node)-[:usedBy { label:"Employment rate"}]->(parent);
