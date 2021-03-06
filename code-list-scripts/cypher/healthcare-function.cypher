CREATE CONSTRAINT ON (n:`_code_healthcare-function`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_healthcare-function`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_healthcare-function` { label:"Healthcare Function", edition:"one-off" });
MERGE (node:`_code`:`_code_healthcare-function` { value:"HCTOT" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HCTOT" }) MERGE (node)-[:usedBy { label:"Total functions"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC1HC2" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC1HC2" }) MERGE (node)-[:usedBy { label:"Curative/rehabilitative care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC11HC21" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC11HC21" }) MERGE (node)-[:usedBy { label:"Curative/rehabilitative inpatient care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC12HC22" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC12HC22" }) MERGE (node)-[:usedBy { label:"Curative/rehabilitative day care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC13HC23" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC13HC23" }) MERGE (node)-[:usedBy { label:"Curative/rehabilitative outpatient care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC14HC24" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC14HC24" }) MERGE (node)-[:usedBy { label:"Curative/rehabilitative home-based care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC3" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC3" }) MERGE (node)-[:usedBy { label:"Long-term care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC31" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC31" }) MERGE (node)-[:usedBy { label:"Long-term inpatient care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC32" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC32" }) MERGE (node)-[:usedBy { label:"Long-term day care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC33" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC33" }) MERGE (node)-[:usedBy { label:"Long-term outpatient care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC34" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC34" }) MERGE (node)-[:usedBy { label:"Long-term home-based care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC4" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC4" }) MERGE (node)-[:usedBy { label:"Ancillary services"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC5" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC5" }) MERGE (node)-[:usedBy { label:"Medical goods"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC51" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC51" }) MERGE (node)-[:usedBy { label:"Pharmaceuticals and other medical non-durable goods"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC511" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC511" }) MERGE (node)-[:usedBy { label:"Prescribed medicines"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC512" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC512" }) MERGE (node)-[:usedBy { label:"Over-the-counter medicines"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC513" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC513" }) MERGE (node)-[:usedBy { label:"Other medical non-durable goods"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC52" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC52" }) MERGE (node)-[:usedBy { label:"Therapeutic appliances and other medical goods"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC6" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC6" }) MERGE (node)-[:usedBy { label:"Preventive care"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC61" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC61" }) MERGE (node)-[:usedBy { label:"Information, education and counseling programmes"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC62" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC62" }) MERGE (node)-[:usedBy { label:"Immunisation programmes"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC63" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC63" }) MERGE (node)-[:usedBy { label:"Early disease detection programmes"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC64" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC64" }) MERGE (node)-[:usedBy { label:"Healthy condition monitoring programmes"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC65" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC65" }) MERGE (node)-[:usedBy { label:"Epidemiological surveillance and risk and disease control programmes"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC7" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC7" }) MERGE (node)-[:usedBy { label:"Governance and health system and financing administration"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC71" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC71" }) MERGE (node)-[:usedBy { label:"Governance and health system administration"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC72" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC72" }) MERGE (node)-[:usedBy { label:"Administration of health system financing"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HC0" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HC0" }) MERGE (node)-[:usedBy { label:"Not elsewhere classified"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"HCR1" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"HCR1" }) MERGE (node)-[:usedBy { label:"Long-term care (social)"}]->(parent);
MERGE (node:`_code`:`_code_healthcare-function` { value:"LTC_TOT" });
MATCH (parent:`_code_list`:`_code_list_healthcare-function`),(node:`_code`:`_code_healthcare-function` { value:"LTC_TOT" }) MERGE (node)-[:usedBy { label:"Total long-term care"}]->(parent);
