CREATE (node:`_code_list`:`_code_list_census-1961-occupation-classification` { label:'occupationclassification', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-occupation-classification`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-occupation-classification`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-occupation-classification` { value:'employers-and-managers' });
MATCH (parent:`_code_list`:`_code_list_census-1961-occupation-classification`),(node:`_code`:`_code_census-1961-occupation-classification` { value:'employers-and-managers' }) MERGE (node)-[:usedBy { label:"Employers and managers"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-occupation-classification` { value:'foremen-skilled-manual-workers-own-account-workers-other-than-professional' });
MATCH (parent:`_code_list`:`_code_list_census-1961-occupation-classification`),(node:`_code`:`_code_census-1961-occupation-classification` { value:'foremen-skilled-manual-workers-own-account-workers-other-than-professional' }) MERGE (node)-[:usedBy { label:"Foremen, skilled manual workers, own account workers (other than professional)"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-occupation-classification` { value:'non-manual-workers' });
MATCH (parent:`_code_list`:`_code_list_census-1961-occupation-classification`),(node:`_code`:`_code_census-1961-occupation-classification` { value:'non-manual-workers' }) MERGE (node)-[:usedBy { label:"Non-manual workers"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-occupation-classification` { value:'personnel-service-workers-semi-skilled-manual-workers-and-agricultural-workers' });
MATCH (parent:`_code_list`:`_code_list_census-1961-occupation-classification`),(node:`_code`:`_code_census-1961-occupation-classification` { value:'personnel-service-workers-semi-skilled-manual-workers-and-agricultural-workers' }) MERGE (node)-[:usedBy { label:"Personnel service workers, semi-skilled manual workers and agricultural workers"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-occupation-classification` { value:'professional-workers' });
MATCH (parent:`_code_list`:`_code_list_census-1961-occupation-classification`),(node:`_code`:`_code_census-1961-occupation-classification` { value:'professional-workers' }) MERGE (node)-[:usedBy { label:"Professional workers"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-occupation-classification` { value:'unskilled-manual-workers-armed-forces-and-persons-with-inadequately-described-occupations' });
MATCH (parent:`_code_list`:`_code_list_census-1961-occupation-classification`),(node:`_code`:`_code_census-1961-occupation-classification` { value:'unskilled-manual-workers-armed-forces-and-persons-with-inadequately-described-occupations' }) MERGE (node)-[:usedBy { label:"Unskilled manual workers, Armed Forces and persons with inadequately described occupations"}]->(parent);

