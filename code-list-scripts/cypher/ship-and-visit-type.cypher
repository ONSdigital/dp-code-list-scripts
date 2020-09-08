CREATE CONSTRAINT ON (n:`_code_ship-and-visit-type`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_ship-and-visit-type`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_ship-and-visit-type` { label:"Ship And Visit Type", edition:"one-off" });
MERGE (node:`_code`:`_code_ship-and-visit-type` { value:"all-visits" });
MATCH (parent:`_code_list`:`_code_list_ship-and-visit-type`),(node:`_code`:`_code_ship-and-visit-type` { value:"all-visits" }) MERGE (node)-[:usedBy { label:"All visits"}]->(parent);
MERGE (node:`_code`:`_code_ship-and-visit-type` { value:"all-unique-ship-visits" });
MATCH (parent:`_code_list`:`_code_list_ship-and-visit-type`),(node:`_code`:`_code_ship-and-visit-type` { value:"all-unique-ship-visits" }) MERGE (node)-[:usedBy { label:"All unique ship visits"}]->(parent);
MERGE (node:`_code`:`_code_ship-and-visit-type` { value:"cargo-and-tanker-visits" });
MATCH (parent:`_code_list`:`_code_list_ship-and-visit-type`),(node:`_code`:`_code_ship-and-visit-type` { value:"cargo-and-tanker-visits" }) MERGE (node)-[:usedBy { label:"Cargo and tanker visits"}]->(parent);
MERGE (node:`_code`:`_code_ship-and-visit-type` { value:"cargo-and-tanker-unique-ship-visits" });
MATCH (parent:`_code_list`:`_code_list_ship-and-visit-type`),(node:`_code`:`_code_ship-and-visit-type` { value:"cargo-and-tanker-unique-ship-visits" }) MERGE (node)-[:usedBy { label:"Cargo and tanker unique ship visits"}]->(parent);
MERGE (node:`_code`:`_code_ship-and-visit-type` { value:"passenger-ship-visits" });
MATCH (parent:`_code_list`:`_code_list_ship-and-visit-type`),(node:`_code`:`_code_ship-and-visit-type` { value:"passenger-ship-visits" }) MERGE (node)-[:usedBy { label:"Passenger ship visits"}]->(parent);

