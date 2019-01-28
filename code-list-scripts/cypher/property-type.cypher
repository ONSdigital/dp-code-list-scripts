CREATE CONSTRAINT ON (n:`_code_property-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_property-type`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_property-type` { label:'propertytype', edition:'one-off' });
MERGE (node:`_code`:`_code_property-type` { value:"all" });
MATCH (parent:`_code_list`:`_code_list_property-type`),(node:`_code`:`_code_property-type` { value:"all" }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
MERGE (node:`_code`:`_code_property-type` { value:"detached" });
MATCH (parent:`_code_list`:`_code_list_property-type`),(node:`_code`:`_code_property-type` { value:"detached" }) MERGE (node)-[:usedBy { label:"Detached"}]->(parent);
MERGE (node:`_code`:`_code_property-type` { value:"flat-maisonette" });
MATCH (parent:`_code_list`:`_code_list_property-type`),(node:`_code`:`_code_property-type` { value:"flat-maisonette" }) MERGE (node)-[:usedBy { label:"Flat/maisonette"}]->(parent);
MERGE (node:`_code`:`_code_property-type` { value:"semi-detached" });
MATCH (parent:`_code_list`:`_code_list_property-type`),(node:`_code`:`_code_property-type` { value:"semi-detached" }) MERGE (node)-[:usedBy { label:"Semi-detached"}]->(parent);
MERGE (node:`_code`:`_code_property-type` { value:"terraced" });
MATCH (parent:`_code_list`:`_code_list_property-type`),(node:`_code`:`_code_property-type` { value:"terraced" }) MERGE (node)-[:usedBy { label:"Terraced"}]->(parent);
