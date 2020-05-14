CREATE (node:`_code_list`:`_code_list_census-1961-economic-activity-age-group` { label:'economicactivityagegroup', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-economic-activity-age-group`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-economic-activity-age-group`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'15-24' });
MATCH (parent:`_code_list`:`_code_list_census-1961-economic-activity-age-group`),(node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'15-24' }) MERGE (node)-[:usedBy { label:"15-24"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'25-44' });
MATCH (parent:`_code_list`:`_code_list_census-1961-economic-activity-age-group`),(node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'25-44' }) MERGE (node)-[:usedBy { label:"25-44"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'45-64' });
MATCH (parent:`_code_list`:`_code_list_census-1961-economic-activity-age-group`),(node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'45-64' }) MERGE (node)-[:usedBy { label:"45-64"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'65+' });
MATCH (parent:`_code_list`:`_code_list_census-1961-economic-activity-age-group`),(node:`_code`:`_code_census-1961-economic-activity-age-group` { value:'65+' }) MERGE (node)-[:usedBy { label:"65+"}]->(parent);

