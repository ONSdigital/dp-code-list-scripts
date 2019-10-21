CREATE (node:`_code_list`:`_code_list_census-1961-of-pensionable-age` { label:'ofpensionableage', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-of-pensionable-age`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-of-pensionable-age`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-of-pensionable-age` { value:'both-pensioners' });
MATCH (parent:`_code_list`:`_code_list_census-1961-of-pensionable-age`),(node:`_code`:`_code_census-1961-of-pensionable-age` { value:'both-pensioners' }) MERGE (node)-[:usedBy { label:"Both pensioners"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-of-pensionable-age` { value:'one-pensioner' });
MATCH (parent:`_code_list`:`_code_list_census-1961-of-pensionable-age`),(node:`_code`:`_code_census-1961-of-pensionable-age` { value:'one-pensioner' }) MERGE (node)-[:usedBy { label:"One pensioner"}]->(parent);

