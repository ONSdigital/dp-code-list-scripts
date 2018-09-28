CREATE (node:`_code_list`:`_code_list_opss-scheme-membership-sizeband` { label:'schememembershipsizeband', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_opss-scheme-membership-sizeband`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_opss-scheme-membership-sizeband`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'2-to-11' });
MATCH (parent:`_code_list`:`_code_list_opss-scheme-membership-sizeband`),(node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'2-to-11' }) MERGE (node)-[:usedBy { label:"2 to 11"}]->(parent);
MERGE (node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'1,000-to-4,999' });
MATCH (parent:`_code_list`:`_code_list_opss-scheme-membership-sizeband`),(node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'1,000-to-4,999' }) MERGE (node)-[:usedBy { label:"1,000 to 4,999"}]->(parent);
MERGE (node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'5,000-to-9,999' });
MATCH (parent:`_code_list`:`_code_list_opss-scheme-membership-sizeband`),(node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'5,000-to-9,999' }) MERGE (node)-[:usedBy { label:"5,000 to 9,999"}]->(parent);
MERGE (node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'10,000+' });
MATCH (parent:`_code_list`:`_code_list_opss-scheme-membership-sizeband`),(node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'10,000+' }) MERGE (node)-[:usedBy { label:"10,000+"}]->(parent);
MERGE (node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'all-sizebands' });
MATCH (parent:`_code_list`:`_code_list_opss-scheme-membership-sizeband`),(node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'all-sizebands' }) MERGE (node)-[:usedBy { label:"All sizebands"}]->(parent);
MERGE (node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'100-to-999' });
MATCH (parent:`_code_list`:`_code_list_opss-scheme-membership-sizeband`),(node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'100-to-999' }) MERGE (node)-[:usedBy { label:"100 to 999"}]->(parent);
MERGE (node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'12-to-99' });
MATCH (parent:`_code_list`:`_code_list_opss-scheme-membership-sizeband`),(node:`_code`:`_code_opss-scheme-membership-sizeband` { value:'12-to-99' }) MERGE (node)-[:usedBy { label:"12 to 99"}]->(parent);
