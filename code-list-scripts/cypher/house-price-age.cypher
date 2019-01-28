CREATE CONSTRAINT ON (n:`_code_house-price-age`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_house-price-age`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_house-price-age` { label:'housepriceage', edition:'one-off' });
MERGE (node:`_code`:`_code_house-price-age` { value:"all" });
MATCH (parent:`_code_list`:`_code_list_house-price-age`),(node:`_code`:`_code_house-price-age` { value:"all" }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
MERGE (node:`_code`:`_code_house-price-age` { value:"existing" });
MATCH (parent:`_code_list`:`_code_list_house-price-age`),(node:`_code`:`_code_house-price-age` { value:"existing" }) MERGE (node)-[:usedBy { label:"Existing"}]->(parent);
MERGE (node:`_code`:`_code_house-price-age` { value:"newly-built" });
MATCH (parent:`_code_list`:`_code_list_house-price-age`),(node:`_code`:`_code_house-price-age` { value:"newly-built" }) MERGE (node)-[:usedBy { label:"Newly built"}]->(parent);
