CREATE (node:`_code_list`:`_code_list_census-1961-nationality` { label:'nationality', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-nationality`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-nationality`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-nationality` { value:'european-nationals' });
MATCH (parent:`_code_list`:`_code_list_census-1961-nationality`),(node:`_code`:`_code_census-1961-nationality` { value:'european-nationals' }) MERGE (node)-[:usedBy { label:"European nationals"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-nationality` { value:'other-aliens' });
MATCH (parent:`_code_list`:`_code_list_census-1961-nationality`),(node:`_code`:`_code_census-1961-nationality` { value:'other-aliens' }) MERGE (node)-[:usedBy { label:"Other aliens"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-nationality` { value:'other-british-citizens' });
MATCH (parent:`_code_list`:`_code_list_census-1961-nationality`),(node:`_code`:`_code_census-1961-nationality` { value:'other-british-citizens' }) MERGE (node)-[:usedBy { label:"Other British citizens"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-nationality` { value:'uk-citizens' });
MATCH (parent:`_code_list`:`_code_list_census-1961-nationality`),(node:`_code`:`_code_census-1961-nationality` { value:'uk-citizens' }) MERGE (node)-[:usedBy { label:"UK citizens"}]->(parent);

