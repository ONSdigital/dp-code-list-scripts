CREATE CONSTRAINT ON (n:`_code_unit-of-measure`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_unit-of-measure`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_unit-of-measure` { label:'unitofmeasure', edition:'one-off' });
MERGE (node:`_code`:`_code_unit-of-measure` { value:"levels" });
MATCH (parent:`_code_list`:`_code_list_unit-of-measure`),(node:`_code`:`_code_unit-of-measure` { value:"levels" }) MERGE (node)-[:usedBy { label:"Levels"}]->(parent);
MERGE (node:`_code`:`_code_unit-of-measure` { value:"rates" });
MATCH (parent:`_code_list`:`_code_list_unit-of-measure`),(node:`_code`:`_code_unit-of-measure` { value:"rates" }) MERGE (node)-[:usedBy { label:"Rates"}]->(parent);
MERGE (node:`_code`:`_code_unit-of-measure` { value:"number" });
MATCH (parent:`_code_list`:`_code_list_unit-of-measure`),(node:`_code`:`_code_unit-of-measure` { value:"number" }) MERGE (node)-[:usedBy { label:"Number"}]->(parent);
MERGE (node:`_code`:`_code_unit-of-measure` { value:"percentage" });
MATCH (parent:`_code_list`:`_code_list_unit-of-measure`),(node:`_code`:`_code_unit-of-measure` { value:"percentage" }) MERGE (node)-[:usedBy { label:"Percentage"}]->(parent);

