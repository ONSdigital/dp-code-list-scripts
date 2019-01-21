CREATE CONSTRAINT ON (n:`_code_drug-deaths-mortality`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_drug-deaths-mortality`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_drug-deaths-mortality` { label:'mortality', edition:'one-off' });
MERGE (node:`_code`:`_code_drug-deaths-mortality` { value:"deaths" });
MATCH (parent:`_code_list`:`_code_list_drug-deaths-mortality`),(node:`_code`:`_code_drug-deaths-mortality` { value:"deaths" }) MERGE (node)-[:usedBy { label:"Deaths"}]->(parent);
MERGE (node:`_code`:`_code_drug-deaths-mortality` { value:"rate" });
MATCH (parent:`_code_list`:`_code_list_drug-deaths-mortality`),(node:`_code`:`_code_drug-deaths-mortality` { value:"rate" }) MERGE (node)-[:usedBy { label:"Rate"}]->(parent);
