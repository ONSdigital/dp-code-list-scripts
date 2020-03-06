CREATE CONSTRAINT ON (n:`_code_productivity`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_productivity`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_productivity` { label:"productivitytype", edition:"one-off" });
MERGE (node:`_code`:`_code_productivity` { value:"gva-per-hour-worked-indices" });
MATCH (parent:`_code_list`:`_code_list_productivity`),(node:`_code`:`_code_productivity` { value:"gva-per-hour-worked-indices" }) MERGE (node)-[:usedBy { label:"GVA per hour worked indices"}]->(parent);
MERGE (node:`_code`:`_code_productivity` { value:"gva-per-hour-worked-pounds" });
MATCH (parent:`_code_list`:`_code_list_productivity`),(node:`_code`:`_code_productivity` { value:"gva-per-hour-worked-pounds" }) MERGE (node)-[:usedBy { label:"GVA per hour worked (£)"}]->(parent);
MERGE (node:`_code`:`_code_productivity` { value:"gva-per-filled-job-indices" });
MATCH (parent:`_code_list`:`_code_list_productivity`),(node:`_code`:`_code_productivity` { value:"gva-per-filled-job-indices" }) MERGE (node)-[:usedBy { label:"GVA per filled job indices"}]->(parent);
MERGE (node:`_code`:`_code_productivity` { value:"gva-per-filled-job-pounds" });
MATCH (parent:`_code_list`:`_code_list_productivity`),(node:`_code`:`_code_productivity` { value:"gva-per-filled-job-pounds" }) MERGE (node)-[:usedBy { label:"GVA per filled job (£)"}]->(parent);
MERGE (node:`_code`:`_code_productivity` { value:"gva-excluding-rental-income-per-hour-worked-indices" });
MATCH (parent:`_code_list`:`_code_list_productivity`),(node:`_code`:`_code_productivity` { value:"gva-excluding-rental-income-per-hour-worked-indices" }) MERGE (node)-[:usedBy { label:"GVA (excluding rental income) per hour worked: indices"}]->(parent);
MERGE (node:`_code`:`_code_productivity` { value:"gva-excluding-rental-income-per-hour-worked-levels-pounds" });
MATCH (parent:`_code_list`:`_code_list_productivity`),(node:`_code`:`_code_productivity` { value:"gva-excluding-rental-income-per-hour-worked-levels-pounds" }) MERGE (node)-[:usedBy { label:"GVA (excluding rental income) per hour worked: levels (£)"}]->(parent);
