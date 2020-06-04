CREATE CONSTRAINT ON (n:`_code_geography`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_enterprise-regions`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_enterprise-regions` { label:"geography", edition:"one-off" });
MERGE (node:`_code`:`_code_geography` { value:"E37000001" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000001" }) MERGE (node)-[:usedBy { label:"Black Country"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000003" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000003" }) MERGE (node)-[:usedBy { label:"Cheshire and Warrington"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000005" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000005" }) MERGE (node)-[:usedBy { label:"Cornwall and Isles of Scilly"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000006" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000006" }) MERGE (node)-[:usedBy { label:"Coventry and Warwickshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000007" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000007" }) MERGE (node)-[:usedBy { label:"Cumbria"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000009" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000009" }) MERGE (node)-[:usedBy { label:"Dorset"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000011" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000011" }) MERGE (node)-[:usedBy { label:"Gloucestershire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000012" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000012" }) MERGE (node)-[:usedBy { label:"Greater Birmingham and Solihull"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000014" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000014" }) MERGE (node)-[:usedBy { label:"Greater Lincolnshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000015" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000015" }) MERGE (node)-[:usedBy { label:"Greater Manchester"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000016" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000016" }) MERGE (node)-[:usedBy { label:"Heart of the South West"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000019" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000019" }) MERGE (node)-[:usedBy { label:"Lancashire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000021" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000021" }) MERGE (node)-[:usedBy { label:"Leicester and Leicestershire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000022" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000022" }) MERGE (node)-[:usedBy { label:"Liverpool City Region"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000025" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000025" }) MERGE (node)-[:usedBy { label:"North East"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000032" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000032" }) MERGE (node)-[:usedBy { label:"Stoke-on-Trent and Staffordshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000033" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000033" }) MERGE (node)-[:usedBy { label:"Swindon and Wiltshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000034" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000034" }) MERGE (node)-[:usedBy { label:"Tees Valley"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000035" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000035" }) MERGE (node)-[:usedBy { label:"Thames Valley Berkshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000036" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000036" }) MERGE (node)-[:usedBy { label:"The Marches"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000037" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000037" }) MERGE (node)-[:usedBy { label:"West of England"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000038" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000038" }) MERGE (node)-[:usedBy { label:"Worcestershire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000043" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000043" }) MERGE (node)-[:usedBy { label:"Buckinghamshire Thames Valley"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000044" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000044" }) MERGE (node)-[:usedBy { label:"Coast to Capital"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000045" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000045" }) MERGE (node)-[:usedBy { label:"Derby, Derbyshire, Nottingham and Nottinghamshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000046" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000046" }) MERGE (node)-[:usedBy { label:"Enterprise M3"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000047" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000047" }) MERGE (node)-[:usedBy { label:"Greater Cambridge and Greater Peterborough"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000048" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000048" }) MERGE (node)-[:usedBy { label:"Hertfordshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000049" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000049" }) MERGE (node)-[:usedBy { label:"Humber"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000050" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000050" }) MERGE (node)-[:usedBy { label:"Leeds City Region"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000051" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000051" }) MERGE (node)-[:usedBy { label:"London"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000052" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000052" }) MERGE (node)-[:usedBy { label:"New Anglia"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000053" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000053" }) MERGE (node)-[:usedBy { label:"Oxfordshire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000054" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000054" }) MERGE (node)-[:usedBy { label:"Sheffield City Region"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000055" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000055" }) MERGE (node)-[:usedBy { label:"Solent"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000056" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000056" }) MERGE (node)-[:usedBy { label:"South East"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000057" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000057" }) MERGE (node)-[:usedBy { label:"South East Midlands"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E37000058" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E37000058" }) MERGE (node)-[:usedBy { label:"York, North Yorkshire and East Riding"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"W19000001" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"W19000001" }) MERGE (node)-[:usedBy { label:"North Wales"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"W19000002" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"W19000002" }) MERGE (node)-[:usedBy { label:"Mid Wales"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"W19000003" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"W19000003" }) MERGE (node)-[:usedBy { label:"South West Wales"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"W19000004" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"W19000004" }) MERGE (node)-[:usedBy { label:"South East Wales"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S09000001" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"S09000001" }) MERGE (node)-[:usedBy { label:"Aberdeen City and Shire"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S09000002" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"S09000002" }) MERGE (node)-[:usedBy { label:"East of Scotland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S09000003" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"S09000003" }) MERGE (node)-[:usedBy { label:"Highlands and Islands"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S09000004" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"S09000004" }) MERGE (node)-[:usedBy { label:"South of Scotland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S09000005" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"S09000005" }) MERGE (node)-[:usedBy { label:"Tayside"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S09000006" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"S09000006" }) MERGE (node)-[:usedBy { label:"West of Scotland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"E92000001" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"E92000001" }) MERGE (node)-[:usedBy { label:"England"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"W92000004" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"W92000004" }) MERGE (node)-[:usedBy { label:"Wales"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"S92000003" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"S92000003" }) MERGE (node)-[:usedBy { label:"Scotland"}]->(parent);
MERGE (node:`_code`:`_code_geography` { value:"K03000001" });
MATCH (parent:`_code_list`:`_code_list_enterprise-regions`),(node:`_code`:`_code_geography` { value:"K03000001" }) MERGE (node)-[:usedBy { label:"Great Britain"}]->(parent);
