CREATE CONSTRAINT ON (n:`_code_business-investment-prices`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_business-investment-prices` { label:'prices', edition:'one-off' });

MERGE (node:`_code`:`_code_business-investment-prices` { value:'V' });

MATCH (parent:`_code_list`:`_code_list_business-investment-prices`),(node:`_code`:`_code_business-investment-prices` { value:'V' }) MERGE (node)-[:usedBy { label:"Current prices"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-prices` { value:'Y' });

MATCH (parent:`_code_list`:`_code_list_business-investment-prices`),(node:`_code`:`_code_business-investment-prices` { value:'Y' }) MERGE (node)-[:usedBy { label:"Previous year prices"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-prices` { value:'L' });

MATCH (parent:`_code_list`:`_code_list_business-investment-prices`),(node:`_code`:`_code_business-investment-prices` { value:'L' }) MERGE (node)-[:usedBy { label:"Chain linked volume"}]->(parent);
