CREATE CONSTRAINT ON (n:`_code_lms-economic-status`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_lms-economic-status`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_lms-economic-status` { label:'economicstatus', edition:'one-off' });
MERGE (node:`_code`:`_code_lms-economic-status` { value:"in-employment" });
MATCH (parent:`_code_list`:`_code_list_lms-economic-status`),(node:`_code`:`_code_lms-economic-status` { value:"in-employment" }) MERGE (node)-[:usedBy { label:"In Employment"}]->(parent);
MERGE (node:`_code`:`_code_lms-economic-status` { value:"unemployed" });
MATCH (parent:`_code_list`:`_code_list_lms-economic-status`),(node:`_code`:`_code_lms-economic-status` { value:"unemployed" }) MERGE (node)-[:usedBy { label:"Unemployed"}]->(parent);
MERGE (node:`_code`:`_code_lms-economic-status` { value:"economically-inactive" });
MATCH (parent:`_code_list`:`_code_list_lms-economic-status`),(node:`_code`:`_code_lms-economic-status` { value:"economically-inactive" }) MERGE (node)-[:usedBy { label:"Economically Inactive"}]->(parent);
MERGE (node:`_code`:`_code_lms-economic-status` { value:"economically-active" });
MATCH (parent:`_code_list`:`_code_list_lms-economic-status`),(node:`_code`:`_code_lms-economic-status` { value:"economically-active" }) MERGE (node)-[:usedBy { label:"Economically Active"}]->(parent);
