//This is required at the start of all geographic list imports to ensure uniqueness
CREATE CONSTRAINT ON (n:`_code_geography`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_wellbeing-geography` { label:'geography', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_wellbeing-geography`) ASSERT n.edition IS UNIQUE;

MERGE (node:`_code`:`_code_geography` { value:'england' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-geography`),(node:`_code`:`_code_geography` { value:'england' }) MERGE (node)-[:usedBy { label:"England"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:'scotland' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-geography`),(node:`_code`:`_code_geography` { value:'scotland' }) MERGE (node)-[:usedBy { label:"Scotland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:'wales' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-geography`),(node:`_code`:`_code_geography` { value:'wales' }) MERGE (node)-[:usedBy { label:"Wales"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:'northern-ireland' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-geography`),(node:`_code`:`_code_geography` { value:'northern-ireland' }) MERGE (node)-[:usedBy { label:"Northern Ireland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:'united-kingdom' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-geography`),(node:`_code`:`_code_geography` { value:'united-kingdom' }) MERGE (node)-[:usedBy { label:"United Kingdom"}]->(parent);
