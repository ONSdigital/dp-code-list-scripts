CREATE (node:`_code_list`:`_code_list_crime-accommodation-type` { label:'accommodationtype', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_crime-accommodation-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_crime-accommodation-type`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_crime-accommodation-type` { value:'other-accommodation' });
MATCH (parent:`_code_list`:`_code_list_crime-accommodation-type`),(node:`_code`:`_code_crime-accommodation-type` { value:'other-accommodation' }) MERGE (node)-[:usedBy { label:"Other accommodation"}]->(parent);
MERGE (node:`_code`:`_code_crime-accommodation-type` { value:'semi-detached-house' });
MATCH (parent:`_code_list`:`_code_list_crime-accommodation-type`),(node:`_code`:`_code_crime-accommodation-type` { value:'semi-detached-house' }) MERGE (node)-[:usedBy { label:"Semi-detached house"}]->(parent);
MERGE (node:`_code`:`_code_crime-accommodation-type` { value:'flats-maisonettes' });
MATCH (parent:`_code_list`:`_code_list_crime-accommodation-type`),(node:`_code`:`_code_crime-accommodation-type` { value:'flats-maisonettes' }) MERGE (node)-[:usedBy { label:"Flats/maisonettes"}]->(parent);
MERGE (node:`_code`:`_code_crime-accommodation-type` { value:'house' });
MATCH (parent:`_code_list`:`_code_list_crime-accommodation-type`),(node:`_code`:`_code_crime-accommodation-type` { value:'house' }) MERGE (node)-[:usedBy { label:"House"}]->(parent);
MERGE (node:`_code`:`_code_crime-accommodation-type` { value:'detached-house' });
MATCH (parent:`_code_list`:`_code_list_crime-accommodation-type`),(node:`_code`:`_code_crime-accommodation-type` { value:'detached-house' }) MERGE (node)-[:usedBy { label:"Detached house"}]->(parent);
MERGE (node:`_code`:`_code_crime-accommodation-type` { value:'terraced-house' });
MATCH (parent:`_code_list`:`_code_list_crime-accommodation-type`),(node:`_code`:`_code_crime-accommodation-type` { value:'terraced-house' }) MERGE (node)-[:usedBy { label:"Terraced house"}]->(parent);
