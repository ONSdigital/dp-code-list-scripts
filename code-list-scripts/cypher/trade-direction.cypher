CREATE CONSTRAINT ON (n:`_code_trade-direction`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_trade-direction` { label:'Direction', edition:'one-off' });

MERGE (node:`_code`:`_code_trade-direction` { value:'IM' });

MATCH (parent:`_code_list`:`_code_list_trade-direction`),(node:`_code`:`_code_trade-direction` { value:'IM' }) MERGE (node)-[:usedBy { label:"Imports"}]->(parent);

MERGE (node:`_code`:`_code_trade-direction` { value:'EX' });

MATCH (parent:`_code_list`:`_code_list_trade-direction`),(node:`_code`:`_code_trade-direction` { value:'EX' }) MERGE (node)-[:usedBy { label:"Exports"}]->(parent);
