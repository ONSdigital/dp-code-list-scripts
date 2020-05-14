CREATE (node:`_code_list`:`_code_list_census-1961-terminal-education-age` { label:'terminaleducationage', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-terminal-education-age`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-terminal-education-age`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-terminal-education-age` { value:'16-19' });
MATCH (parent:`_code_list`:`_code_list_census-1961-terminal-education-age`),(node:`_code`:`_code_census-1961-terminal-education-age` { value:'16-19' }) MERGE (node)-[:usedBy { label:"16-19"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-terminal-education-age` { value:'20+' });
MATCH (parent:`_code_list`:`_code_list_census-1961-terminal-education-age`),(node:`_code`:`_code_census-1961-terminal-education-age` { value:'20+' }) MERGE (node)-[:usedBy { label:"20+"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-terminal-education-age` { value:'not-stated' });
MATCH (parent:`_code_list`:`_code_list_census-1961-terminal-education-age`),(node:`_code`:`_code_census-1961-terminal-education-age` { value:'not-stated' }) MERGE (node)-[:usedBy { label:"Not stated"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-terminal-education-age` { value:'students' });
MATCH (parent:`_code_list`:`_code_list_census-1961-terminal-education-age`),(node:`_code`:`_code_census-1961-terminal-education-age` { value:'students' }) MERGE (node)-[:usedBy { label:"Students"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-terminal-education-age` { value:'under-16' });
MATCH (parent:`_code_list`:`_code_list_census-1961-terminal-education-age`),(node:`_code`:`_code_census-1961-terminal-education-age` { value:'under-16' }) MERGE (node)-[:usedBy { label:"Under 16"}]->(parent);

