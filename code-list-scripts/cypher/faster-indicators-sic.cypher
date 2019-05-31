CREATE CONSTRAINT ON (n:`_code_faster-indicators-sic`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_faster-indicators-sic`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_faster-indicators-sic` { label:"sic", edition:"one-off" });
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"total" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"total" })                 MERGE (node)-[:usedBy { label:"Total"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"a" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"a" })                 MERGE (node)-[:usedBy { label:"A : Agriculture, forestry and fishing"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"production" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"production" })                 MERGE (node)-[:usedBy { label:"Production"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"f" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"f" })                 MERGE (node)-[:usedBy { label:"F : Construction"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"services" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"services" })                 MERGE (node)-[:usedBy { label:"Services"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"b" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"b" })                 MERGE (node)-[:usedBy { label:"B : Mining and quarrying"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"c" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"c" })                 MERGE (node)-[:usedBy { label:"C : Manufacturing"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"d" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"d" })                 MERGE (node)-[:usedBy { label:"D : Electricity, gas, steam and air conditioning supply"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"e" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"e" })                 MERGE (node)-[:usedBy { label:"E : Water supply; sewerage, waste management and remediation activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"g" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"g" })                 MERGE (node)-[:usedBy { label:"G : Wholesale and retail trade; repair of motor vehicles and motorcycles"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"h" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"h" })                 MERGE (node)-[:usedBy { label:"H : Transportation and storage"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"i" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"i" })                 MERGE (node)-[:usedBy { label:"I : Accommodation and food service activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"j" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"j" })                 MERGE (node)-[:usedBy { label:"J : Information and communication"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"k" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"k" })                 MERGE (node)-[:usedBy { label:"K : Financial and insurance activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"l" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"l" })                 MERGE (node)-[:usedBy { label:"L : Real estate activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"m" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"m" })                 MERGE (node)-[:usedBy { label:"M : Professional, scientific and technical activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"n" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"n" })                 MERGE (node)-[:usedBy { label:"N : Administrative and support service activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"p" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"p" })                 MERGE (node)-[:usedBy { label:"P : Education"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"q" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"q" })                 MERGE (node)-[:usedBy { label:"Q : Human health and social work activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"r" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"r" })                 MERGE (node)-[:usedBy { label:"R : Arts, entertainment and recreation"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"s" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"s" })                 MERGE (node)-[:usedBy { label:"S : Other service activities"}]->(parent);
MERGE (node:`_code`:`_code_faster-indicators-sic` { value:"o" });
MATCH (parent:`_code_list`:`_code_list_faster-indicators-sic`),                (node:`_code`:`_code_faster-indicators-sic` { value:"o" })                 MERGE (node)-[:usedBy { label:"O : Public administration and defence; compulsory social security"}]->(parent);
