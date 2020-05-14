CREATE (node:`_code_list`:`_code_list_census-1961-work-location` { label:'worklocation', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-work-location`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-work-location`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-work-location` { value:'outside-usual-local-authority-area-of-residence' });
MATCH (parent:`_code_list`:`_code_list_census-1961-work-location`),(node:`_code`:`_code_census-1961-work-location` { value:'outside-usual-local-authority-area-of-residence' }) MERGE (node)-[:usedBy { label:"Outside usual local authority area of residence"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-work-location` { value:'within-usual-local-authority-area-of-residence' });
MATCH (parent:`_code_list`:`_code_list_census-1961-work-location`),(node:`_code`:`_code_census-1961-work-location` { value:'within-usual-local-authority-area-of-residence' }) MERGE (node)-[:usedBy { label:"Within usual local authority area of residence"}]->(parent);

