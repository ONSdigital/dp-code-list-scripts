CREATE (node:`_code_list`:`_code_list_census-1961-movers` { label:'movers', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-movers`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-movers`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-movers` { value:'different-area' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers`),(node:`_code`:`_code_census-1961-movers` { value:'different-area' }) MERGE (node)-[:usedBy { label:"Different area"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-movers` { value:'same-area' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers`),(node:`_code`:`_code_census-1961-movers` { value:'same-area' }) MERGE (node)-[:usedBy { label:"Same area"}]->(parent);

