CREATE (node:`_code_list`:`_code_list_opss-benefit-type` { label:'benefittype', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_opss-benefit-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_opss-benefit-type`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_opss-benefit-type` { value:'defined-benefit' });
MATCH (parent:`_code_list`:`_code_list_opss-benefit-type`),(node:`_code`:`_code_opss-benefit-type` { value:'defined-benefit' }) MERGE (node)-[:usedBy { label:"Defined Benefit"}]->(parent);
MERGE (node:`_code`:`_code_opss-benefit-type` { value:'career-average' });
MATCH (parent:`_code_list`:`_code_list_opss-benefit-type`),(node:`_code`:`_code_opss-benefit-type` { value:'career-average' }) MERGE (node)-[:usedBy { label:"Career Average"}]->(parent);
MERGE (node:`_code`:`_code_opss-benefit-type` { value:'defined-contribution' });
MATCH (parent:`_code_list`:`_code_list_opss-benefit-type`),(node:`_code`:`_code_opss-benefit-type` { value:'defined-contribution' }) MERGE (node)-[:usedBy { label:"Defined Contribution"}]->(parent);
MERGE (node:`_code`:`_code_opss-benefit-type` { value:'all-benefit-types' });
MATCH (parent:`_code_list`:`_code_list_opss-benefit-type`),(node:`_code`:`_code_opss-benefit-type` { value:'all-benefit-types' }) MERGE (node)-[:usedBy { label:"All benefit types"}]->(parent);
