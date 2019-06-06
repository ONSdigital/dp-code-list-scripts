//This is required at the start of all geographic list imports to ensure uniqueness
CREATE CONSTRAINT ON (n:`_code_geography`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_england-and-wales-only` { label:'geography', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_england-and-wales-only`) ASSERT n.value IS UNIQUE;

MATCH (parent:`_code_list`:`_code_list_england-and-wales-only`),(node:`_code`:`_code_geography` { value:'K04000001' }) MERGE (node)-[:usedBy { label:"England and Wales"}]->(parent);
