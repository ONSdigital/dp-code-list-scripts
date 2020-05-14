CREATE (node:`_code_list`:`_code_list_census-1961-tenure` { label:'tenure', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-tenure`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-tenure`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-tenure` { value:'holding-by-employment' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure`),(node:`_code`:`_code_census-1961-tenure` { value:'holding-by-employment' }) MERGE (node)-[:usedBy { label:"Holding by employment"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-tenure` { value:'owner-occupier' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure`),(node:`_code`:`_code_census-1961-tenure` { value:'owner-occupier' }) MERGE (node)-[:usedBy { label:"Owner-occupier"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-tenure` { value:'renting-from-council' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure`),(node:`_code`:`_code_census-1961-tenure` { value:'renting-from-council' }) MERGE (node)-[:usedBy { label:"Renting from council"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-tenure` { value:'renting-furnished' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure`),(node:`_code`:`_code_census-1961-tenure` { value:'renting-furnished' }) MERGE (node)-[:usedBy { label:"Renting furnished"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-tenure` { value:'renting-unfurnished' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure`),(node:`_code`:`_code_census-1961-tenure` { value:'renting-unfurnished' }) MERGE (node)-[:usedBy { label:"Renting unfurnished"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-tenure` { value:'renting-with-business' });
MATCH (parent:`_code_list`:`_code_list_census-1961-tenure`),(node:`_code`:`_code_census-1961-tenure` { value:'renting-with-business' }) MERGE (node)-[:usedBy { label:"Renting with business"}]->(parent);

