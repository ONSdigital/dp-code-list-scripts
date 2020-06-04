CREATE CONSTRAINT ON (n:`_code_type-of-prices`) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_type-of-prices`) ASSERT n.value IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_type-of-prices` { label:'prices', edition:'one-off' });
MERGE (node:`_code`:`_code_type-of-prices` { value:"cp" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"cp" }) MERGE (node)-[:usedBy { label:"Current prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"cvmpub" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"cvmpub" }) MERGE (node)-[:usedBy { label:"Chained Volume Measure for Publish"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"idef" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"idef" }) MERGE (node)-[:usedBy { label:"Implied deflator"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"cvm" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"cvm" }) MERGE (node)-[:usedBy { label:"Chained Volume Measure"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"chained-volume-measures-index" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"chained-volume-measures-index" }) MERGE (node)-[:usedBy { label:"Chained volume measures index"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"chained-volume-measures-in-2016-money-value" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"chained-volume-measures-in-2016-money-value" }) MERGE (node)-[:usedBy { label:"Chained volume measures in 2016 money value"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"current-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"current-prices" }) MERGE (node)-[:usedBy { label:"Current prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"implied-deflator" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"implied-deflator" }) MERGE (node)-[:usedBy { label:"Implied deflator"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"current-price-estimates" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"current-price-estimates" }) MERGE (node)-[:usedBy { label:"Current price estimates"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-value-added-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-value-added-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Gross value added at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-value-added-per-head-of-population-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-value-added-per-head-of-population-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Gross value added per head of population at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-value-added-per-head-indices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-value-added-per-head-indices" }) MERGE (node)-[:usedBy { label:"Gross value added per head indices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-value-added-annual-growth-rates" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-value-added-annual-growth-rates" }) MERGE (node)-[:usedBy { label:"Gross value added annual growth rates"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-value-added-per-head-annual-growth-rates" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-value-added-per-head-annual-growth-rates" }) MERGE (node)-[:usedBy { label:"Gross value added per head annual growth rates"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-value-added-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-value-added-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Gross value added by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"compensation-of-employees-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"compensation-of-employees-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Compensation of employees by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"mixed-income-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"mixed-income-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Mixed income by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"rental-income-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"rental-income-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Rental income by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"non-market-capital-consumption-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"non-market-capital-consumption-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Non-market capital consumption by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"holding-gains-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"holding-gains-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Holding gains by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-trading-profits-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-trading-profits-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Gross trading profits by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-trading-surplus-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-trading-surplus-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Gross trading surplus by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"taxes-on-production-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"taxes-on-production-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Taxes on production by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"subsidies-on-production-by-industry-at-current-basic-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"subsidies-on-production-by-industry-at-current-basic-prices" }) MERGE (node)-[:usedBy { label:"Subsidies on production by industry at current basic prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"statistical-discrepancy-between-income-components-and-balanced-gva-total" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"statistical-discrepancy-between-income-components-and-balanced-gva-total" }) MERGE (node)-[:usedBy { label:"Statistical discrepancy between income components and balanced GVA total"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"value-added-tax-on-products" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"value-added-tax-on-products" }) MERGE (node)-[:usedBy { label:"Value added tax on products"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"other-taxes-on-products" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"other-taxes-on-products" }) MERGE (node)-[:usedBy { label:"Other taxes on products"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"subsidies-on-products" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"subsidies-on-products" }) MERGE (node)-[:usedBy { label:"Subsidies on products"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-at-current-market-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-at-current-market-prices" }) MERGE (node)-[:usedBy { label:"Gross domestic product at current market prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-per-head-at-current-market-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-per-head-at-current-market-prices" }) MERGE (node)-[:usedBy { label:"Gross domestic product per head at current market prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"whole-economy-gva-implied-deflators" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"whole-economy-gva-implied-deflators" }) MERGE (node)-[:usedBy { label:"Whole economy GVA implied deflators"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-index" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-index" }) MERGE (node)-[:usedBy { label:"Gross domestic product chained volume measures index"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-in-2016-money-value" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-in-2016-money-value" }) MERGE (node)-[:usedBy { label:"Gross domestic product chained volume measures in 2016 money value"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-per-head" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-per-head" }) MERGE (node)-[:usedBy { label:"Gross domestic product chained volume measures per head"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-annual-growth-rates" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-annual-growth-rates" }) MERGE (node)-[:usedBy { label:"Gross domestic product chained volume measures annual growth rates"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-per-head-annual-growth-rates" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"gross-domestic-product-chained-volume-measures-per-head-annual-growth-rates" }) MERGE (node)-[:usedBy { label:"Gross domestic product chained volume measures per head annual growth rates"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"2017-prices" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"2017-prices" }) MERGE (node)-[:usedBy { label:"2017 prices"}]->(parent);
MERGE (node:`_code`:`_code_type-of-prices` { value:"kp" });
MATCH (parent:`_code_list`:`_code_list_type-of-prices`),(node:`_code`:`_code_type-of-prices` { value:"kp" }) MERGE (node)-[:usedBy { label:"Real terms"}]->(parent);
