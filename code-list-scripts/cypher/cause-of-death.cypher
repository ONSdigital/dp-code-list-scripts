CREATE CONSTRAINT ON (n:`_code_cause-of-death`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_cause-of-death`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_cause-of-death` { label:"causeofdeath", edition:"one-off" });
MERGE (node:`_code`:`_code_cause-of-death` { value:"all-causes" });
MATCH (parent:`_code_list`:`_code_list_cause-of-death`),(node:`_code`:`_code_cause-of-death` { value:"all-causes" }) MERGE (node)-[:usedBy { label:"All causes"}]->(parent);
MERGE (node:`_code`:`_code_cause-of-death` { value:"covid-19" });
MATCH (parent:`_code_list`:`_code_list_cause-of-death`),(node:`_code`:`_code_cause-of-death` { value:"covid-19" }) MERGE (node)-[:usedBy { label:"COVID 19"}]->(parent);
