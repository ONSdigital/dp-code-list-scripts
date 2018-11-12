CREATE (node:`_code_list`:`_code_list_npp-projection-type` { label:'projectiontype', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_npp-projection-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_npp-projection-type`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_npp-projection-type` { value:'3' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'3' }) MERGE (node)-[:usedBy { label:"High migration"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'7' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'7' }) MERGE (node)-[:usedBy { label:"High fertility"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'4' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'4' }) MERGE (node)-[:usedBy { label:"Low migration"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'2' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'2' }) MERGE (node)-[:usedBy { label:"Low life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'9' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'9' }) MERGE (node)-[:usedBy { label:"Low fertility"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'1' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'1' }) MERGE (node)-[:usedBy { label:"High life expectancy"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'6' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'6' }) MERGE (node)-[:usedBy { label:"High population"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'5' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'5' }) MERGE (node)-[:usedBy { label:"Zero net migration (natural change only)"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'8' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'8' }) MERGE (node)-[:usedBy { label:"Low population"}]->(parent);
MERGE (node:`_code`:`_code_npp-projection-type` { value:'0' });
MATCH (parent:`_code_list`:`_code_list_npp-projection-type`),(node:`_code`:`_code_npp-projection-type` { value:'0' }) MERGE (node)-[:usedBy { label:"Principal"}]->(parent);