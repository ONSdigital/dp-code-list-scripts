CREATE (node:`_code_list`:`_code_list_census-1961-marital-status` { label:'maritalstatus', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-marital-status`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-marital-status`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-marital-status` { value:'all' });
MATCH (parent:`_code_list`:`_code_list_census-1961-marital-status`),(node:`_code`:`_code_census-1961-marital-status` { value:'all' }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-marital-status` { value:'divorced' });
MATCH (parent:`_code_list`:`_code_list_census-1961-marital-status`),(node:`_code`:`_code_census-1961-marital-status` { value:'divorced' }) MERGE (node)-[:usedBy { label:"Divorced"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-marital-status` { value:'married' });
MATCH (parent:`_code_list`:`_code_list_census-1961-marital-status`),(node:`_code`:`_code_census-1961-marital-status` { value:'married' }) MERGE (node)-[:usedBy { label:"Married"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-marital-status` { value:'single' });
MATCH (parent:`_code_list`:`_code_list_census-1961-marital-status`),(node:`_code`:`_code_census-1961-marital-status` { value:'single' }) MERGE (node)-[:usedBy { label:"Single"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-marital-status` { value:'widowed' });
MATCH (parent:`_code_list`:`_code_list_census-1961-marital-status`),(node:`_code`:`_code_census-1961-marital-status` { value:'widowed' }) MERGE (node)-[:usedBy { label:"Widowed"}]->(parent);

