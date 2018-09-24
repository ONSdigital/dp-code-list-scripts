CREATE (node:`_code_list`:`_code_list_wellbeing-estimate` { label:'estimate', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_wellbeing-estimate`) ASSERT n.edition IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_wellbeing-estimate`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_wellbeing-estimate` { value:'average-mean' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),(node:`_code`:`_code_wellbeing-estimate` { value:'average-mean' }) MERGE (node)-[:usedBy { label:"Average (mean)"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:'poor' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),(node:`_code`:`_code_wellbeing-estimate` { value:'poor' }) MERGE (node)-[:usedBy { label:"Poor"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:'good' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),(node:`_code`:`_code_wellbeing-estimate` { value:'good' }) MERGE (node)-[:usedBy { label:"Good"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:'fair' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),(node:`_code`:`_code_wellbeing-estimate` { value:'fair' }) MERGE (node)-[:usedBy { label:"Fair"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:'very-good' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),(node:`_code`:`_code_wellbeing-estimate` { value:'very-good' }) MERGE (node)-[:usedBy { label:"Very good"}]->(parent);