CREATE CONSTRAINT ON (n:`_code_tax-benefit-type`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_tax-benefit-type`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_tax-benefit-type` { label:"Type Of Tax Or Benefit", edition:"one-off" });
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"original-income" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"original-income" }) MERGE (node)-[:usedBy { label:"Original income"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"cash-benefits" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"cash-benefits" }) MERGE (node)-[:usedBy { label:"Cash benefits"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"gross-income" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"gross-income" }) MERGE (node)-[:usedBy { label:"Gross income"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"direct-taxes" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"direct-taxes" }) MERGE (node)-[:usedBy { label:"Direct taxes"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"disposable-income" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"disposable-income" }) MERGE (node)-[:usedBy { label:"Disposable income"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"indirect-taxes" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"indirect-taxes" }) MERGE (node)-[:usedBy { label:"Indirect taxes"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"post-tax-income" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"post-tax-income" }) MERGE (node)-[:usedBy { label:"Post-tax income"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"benefits-in-kind" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"benefits-in-kind" }) MERGE (node)-[:usedBy { label:"Benefits-in-kind"}]->(parent);
MERGE (node:`_code`:`_code_tax-benefit-type` { value:"final-income" });
MATCH (parent:`_code_list`:`_code_list_tax-benefit-type`),(node:`_code`:`_code_tax-benefit-type` { value:"final-income" }) MERGE (node)-[:usedBy { label:"Final income"}]->(parent);
