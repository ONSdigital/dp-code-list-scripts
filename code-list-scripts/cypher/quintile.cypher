CREATE CONSTRAINT ON (n:`_code_quintile`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_quintile`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_quintile` { label:"Quintile", edition:"one-off" });
MERGE (node:`_code`:`_code_quintile` { value:"1st" });
MATCH (parent:`_code_list`:`_code_list_quintile`),(node:`_code`:`_code_quintile` { value:"1st" }) MERGE (node)-[:usedBy { label:"1st"}]->(parent);
MERGE (node:`_code`:`_code_quintile` { value:"2nd" });
MATCH (parent:`_code_list`:`_code_list_quintile`),(node:`_code`:`_code_quintile` { value:"2nd" }) MERGE (node)-[:usedBy { label:"2nd"}]->(parent);
MERGE (node:`_code`:`_code_quintile` { value:"3rd" });
MATCH (parent:`_code_list`:`_code_list_quintile`),(node:`_code`:`_code_quintile` { value:"3rd" }) MERGE (node)-[:usedBy { label:"3rd"}]->(parent);
MERGE (node:`_code`:`_code_quintile` { value:"4th" });
MATCH (parent:`_code_list`:`_code_list_quintile`),(node:`_code`:`_code_quintile` { value:"4th" }) MERGE (node)-[:usedBy { label:"4th"}]->(parent);
MERGE (node:`_code`:`_code_quintile` { value:"5th" });
MATCH (parent:`_code_list`:`_code_list_quintile`),(node:`_code`:`_code_quintile` { value:"5th" }) MERGE (node)-[:usedBy { label:"5th"}]->(parent);
MERGE (node:`_code`:`_code_quintile` { value:"all" });
MATCH (parent:`_code_list`:`_code_list_quintile`),(node:`_code`:`_code_quintile` { value:"all" }) MERGE (node)-[:usedBy { label:"All"}]->(parent);