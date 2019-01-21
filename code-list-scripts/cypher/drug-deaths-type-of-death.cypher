CREATE CONSTRAINT ON (n:`_code_drug-deaths-type-of-death`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_drug-deaths-type-of-death`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_drug-deaths-type-of-death` { label:'typeofdeath', edition:'one-off' });
MERGE (node:`_code`:`_code_drug-deaths-type-of-death` { value:"poisoning" });
MATCH (parent:`_code_list`:`_code_list_drug-deaths-type-of-death`),(node:`_code`:`_code_drug-deaths-type-of-death` { value:"poisoning" }) MERGE (node)-[:usedBy { label:"Poisoning"}]->(parent);
MERGE (node:`_code`:`_code_drug-deaths-type-of-death` { value:"misuse" });
MATCH (parent:`_code_list`:`_code_list_drug-deaths-type-of-death`),(node:`_code`:`_code_drug-deaths-type-of-death` { value:"misuse" }) MERGE (node)-[:usedBy { label:"Misuse"}]->(parent);
