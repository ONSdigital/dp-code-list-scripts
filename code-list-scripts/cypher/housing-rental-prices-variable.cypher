CREATE CONSTRAINT ON (n:`_code_housing-rental-prices-variable`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_housing-rental-prices-variable`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_housing-rental-prices-variable` { label:'variable', edition:'one-off' });
MERGE (node:`_code`:`_code_housing-rental-prices-variable` { value:"year-change" });
MATCH (parent:`_code_list`:`_code_list_housing-rental-prices-variable`),(node:`_code`:`_code_housing-rental-prices-variable` { value:"year-change" }) MERGE (node)-[:usedBy { label:"Year-on-year change"}]->(parent);
MERGE (node:`_code`:`_code_housing-rental-prices-variable` { value:"index" });
MATCH (parent:`_code_list`:`_code_list_housing-rental-prices-variable`),(node:`_code`:`_code_housing-rental-prices-variable` { value:"index" }) MERGE (node)-[:usedBy { label:"Index"}]->(parent);
