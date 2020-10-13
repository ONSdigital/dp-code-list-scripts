CREATE CONSTRAINT ON (n:`_code_speak-welsh`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_speak-welsh`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_speak-welsh` { label:"speakwelsh", edition:"one-off" });
MERGE (node:`_code`:`_code_speak-welsh` { value:"all-categories-ability-of-dependent-child-in-a-family-to-speak-welsh" });
MATCH (parent:`_code_list`:`_code_list_speak-welsh`),(node:`_code`:`_code_speak-welsh` { value:"all-categories-ability-of-dependent-child-in-a-family-to-speak-welsh" }) MERGE (node)-[:usedBy { label:"All categories: Ability of dependent child in a family to speak Welsh"}]->(parent);
MERGE (node:`_code`:`_code_speak-welsh` { value:"dependent-child-can-speak-welsh" });
MATCH (parent:`_code_list`:`_code_list_speak-welsh`),(node:`_code`:`_code_speak-welsh` { value:"dependent-child-can-speak-welsh" }) MERGE (node)-[:usedBy { label:"Dependent child can speak Welsh"}]->(parent);
MERGE (node:`_code`:`_code_speak-welsh` { value:"dependent-child-cannot-speak-welsh" });
MATCH (parent:`_code_list`:`_code_list_speak-welsh`),(node:`_code`:`_code_speak-welsh` { value:"dependent-child-cannot-speak-welsh" }) MERGE (node)-[:usedBy { label:"Dependent child cannot speak Welsh"}]->(parent);
