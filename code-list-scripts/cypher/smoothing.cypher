CREATE CONSTRAINT ON (n:`_code_smoothing`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_smoothing`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_smoothing` { label:"smoothingfunction", edition:"one-off" });
MERGE (node:`_code`:`_code_smoothing` { value:"smoothed" });
MATCH (parent:`_code_list`:`_code_list_smoothing`),(node:`_code`:`_code_smoothing` { value:"smoothed" }) MERGE (node)-[:usedBy { label:"Smoothed"}]->(parent);
MERGE (node:`_code`:`_code_smoothing` { value:"unsmoothed" });
MATCH (parent:`_code_list`:`_code_list_smoothing`),(node:`_code`:`_code_smoothing` { value:"unsmoothed" }) MERGE (node)-[:usedBy { label:"Unsmoothed"}]->(parent);
