CREATE CONSTRAINT ON (n:`_code_index-and-year-change`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_index-and-year-change`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_index-and-year-change` { label:'Index And Year Change', edition:'one-off' });
MERGE (node:`_code`:`_code_index-and-year-change` { value:"year-on-year-change" });
MATCH (parent:`_code_list`:`_code_list_index-and-year-change`),(node:`_code`:`_code_index-and-year-change` { value:"year-on-year-change" }) MERGE (node)-[:usedBy { label:"Year-on-year change"}]->(parent);
MERGE (node:`_code`:`_code_index-and-year-change` { value:"index" });
MATCH (parent:`_code_list`:`_code_list_index-and-year-change`),(node:`_code`:`_code_index-and-year-change` { value:"index" }) MERGE (node)-[:usedBy { label:"Index"}]->(parent);
