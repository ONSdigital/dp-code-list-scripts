CREATE (node:`_code_list`:`_code_list_mid-year-pop-sex` { label:'sex', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_mid-year-pop-sex`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_mid-year-pop-sex`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_mid-year-pop-sex` { value:'2' });
MATCH (parent:`_code_list`:`_code_list_mid-year-pop-sex`),(node:`_code`:`_code_mid-year-pop-sex` { value:'2' }) MERGE (node)-[:usedBy { label:"Female"}]->(parent);
MERGE (node:`_code`:`_code_mid-year-pop-sex` { value:'1' });
MATCH (parent:`_code_list`:`_code_list_mid-year-pop-sex`),(node:`_code`:`_code_mid-year-pop-sex` { value:'1' }) MERGE (node)-[:usedBy { label:"Male"}]->(parent);
MERGE (node:`_code`:`_code_mid-year-pop-sex` { value:'0' });
MATCH (parent:`_code_list`:`_code_list_mid-year-pop-sex`),(node:`_code`:`_code_mid-year-pop-sex` { value:'0' }) MERGE (node)-[:usedBy { label:"All"}]->(parent);
