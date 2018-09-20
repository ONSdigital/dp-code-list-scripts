CREATE CONSTRAINT ON (n:`_code_geography`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_regions`:`_geography` { label:'Regions', edition:'2017', geography_list_ID:'rgn17' });

MERGE (node:`_code`:`_code_geography` { value:'E12000001' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000001' }) MERGE (node)-[:usedBy { label:"North East"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000002' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000002' }) MERGE (node)-[:usedBy { label:"North West"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000003' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000003' }) MERGE (node)-[:usedBy { label:"Yorkshire and The Humber"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000004' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000004' }) MERGE (node)-[:usedBy { label:"East Midlands"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000005' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000005' }) MERGE (node)-[:usedBy { label:"West Midlands"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000006' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000006' }) MERGE (node)-[:usedBy { label:"East of England"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000007' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000007' }) MERGE (node)-[:usedBy { label:"London"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000008' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000008' }) MERGE (node)-[:usedBy { label:"South East"}]->(parent);

MERGE (node:`_code`:`_code_geography` { value:'E12000009' });

MATCH (parent:`_code_list`:`_code_list_regions`:`_geography`{geography_list_ID:'rgn17'}),(node:`_code`:`_code_geography` { value:'E12000009' }) MERGE (node)-[:usedBy { label:"South West"}]->(parent);