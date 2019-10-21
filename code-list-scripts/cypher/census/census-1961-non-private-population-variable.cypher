CREATE (node:`_code_list`:`_code_list_census-1961-non-private-population-variable` { label:'nonprivatepopulationvariable', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-non-private-population-variable`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-non-private-population-variable`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-non-private-population-variable` { value:'all-inmates' });
MATCH (parent:`_code_list`:`_code_list_census-1961-non-private-population-variable`),(node:`_code`:`_code_census-1961-non-private-population-variable` { value:'all-inmates' }) MERGE (node)-[:usedBy { label:"All inmates"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-non-private-population-variable` { value:'all-persons' });
MATCH (parent:`_code_list`:`_code_list_census-1961-non-private-population-variable`),(node:`_code`:`_code_census-1961-non-private-population-variable` { value:'all-persons' }) MERGE (node)-[:usedBy { label:"All persons"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-non-private-population-variable` { value:'establishments' });
MATCH (parent:`_code_list`:`_code_list_census-1961-non-private-population-variable`),(node:`_code`:`_code_census-1961-non-private-population-variable` { value:'establishments' }) MERGE (node)-[:usedBy { label:"Establishments"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-non-private-population-variable` { value:'female' });
MATCH (parent:`_code_list`:`_code_list_census-1961-non-private-population-variable`),(node:`_code`:`_code_census-1961-non-private-population-variable` { value:'female' }) MERGE (node)-[:usedBy { label:"Female"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-non-private-population-variable` { value:'female-inmates' });
MATCH (parent:`_code_list`:`_code_list_census-1961-non-private-population-variable`),(node:`_code`:`_code_census-1961-non-private-population-variable` { value:'female-inmates' }) MERGE (node)-[:usedBy { label:"Female inmates"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-non-private-population-variable` { value:'male' });
MATCH (parent:`_code_list`:`_code_list_census-1961-non-private-population-variable`),(node:`_code`:`_code_census-1961-non-private-population-variable` { value:'male' }) MERGE (node)-[:usedBy { label:"Male"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-non-private-population-variable` { value:'male-inmates' });
MATCH (parent:`_code_list`:`_code_list_census-1961-non-private-population-variable`),(node:`_code`:`_code_census-1961-non-private-population-variable` { value:'male-inmates' }) MERGE (node)-[:usedBy { label:"Male inmates"}]->(parent);

