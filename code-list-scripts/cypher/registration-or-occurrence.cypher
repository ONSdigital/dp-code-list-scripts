CREATE CONSTRAINT ON (n:`_code_registration-or-occurrence`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_registration-or-occurrence`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_registration-or-occurrence` { label:"Registration Or Occurrence", edition:"one-off" });
MERGE (node:`_code`:`_code_registration-or-occurrence` { value:"registrations" });
MATCH (parent:`_code_list`:`_code_list_registration-or-occurrence`),(node:`_code`:`_code_registration-or-occurrence` { value:"registrations" }) MERGE (node)-[:usedBy { label:"Registrations"}]->(parent);
MERGE (node:`_code`:`_code_registration-or-occurrence` { value:"occurrences" });
MATCH (parent:`_code_list`:`_code_list_registration-or-occurrence`),(node:`_code`:`_code_registration-or-occurrence` { value:"occurrences" }) MERGE (node)-[:usedBy { label:"Occurrences"}]->(parent);
