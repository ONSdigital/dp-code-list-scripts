CREATE CONSTRAINT ON (n:`_code_lms-unit-of-measure`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_lms-unit-of-measure`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_lms-unit-of-measure` { label:'unitofmeasure', edition:'one-off' });
MERGE (node:`_code`:`_code_lms-unit-of-measure` { value:"levels" });
MATCH (parent:`_code_list`:`_code_list_lms-unit-of-measure`),(node:`_code`:`_code_lms-unit-of-measure` { value:"levels" }) MERGE (node)-[:usedBy { label:"Levels"}]->(parent);
MERGE (node:`_code`:`_code_lms-unit-of-measure` { value:"rates" });
MATCH (parent:`_code_list`:`_code_list_lms-unit-of-measure`),(node:`_code`:`_code_lms-unit-of-measure` { value:"rates" }) MERGE (node)-[:usedBy { label:"Rates"}]->(parent);
