CREATE CONSTRAINT ON (n:`_code_calendar-month`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_calendar-month`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_calendar-month` { label:'month', edition:'one-off' });
MERGE (node:`_code`:`_code_calendar-month` { value:"april" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"april" }) MERGE (node)-[:usedBy { label:"April"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"august" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"august" }) MERGE (node)-[:usedBy { label:"August"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"december" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"december" }) MERGE (node)-[:usedBy { label:"December"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"february" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"february" }) MERGE (node)-[:usedBy { label:"February"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"january" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"january" }) MERGE (node)-[:usedBy { label:"January"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"july" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"july" }) MERGE (node)-[:usedBy { label:"July"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"june" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"june" }) MERGE (node)-[:usedBy { label:"June"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"march" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"march" }) MERGE (node)-[:usedBy { label:"March"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"may" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"may" }) MERGE (node)-[:usedBy { label:"May"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"november" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"november" }) MERGE (node)-[:usedBy { label:"November"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"october" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"october" }) MERGE (node)-[:usedBy { label:"October"}]->(parent);
MERGE (node:`_code`:`_code_calendar-month` { value:"september" });
MATCH (parent:`_code_list`:`_code_list_calendar-month`),(node:`_code`:`_code_calendar-month` { value:"september" }) MERGE (node)-[:usedBy { label:"September"}]->(parent);