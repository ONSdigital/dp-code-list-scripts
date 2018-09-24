CREATE (node:`_code_list`:`_code_list_wellbeing-measureofwellbeing` { label:'allmeasuresofwellbeing', edition:'one-off' });
CREATE CONSTRAINT ON (n:`_code_list_wellbeing-measureofwellbeing`) ASSERT n.edition IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_wellbeing-measureofwellbeing`) ASSERT n.value IS UNIQUE;

MERGE (node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'worthwhile' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-measureofwellbeing`),(node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'worthwhile' }) MERGE (node)-[:usedBy { label:"Worthwhile"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'life-satisfaction' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-measureofwellbeing`),(node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'life-satisfaction' }) MERGE (node)-[:usedBy { label:"Life Satisfaction"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'anxiety' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-measureofwellbeing`),(node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'anxiety' }) MERGE (node)-[:usedBy { label:"Anxiety"}]->(parent);
MERGE (node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'happiness' });
MATCH (parent:`_code_list`:`_code_list_wellbeing-measureofwellbeing`),(node:`_code`:`_code_wellbeing-measureofwellbeing` { value:'happiness' }) MERGE (node)-[:usedBy { label:"Happiness"}]->(parent);