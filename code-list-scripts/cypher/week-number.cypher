CREATE CONSTRAINT ON (n:`_code_week-number`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_week-number`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_week-number` { label:"week", edition:"one-off" });
MERGE (node:`_code`:`_code_week-number` { value:"week-1" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-1" }) MERGE (node)-[:usedBy { label:"Week 1"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-2" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-2" }) MERGE (node)-[:usedBy { label:"Week 2"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-3" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-3" }) MERGE (node)-[:usedBy { label:"Week 3"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-4" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-4" }) MERGE (node)-[:usedBy { label:"Week 4"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-5" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-5" }) MERGE (node)-[:usedBy { label:"Week 5"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-6" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-6" }) MERGE (node)-[:usedBy { label:"Week 6"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-7" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-7" }) MERGE (node)-[:usedBy { label:"Week 7"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-8" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-8" }) MERGE (node)-[:usedBy { label:"Week 8"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-9" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-9" }) MERGE (node)-[:usedBy { label:"Week 9"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-10" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-10" }) MERGE (node)-[:usedBy { label:"Week 10"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-11" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-11" }) MERGE (node)-[:usedBy { label:"Week 11"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-12" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-12" }) MERGE (node)-[:usedBy { label:"Week 12"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-13" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-13" }) MERGE (node)-[:usedBy { label:"Week 13"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-14" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-14" }) MERGE (node)-[:usedBy { label:"Week 14"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-15" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-15" }) MERGE (node)-[:usedBy { label:"Week 15"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-16" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-16" }) MERGE (node)-[:usedBy { label:"Week 16"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-17" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-17" }) MERGE (node)-[:usedBy { label:"Week 17"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-18" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-18" }) MERGE (node)-[:usedBy { label:"Week 18"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-19" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-19" }) MERGE (node)-[:usedBy { label:"Week 19"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-20" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-20" }) MERGE (node)-[:usedBy { label:"Week 20"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-21" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-21" }) MERGE (node)-[:usedBy { label:"Week 21"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-22" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-22" }) MERGE (node)-[:usedBy { label:"Week 22"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-23" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-23" }) MERGE (node)-[:usedBy { label:"Week 23"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-24" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-24" }) MERGE (node)-[:usedBy { label:"Week 24"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-25" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-25" }) MERGE (node)-[:usedBy { label:"Week 25"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-26" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-26" }) MERGE (node)-[:usedBy { label:"Week 26"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-27" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-27" }) MERGE (node)-[:usedBy { label:"Week 27"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-28" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-28" }) MERGE (node)-[:usedBy { label:"Week 28"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-29" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-29" }) MERGE (node)-[:usedBy { label:"Week 29"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-30" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-30" }) MERGE (node)-[:usedBy { label:"Week 30"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-31" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-31" }) MERGE (node)-[:usedBy { label:"Week 31"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-32" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-32" }) MERGE (node)-[:usedBy { label:"Week 32"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-33" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-33" }) MERGE (node)-[:usedBy { label:"Week 33"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-34" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-34" }) MERGE (node)-[:usedBy { label:"Week 34"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-35" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-35" }) MERGE (node)-[:usedBy { label:"Week 35"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-36" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-36" }) MERGE (node)-[:usedBy { label:"Week 36"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-37" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-37" }) MERGE (node)-[:usedBy { label:"Week 37"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-38" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-38" }) MERGE (node)-[:usedBy { label:"Week 38"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-39" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-39" }) MERGE (node)-[:usedBy { label:"Week 39"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-40" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-40" }) MERGE (node)-[:usedBy { label:"Week 40"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-41" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-41" }) MERGE (node)-[:usedBy { label:"Week 41"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-42" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-42" }) MERGE (node)-[:usedBy { label:"Week 42"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-43" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-43" }) MERGE (node)-[:usedBy { label:"Week 43"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-44" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-44" }) MERGE (node)-[:usedBy { label:"Week 44"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-45" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-45" }) MERGE (node)-[:usedBy { label:"Week 45"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-46" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-46" }) MERGE (node)-[:usedBy { label:"Week 46"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-47" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-47" }) MERGE (node)-[:usedBy { label:"Week 47"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-48" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-48" }) MERGE (node)-[:usedBy { label:"Week 48"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-49" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-49" }) MERGE (node)-[:usedBy { label:"Week 49"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-50" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-50" }) MERGE (node)-[:usedBy { label:"Week 50"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-51" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-51" }) MERGE (node)-[:usedBy { label:"Week 51"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-52" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-52" }) MERGE (node)-[:usedBy { label:"Week 52"}]->(parent);
MERGE (node:`_code`:`_code_week-number` { value:"week-53" });
MATCH (parent:`_code_list`:`_code_list_week-number`),(node:`_code`:`_code_week-number` { value:"week-53" }) MERGE (node)-[:usedBy { label:"Week 53"}]->(parent);
