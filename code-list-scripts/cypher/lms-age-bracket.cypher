CREATE CONSTRAINT ON (n:`_code_lms-age-bracket`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_lms-age-bracket`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_lms-age-bracket` { label:'age', edition:'one-off' });
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"16+" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"16+" }) MERGE (node)-[:usedBy { label:"16+"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"16-64" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"16-64" }) MERGE (node)-[:usedBy { label:"16-64"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"16-17" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"16-17" }) MERGE (node)-[:usedBy { label:"16-17"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"18-24" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"18-24" }) MERGE (node)-[:usedBy { label:"18-24"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"25-34" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"25-34" }) MERGE (node)-[:usedBy { label:"25-34"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"35-49" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"35-49" }) MERGE (node)-[:usedBy { label:"35-49"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"50-64" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"50-64" }) MERGE (node)-[:usedBy { label:"50-64"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"65+" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"65+" }) MERGE (node)-[:usedBy { label:"65+"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"16-24" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"16-24" }) MERGE (node)-[:usedBy { label:"16-24"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"25-49" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"25-49" }) MERGE (node)-[:usedBy { label:"25-49"}]->(parent);
MERGE (node:`_code`:`_code_lms-age-bracket` { value:"50+" });
MATCH (parent:`_code_list`:`_code_list_lms-age-bracket`),(node:`_code`:`_code_lms-age-bracket` { value:"50+" }) MERGE (node)-[:usedBy { label:"50+"}]->(parent);
