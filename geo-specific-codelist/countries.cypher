CREATE CONSTRAINT ON (n:`_code_geography`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_countries`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_countries` { label:"Geography", edition:"one-off" });
MERGE (node:`_code`:`_code_geography` { value:"E92000001" });
MATCH (parent:`_code_list`:`_code_list_countries`),(node:`_code`:`_code_geography` { value:"E92000001" }) MERGE (node)-[:usedBy { label:"England"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"K02000001" });
MATCH (parent:`_code_list`:`_code_list_countries`),(node:`_code`:`_code_geography` { value:"K02000001" }) MERGE (node)-[:usedBy { label:"United Kingdom"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"K03000001" });
MATCH (parent:`_code_list`:`_code_list_countries`),(node:`_code`:`_code_geography` { value:"K03000001" }) MERGE (node)-[:usedBy { label:"Great Britain"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"K04000001" });
MATCH (parent:`_code_list`:`_code_list_countries`),(node:`_code`:`_code_geography` { value:"K04000001" }) MERGE (node)-[:usedBy { label:"England and Wales"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"N92000002" });
MATCH (parent:`_code_list`:`_code_list_countries`),(node:`_code`:`_code_geography` { value:"N92000002" }) MERGE (node)-[:usedBy { label:"Northern Ireland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S92000003" });
MATCH (parent:`_code_list`:`_code_list_countries`),(node:`_code`:`_code_geography` { value:"S92000003" }) MERGE (node)-[:usedBy { label:"Scotland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"W92000004" });
MATCH (parent:`_code_list`:`_code_list_countries`),(node:`_code`:`_code_geography` { value:"W92000004" }) MERGE (node)-[:usedBy { label:"Wales"}]->(parent);