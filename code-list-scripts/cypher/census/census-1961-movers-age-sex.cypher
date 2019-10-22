CREATE (node:`_code_list`:`_code_list_census-1961-movers-age-sex` { label:'moversagesex', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-movers-age-sex`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-movers-age-sex`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-movers-age-sex` { value:'0-14' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers-age-sex`),(node:`_code`:`_code_census-1961-movers-age-sex` { value:'0-14' }) MERGE (node)-[:usedBy { label:"0-14"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-movers-age-sex` { value:'all' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers-age-sex`),(node:`_code`:`_code_census-1961-movers-age-sex` { value:'all' }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-movers-age-sex` { value:'other-female' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers-age-sex`),(node:`_code`:`_code_census-1961-movers-age-sex` { value:'other-female' }) MERGE (node)-[:usedBy { label:"Other Female"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-movers-age-sex` { value:'other-male' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers-age-sex`),(node:`_code`:`_code_census-1961-movers-age-sex` { value:'other-male' }) MERGE (node)-[:usedBy { label:"Other Male"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-movers-age-sex` { value:'single-female' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers-age-sex`),(node:`_code`:`_code_census-1961-movers-age-sex` { value:'single-female' }) MERGE (node)-[:usedBy { label:"Single Female"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-movers-age-sex` { value:'single-male' });
MATCH (parent:`_code_list`:`_code_list_census-1961-movers-age-sex`),(node:`_code`:`_code_census-1961-movers-age-sex` { value:'single-male' }) MERGE (node)-[:usedBy { label:"Single Male"}]->(parent);

