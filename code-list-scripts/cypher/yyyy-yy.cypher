CREATE CONSTRAINT ON (n:`_code_yyyy-yy`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_yyyy-yy` { label:'time', edition:'one-off' });
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2008-09" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2008-09" }) MERGE (node)-[:usedBy { label:"2008-09"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2009-10" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2009-10" }) MERGE (node)-[:usedBy { label:"2009-10"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2010-11" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2010-11" }) MERGE (node)-[:usedBy { label:"2010-11"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2011-12" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2011-12" }) MERGE (node)-[:usedBy { label:"2011-12"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2012-13" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2012-13" }) MERGE (node)-[:usedBy { label:"2012-13"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2013-14" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2013-14" }) MERGE (node)-[:usedBy { label:"2013-14"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2014-15" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2014-15" }) MERGE (node)-[:usedBy { label:"2014-15"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2015-16" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2015-16" }) MERGE (node)-[:usedBy { label:"2015-16"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2016-17" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2016-17" }) MERGE (node)-[:usedBy { label:"2016-17"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2017-18" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2017-18" }) MERGE (node)-[:usedBy { label:"2017-18"}]->(parent);
MERGE (node:`_code`:`_code_yyyy-yy` { value:"2018-19" });
MATCH (parent:`_code_list`:`_code_list_yyyy-yy`),(node:`_code`:`_code_yyyy-yy` { value:"2018-19" }) MERGE (node)-[:usedBy { label:"2018-19"}]->(parent);