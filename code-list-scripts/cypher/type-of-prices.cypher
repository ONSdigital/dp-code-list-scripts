CREATE CONSTRAINT ON (n:`_code_type-of-prices`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_type-of-prices`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_type-of-prices` { label:'prices', edition:'one-off' });
MERGE (node:`_code`:`_code_type-of-prices` { value:"cp" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"cp" }) MERGE (node)-[:usedBy { label:"Current prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"cvmpub" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"cvmpub" }) MERGE (node)-[:usedBy { label:"Chained Volume Measure for Publish"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"idef" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"idef" }) MERGE (node)-[:usedBy { label:"Implied deflator"}]->(parent);
