CREATE CONSTRAINT ON (n:`_code_type-of-number`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_type-of-number`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_type-of-number` { label:'typeofnumber', edition:'one-off' });
MERGE (node:`_code`:`_code_type-of-number` { value:"number" });
MATCH (parent:`_code_list`:`_code_list_type-of-number`),(node:`_code`:`_code_type-of-number` { value:"number" }) MERGE (node)-[:usedBy { label:"Number"}]->(parent);
MERGE (node:`_code`:`_code_type-of-number` { value:"percentage" });
MATCH (parent:`_code_list`:`_code_list_type-of-number`),(node:`_code`:`_code_type-of-number` { value:"percentage" }) MERGE (node)-[:usedBy { label:"Percentage"}]->(parent);
