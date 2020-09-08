CREATE CONSTRAINT ON (n:`_code_life-expectancy-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_life-expectancy-type`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_life-expectancy-type` { label:'Life Expectancy Type', edition:'one-off' });
MERGE (node:`_code`:`_code_life-expectancy-type` { value:"life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_life-expectancy-type`),(node:`_code`:`_code_life-expectancy-type` { value:"life-expectancy" }) MERGE (node)-[:usedBy { label:"Life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_life-expectancy-type` { value:"healthy-life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_life-expectancy-type`),(node:`_code`:`_code_life-expectancy-type` { value:"healthy-life-expectancy" }) MERGE (node)-[:usedBy { label:"Healthy life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_life-expectancy-type` { value:"disability-free-life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_life-expectancy-type`),(node:`_code`:`_code_life-expectancy-type` { value:"disability-free-life-expectancy" }) MERGE (node)-[:usedBy { label:"Disability-free life expectancy"}]->(parent);
