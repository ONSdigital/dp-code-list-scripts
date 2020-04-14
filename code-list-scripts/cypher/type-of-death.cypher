CREATE CONSTRAINT ON (n:`_code_type-of-death`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_type-of-death`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_type-of-death` { label:"typeofdeath", edition:"one-off" });
MERGE (node:`_code`:`_code_type-of-death` { value:"all-deaths" });
MATCH (parent:`_code_list`:`_code_list_type-of-death`),(node:`_code`:`_code_type-of-death` { value:"all-deaths" }) MERGE (node)-[:usedBy { label:"All deaths"}]->(parent);
MERGE (node:`_code`:`_code_type-of-death` { value:"covid-19" });
MATCH (parent:`_code_list`:`_code_list_type-of-death`),(node:`_code`:`_code_type-of-death` { value:"covid-19" }) MERGE (node)-[:usedBy { label:"Covid-19"}]->(parent);
