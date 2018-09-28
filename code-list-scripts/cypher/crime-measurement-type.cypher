CREATE (node:`_code_list`:`_code_list_crime-measurement-type` { label:'measurementtype', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_crime-measurement-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_crime-measurement-type`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_crime-measurement-type` { value:'prevalence-rate' });
MATCH (parent:`_code_list`:`_code_list_crime-measurement-type`),(node:`_code`:`_code_crime-measurement-type` { value:'prevalence-rate' }) MERGE (node)-[:usedBy { label:"Prevalence rate"}]->(parent);
MERGE (node:`_code`:`_code_crime-measurement-type` { value:'incidence-rate' });
MATCH (parent:`_code_list`:`_code_list_crime-measurement-type`),(node:`_code`:`_code_crime-measurement-type` { value:'incidence-rate' }) MERGE (node)-[:usedBy { label:"Incidence rate"}]->(parent);
