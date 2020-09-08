CREATE CONSTRAINT ON (n:`_code_recorded-deaths`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_recorded-deaths`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_recorded-deaths` { label:"Deaths", edition:"one-off" });
MERGE (node:`_code`:`_code_recorded-deaths` { value:"total-registered-deaths" });
MATCH (parent:`_code_list`:`_code_list_recorded-deaths`),(node:`_code`:`_code_recorded-deaths` { value:"total-registered-deaths" }) MERGE (node)-[:usedBy { label:"Total registered deaths"}]->(parent);
MERGE (node:`_code`:`_code_recorded-deaths` { value:"deaths-involving-covid-19-registrations" });
MATCH (parent:`_code_list`:`_code_list_recorded-deaths`),(node:`_code`:`_code_recorded-deaths` { value:"deaths-involving-covid-19-registrations" }) MERGE (node)-[:usedBy { label:"Deaths involving COVID-19: registrations"}]->(parent);
MERGE (node:`_code`:`_code_recorded-deaths` { value:"deaths-involving-covid-19-occurrences" });
MATCH (parent:`_code_list`:`_code_list_recorded-deaths`),(node:`_code`:`_code_recorded-deaths` { value:"deaths-involving-covid-19-occurrences" }) MERGE (node)-[:usedBy { label:"Deaths involving COVID-19: occurrences"}]->(parent);
