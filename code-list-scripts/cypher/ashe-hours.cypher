CREATE (node:`_code_list`:`_code_list_ashe-hours` { label:'hours', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_ashe-hours`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_ashe-hours`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_ashe-hours` { value:'paid-hours-worked-total' });
MATCH (parent:`_code_list`:`_code_list_ashe-hours`),(node:`_code`:`_code_ashe-hours` { value:'paid-hours-worked-total' }) MERGE (node)-[:usedBy { label:"Paid hours worked - Total"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours` { value:'paid-hours-worked-basic' });
MATCH (parent:`_code_list`:`_code_list_ashe-hours`),(node:`_code`:`_code_ashe-hours` { value:'paid-hours-worked-basic' }) MERGE (node)-[:usedBy { label:"Paid hours worked - Basic"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours` { value:'paid-hours-worked-overtime' });
MATCH (parent:`_code_list`:`_code_list_ashe-hours`),(node:`_code`:`_code_ashe-hours` { value:'paid-hours-worked-overtime' }) MERGE (node)-[:usedBy { label:"Paid hours worked - Overtime"}]->(parent);
