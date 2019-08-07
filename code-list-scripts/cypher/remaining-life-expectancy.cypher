CREATE CONSTRAINT ON (n:`_code_remaining-life-expectancy`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_remaining-life-expectancy`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_remaining-life-expectancy` { label:"remaininglifeexpectancy", edition:"one-off" });
MERGE (node:`_code`:`_code_remaining-life-expectancy` { value:"15-years-remaining-life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_remaining-life-expectancy`),(node:`_code`:`_code_remaining-life-expectancy` { value:"15-years-remaining-life-expectancy" }) MERGE (node)-[:usedBy { label:"% with 15 years remaining LE"}]->(parent);
MERGE (node:`_code`:`_code_remaining-life-expectancy` { value:"5-years-remaining-life-expectancy" });
MATCH (parent:`_code_list`:`_code_list_remaining-life-expectancy`),(node:`_code`:`_code_remaining-life-expectancy` { value:"5-years-remaining-life-expectancy" }) MERGE (node)-[:usedBy { label:" % with 5 years remaining LE"}]->(parent);
MERGE (node:`_code`:`_code_remaining-life-expectancy` { value:"prospective-old-age-dependancy-ratio" });
MATCH (parent:`_code_list`:`_code_list_remaining-life-expectancy`),(node:`_code`:`_code_remaining-life-expectancy` { value:"prospective-old-age-dependancy-ratio" }) MERGE (node)-[:usedBy { label:"Prospective old age dependancy ratio"}]->(parent);
