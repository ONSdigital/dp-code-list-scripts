CREATE CONSTRAINT ON (n:`_code_ott-sex`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_ott-sex`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_ott-sex` { label:'sex', edition:'one-off' });
MERGE (node:`_code`:`_code_ott-sex` { value:"2" });
MATCH (parent:`_code_list`:`_code_list_ott-sex`),(node:`_code`:`_code_ott-sex` { value:"2" }) MERGE (node)-[:usedBy { label:"Female"}]->(parent);
MERGE (node:`_code`:`_code_ott-sex` { value:"1" });
MATCH (parent:`_code_list`:`_code_list_ott-sex`),(node:`_code`:`_code_ott-sex` { value:"1" }) MERGE (node)-[:usedBy { label:"Male"}]->(parent);
