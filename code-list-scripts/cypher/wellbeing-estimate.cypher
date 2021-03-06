CREATE CONSTRAINT ON (n:`_code_wellbeing-estimate`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_wellbeing-estimate`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_wellbeing-estimate` { label:"Estimate", edition:"one-off" });
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
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:"low" });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),                (node:`_code`:`_code_wellbeing-estimate` { value:"low" })                 MERGE (node)-[:usedBy { label:"Low"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:"medium" });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),                (node:`_code`:`_code_wellbeing-estimate` { value:"medium" })                 MERGE (node)-[:usedBy { label:"Medium"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:"high" });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),                (node:`_code`:`_code_wellbeing-estimate` { value:"high" })                 MERGE (node)-[:usedBy { label:"High"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:"very-high" });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),                (node:`_code`:`_code_wellbeing-estimate` { value:"very-high" })                 MERGE (node)-[:usedBy { label:"Very high"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-estimate` { value:"high-or-very-high" });
MATCH (parent:`_code_list`:`_code_list_wellbeing-estimate`),                (node:`_code`:`_code_wellbeing-estimate` { value:"high-or-very-high" })                 MERGE (node)-[:usedBy { label:"High or very high"}]->(parent);
