CREATE CONSTRAINT ON (n:`_code_life-expectancy-variable`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_life-expectancy-variable`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_life-expectancy-variable` { label:'lifeexpectancyvariable', edition:'one-off' });
MERGE (node:`_code`:`_code_life-expectancy-variable` { value:"life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_life-expectancy-variable`),(node:`_code`:`_code_life-expectancy-variable` { value:"life-expectancy" }) MERGE (node)-[:usedBy { label:"Life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_life-expectancy-variable` { value:"healthy-life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_life-expectancy-variable`),(node:`_code`:`_code_life-expectancy-variable` { value:"healthy-life-expectancy" }) MERGE (node)-[:usedBy { label:"Healthy life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_life-expectancy-variable` { value:"disability-free-life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_life-expectancy-variable`),(node:`_code`:`_code_life-expectancy-variable` { value:"disability-free-life-expectancy" }) MERGE (node)-[:usedBy { label:"Disability-free life expectancy"}]->(parent);
