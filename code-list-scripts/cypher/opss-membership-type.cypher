CREATE (node:`_code_list`:`_code_list_opss-membership-type` { label:'membershiptype', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_opss-membership-type`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_opss-membership-type`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_opss-membership-type` { value:'pensions-in-payment' });
MATCH (parent:`_code_list`:`_code_list_opss-membership-type`),(node:`_code`:`_code_opss-membership-type` { value:'pensions-in-payment' }) MERGE (node)-[:usedBy { label:"Pensions in payment"}]->(parent);
MERGE (node:`_code`:`_code_opss-membership-type` { value:'all-members' });
MATCH (parent:`_code_list`:`_code_list_opss-membership-type`),(node:`_code`:`_code_opss-membership-type` { value:'all-members' }) MERGE (node)-[:usedBy { label:"All members"}]->(parent);
MERGE (node:`_code`:`_code_opss-membership-type` { value:'preserved-pension-entitlements' });
MATCH (parent:`_code_list`:`_code_list_opss-membership-type`),(node:`_code`:`_code_opss-membership-type` { value:'preserved-pension-entitlements' }) MERGE (node)-[:usedBy { label:"Preserved pension entitlements"}]->(parent);
MERGE (node:`_code`:`_code_opss-membership-type` { value:'actives' });
MATCH (parent:`_code_list`:`_code_list_opss-membership-type`),(node:`_code`:`_code_opss-membership-type` { value:'actives' }) MERGE (node)-[:usedBy { label:"Actives"}]->(parent);
