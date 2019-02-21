CREATE CONSTRAINT ON (n:`_code_migration-direction`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_migration-direction`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_migration-direction` { label:'migrationdirection', edition:'one-off' });
MERGE (node:`_code`:`_code_migration-direction` { value:"inflow" });
MATCH (parent:`_code_list`:`_code_list_migration-direction`),(node:`_code`:`_code_migration-direction` { value:"inflow" }) MERGE (node)-[:usedBy { label:"Inflow"}]->(parent);
MERGE (node:`_code`:`_code_migration-direction` { value:"outflow" });
MATCH (parent:`_code_list`:`_code_list_migration-direction`),(node:`_code`:`_code_migration-direction` { value:"outflow" }) MERGE (node)-[:usedBy { label:"Outflow"}]->(parent);
MERGE (node:`_code`:`_code_migration-direction` { value:"net" });
MATCH (parent:`_code_list`:`_code_list_migration-direction`),(node:`_code`:`_code_migration-direction` { value:"net" }) MERGE (node)-[:usedBy { label:"Net"}]->(parent);
