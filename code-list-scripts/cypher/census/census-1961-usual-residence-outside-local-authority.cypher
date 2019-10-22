CREATE (node:`_code_list`:`_code_list_census-1961-usual-residence-outside-local-authority` { label:'usualresidenceoutsidelocalauthority', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-usual-residence-outside-local-authority`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-usual-residence-outside-local-authority`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-usual-residence-outside-local-authority` { value:'resident-in-england-and-wales-outside-local-authority-area' });
MATCH (parent:`_code_list`:`_code_list_census-1961-usual-residence-outside-local-authority`),(node:`_code`:`_code_census-1961-usual-residence-outside-local-authority` { value:'resident-in-england-and-wales-outside-local-authority-area' }) MERGE (node)-[:usedBy { label:"Resident in England and Wales outside local authority area"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-usual-residence-outside-local-authority` { value:'resident-outside-england-and-wales' });
MATCH (parent:`_code_list`:`_code_list_census-1961-usual-residence-outside-local-authority`),(node:`_code`:`_code_census-1961-usual-residence-outside-local-authority` { value:'resident-outside-england-and-wales' }) MERGE (node)-[:usedBy { label:"Resident outside England and Wales"}]->(parent);

