CREATE CONSTRAINT ON (n:`_code_business-investment-instrument-asset`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_business-investment-instrument-asset` { label:'instrument-asset', edition:'one-off' });

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N111G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N111G' }) MERGE (node)-[:usedBy { label:"Dwellings (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N112G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N112G' }) MERGE (node)-[:usedBy { label:"Other buildings and structures (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N1131G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N1131G' }) MERGE (node)-[:usedBy { label:"Transport equipment (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N11321G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N11321G' }) MERGE (node)-[:usedBy { label:"Computer hardware (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N11322G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N11322G' }) MERGE (node)-[:usedBy { label:"Telecommunications equipment (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N1132G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N1132G' }) MERGE (node)-[:usedBy { label:"ICT equipment (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N115G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N115G' }) MERGE (node)-[:usedBy { label:"Cultivated biological resources (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N1171G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N1171G' }) MERGE (node)-[:usedBy { label:"Research and development (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N1173G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N1173G' }) MERGE (node)-[:usedBy { label:"Computer software and databases (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N117G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N117G' }) MERGE (node)-[:usedBy { label:"Intellectual property products (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N11G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N11G' }) MERGE (node)-[:usedBy { label:"Fixed assets by type of asset (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N11MG' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N11MG' }) MERGE (node)-[:usedBy { label:"Machinery and equipment and weapons systems (gross)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-instrument-asset` { value:'N11OG' });

MATCH (parent:`_code_list`:`_code_list_business-investment-instrument-asset`),(node:`_code`:`_code_business-investment-instrument-asset` { value:'N11OG' }) MERGE (node)-[:usedBy { label:"Other machinery and equipment and weapons systems (gross)"}]->(parent);
