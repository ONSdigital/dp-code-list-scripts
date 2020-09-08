CREATE CONSTRAINT ON (n:`_code_value-deflation`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_value-deflation`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_value-deflation` { label:"Deflation", edition:"one-off" });
MERGE (node:`_code`:`_code_value-deflation` { value:"deflated-value" });
MATCH (parent:`_code_list`:`_code_list_value-deflation`),(node:`_code`:`_code_value-deflation` { value:"deflated-value" }) MERGE (node)-[:usedBy { label:"Deflated value"}]->(parent);
MERGE (node:`_code`:`_code_value-deflation` { value:"undeflated-value" });
MATCH (parent:`_code_list`:`_code_list_value-deflation`),(node:`_code`:`_code_value-deflation` { value:"undeflated-value" }) MERGE (node)-[:usedBy { label:"Undeflated value"}]->(parent);
