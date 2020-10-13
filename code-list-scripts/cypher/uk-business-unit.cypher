CREATE CONSTRAINT ON (n:`_code_uk-business-unit`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_uk-business-unit`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_uk-business-unit` { label:'Unit', edition:'one-off' });
MERGE (node:`_code`:`_code_uk-business-unit` { value:"enterprises" });
MATCH (parent:`_code_list`:`_code_list_uk-business-unit`),(node:`_code`:`_code_uk-business-unit` { value:"enterprises" }) MERGE (node)-[:usedBy { label:"Enterprises"}]->(parent);
MERGE (node:`_code`:`_code_uk-business-unit` { value:"local-units" });
MATCH (parent:`_code_list`:`_code_list_uk-business-unit`),(node:`_code`:`_code_uk-business-unit` { value:"local-units" }) MERGE (node)-[:usedBy { label:"Local Units"}]->(parent);
