CREATE CONSTRAINT ON (n:`_code_ashe-hours-and-earnings`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_ashe-hours-and-earnings`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_ashe-hours-and-earnings` { label:'hoursandearnings', edition:'one-off' });
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"paid-hours-worked-basic" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"paid-hours-worked-basic" }) MERGE (node)-[:usedBy { label:"Paid hours worked - Basic"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"paid-hours-worked-overtime" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"paid-hours-worked-overtime" }) MERGE (node)-[:usedBy { label:"Paid hours worked - Overtime"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"weekly-pay-gross" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"weekly-pay-gross" }) MERGE (node)-[:usedBy { label:"Weekly pay - Gross"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"weekly-pay-excluding-overtime" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"weekly-pay-excluding-overtime" }) MERGE (node)-[:usedBy { label:"Weekly pay - Excluding overtime"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"basic-pay-including-other-pay" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"basic-pay-including-other-pay" }) MERGE (node)-[:usedBy { label:"Basic pay - Including other pay"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"overtime-pay" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"overtime-pay" }) MERGE (node)-[:usedBy { label:"Overtime pay"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"hourly-pay-gross" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"hourly-pay-gross" }) MERGE (node)-[:usedBy { label:"Hourly pay - Gross"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"hourly-pay-excluding-overtime" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"hourly-pay-excluding-overtime" }) MERGE (node)-[:usedBy { label:"Hourly pay - Excluding overtime"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"annual-pay-gross" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"annual-pay-gross" }) MERGE (node)-[:usedBy { label:"Annual pay - Gross"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"annual-pay-incentive" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"annual-pay-incentive" }) MERGE (node)-[:usedBy { label:"Annual pay - Incentive"}]->(parent);
MERGE (node:`_code`:`_code_ashe-hours-and-earnings` { value:"paid-hours-worked-total" });
MATCH (parent:`_code_list`:`_code_list_ashe-hours-and-earnings`),(node:`_code`:`_code_ashe-hours-and-earnings` { value:"paid-hours-worked-total" }) MERGE (node)-[:usedBy { label:"Paid hours worked - Total"}]->(parent);