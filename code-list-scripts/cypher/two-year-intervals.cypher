CREATE CONSTRAINT ON (n:`_code_two-year-intervals`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_two-year-intervals`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_two-year-intervals` { label:'Time', edition:'one-off' });
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2001–03" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2001–03" }) MERGE (node)-[:usedBy { label:"2001–03"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2002-04" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2002-04" }) MERGE (node)-[:usedBy { label:"2002-04"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2003-05" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2003-05" }) MERGE (node)-[:usedBy { label:"2003-05"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2004-06" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2004-06" }) MERGE (node)-[:usedBy { label:"2004-06"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2005-07" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2005-07" }) MERGE (node)-[:usedBy { label:"2005-07"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2006-08" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2006-08" }) MERGE (node)-[:usedBy { label:"2006-08"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2007-09" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2007-09" }) MERGE (node)-[:usedBy { label:"2007-09"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2008-10" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2008-10" }) MERGE (node)-[:usedBy { label:"2008-10"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2009-11" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2009-11" }) MERGE (node)-[:usedBy { label:"2009-11"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2010-12" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2010-12" }) MERGE (node)-[:usedBy { label:"2010-12"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2011-13" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2011-13" }) MERGE (node)-[:usedBy { label:"2011-13"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2012-14" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2012-14" }) MERGE (node)-[:usedBy { label:"2012-14"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2013-15" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2013-15" }) MERGE (node)-[:usedBy { label:"2013-15"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2014-16" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2014-16" }) MERGE (node)-[:usedBy { label:"2014-16"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2015-17" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2015-17" }) MERGE (node)-[:usedBy { label:"2015-17"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2016-18" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2016-18" }) MERGE (node)-[:usedBy { label:"2016-18"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2017-19" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2017-19" }) MERGE (node)-[:usedBy { label:"2017-19"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2018-20" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2018-20" }) MERGE (node)-[:usedBy { label:"2018-20"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2019-21" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2019-21" }) MERGE (node)-[:usedBy { label:"2019-21"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2020-22" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2020-22" }) MERGE (node)-[:usedBy { label:"2020-22"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2021-23" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2021-23" }) MERGE (node)-[:usedBy { label:"2021-23"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2022-24" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2022-24" }) MERGE (node)-[:usedBy { label:"2022-24"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1990–92" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1990–92" }) MERGE (node)-[:usedBy { label:"1990–92"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1992–94" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1992–94" }) MERGE (node)-[:usedBy { label:"1992–94"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1994–96" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1994–96" }) MERGE (node)-[:usedBy { label:"1994–96"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1996–98" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1996–98" }) MERGE (node)-[:usedBy { label:"1996–98"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1991–93" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1991–93" }) MERGE (node)-[:usedBy { label:"1991–93"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1993–95" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1993–95" }) MERGE (node)-[:usedBy { label:"1993–95"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1995–97" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1995–97" }) MERGE (node)-[:usedBy { label:"1995–97"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1997–99" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1997–99" }) MERGE (node)-[:usedBy { label:"1997–99"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1998–00" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1998–00" }) MERGE (node)-[:usedBy { label:"1998–00"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"1999–01" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"1999–01" }) MERGE (node)-[:usedBy { label:"1999–01"}]->(parent);
MERGE (node:`_code`:`_code_two-year-intervals` { value:"2000-02" });
MATCH (parent:`_code_list`:`_code_list_two-year-intervals`),(node:`_code`:`_code_two-year-intervals` { value:"2000-02" }) MERGE (node)-[:usedBy { label:"2000-02"}]->(parent);

