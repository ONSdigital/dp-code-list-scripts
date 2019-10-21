CREATE (node:`_code_list`:`_code_list_census-1961-birthplace-outside-uk` { label:'birthplace', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_census-1961-birthplace-outside-uk`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_census-1961-birthplace-outside-uk`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'british-caribbean-territories' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'british-caribbean-territories' }) MERGE (node)-[:usedBy { label:"British Caribbean Territories"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'british-east-africa-british-central-africa' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'british-east-africa-british-central-africa' }) MERGE (node)-[:usedBy { label:"British East Africa, British Central Africa"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'british-west-africa' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'british-west-africa' }) MERGE (node)-[:usedBy { label:"British West Africa"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'cyprus' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'cyprus' }) MERGE (node)-[:usedBy { label:"Cyprus"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'foreign-areas' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'foreign-areas' }) MERGE (node)-[:usedBy { label:"Foreign areas"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'india-pakistan-ceylon' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'india-pakistan-ceylon' }) MERGE (node)-[:usedBy { label:"India, Pakistan, Ceylon"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'ireland' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'ireland' }) MERGE (node)-[:usedBy { label:"Ireland"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'malta' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'malta' }) MERGE (node)-[:usedBy { label:"Malta"}]->(parent);
MERGE (node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'other-commonwealth-areas' });
MATCH (parent:`_code_list`:`_code_list_census-1961-birthplace-outside-uk`),(node:`_code`:`_code_census-1961-birthplace-outside-uk` { value:'other-commonwealth-areas' }) MERGE (node)-[:usedBy { label:"Other Commonwealth areas"}]->(parent);

