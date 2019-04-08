CREATE CONSTRAINT ON (n:`_code_cancer-registrations`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_cancer-registrations`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_cancer-registrations` { label:"cancerregistrations", edition:"one-off" });
MERGE (node:`_code`:`_code_cancer-registrations` { value:"registrations-of-newly-diagnosed-cases" });
MATCH (parent:`_code_list`:`_code_list_cancer-registrations`),                (node:`_code`:`_code_cancer-registrations` { value:"registrations-of-newly-diagnosed-cases" })                 MERGE (node)-[:usedBy { label:"Registrations of newly diagnosed cases"}]->(parent);
MERGE (node:`_code`:`_code_cancer-registrations` { value:"rates-of-newly-diagnosed-cases" });
MATCH (parent:`_code_list`:`_code_list_cancer-registrations`),                (node:`_code`:`_code_cancer-registrations` { value:"rates-of-newly-diagnosed-cases" })                 MERGE (node)-[:usedBy { label:"Rates of newly diagnosed cases"}]->(parent);
MERGE (node:`_code`:`_code_cancer-registrations` { value:"registrations-of-death" });
MATCH (parent:`_code_list`:`_code_list_cancer-registrations`),                (node:`_code`:`_code_cancer-registrations` { value:"registrations-of-death" })                 MERGE (node)-[:usedBy { label:"Registrations of death"}]->(parent);
MERGE (node:`_code`:`_code_cancer-registrations` { value:"rates-of-death" });
MATCH (parent:`_code_list`:`_code_list_cancer-registrations`),                (node:`_code`:`_code_cancer-registrations` { value:"rates-of-death" })                 MERGE (node)-[:usedBy { label:"Rates of death"}]->(parent);
MERGE (node:`_code`:`_code_cancer-registrations` { value:"standardised-registration-ratios" });
MATCH (parent:`_code_list`:`_code_list_cancer-registrations`),                (node:`_code`:`_code_cancer-registrations` { value:"standardised-registration-ratios" })                 MERGE (node)-[:usedBy { label:"Standardised registration ratios"}]->(parent);
MERGE (node:`_code`:`_code_cancer-registrations` { value:"mortality-to-incidence-ratios" });
MATCH (parent:`_code_list`:`_code_list_cancer-registrations`),                (node:`_code`:`_code_cancer-registrations` { value:"mortality-to-incidence-ratios" })                 MERGE (node)-[:usedBy { label:"Mortality to incidence ratios"}]->(parent);

