CREATE CONSTRAINT ON (n:`_code_trade-commodity`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_trade-commodity` { label:'commodity', edition:'one-off' });

MERGE (node:`_code`:`_code_trade-commodity` { value:'0' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'0' }) MERGE (node)-[:usedBy { label:"Food & live animals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'00' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'00' }) MERGE (node)-[:usedBy { label:"Live animals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'01' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'01' }) MERGE (node)-[:usedBy { label:"Meat & meat preparations"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'02' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'02' }) MERGE (node)-[:usedBy { label:"Dairy products & eggs"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'03' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'03' }) MERGE (node)-[:usedBy { label:"Fish & shellfish"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'04' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'04' }) MERGE (node)-[:usedBy { label:"Cereals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'05' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'05' }) MERGE (node)-[:usedBy { label:"Vegetables & fruit"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'06' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'06' }) MERGE (node)-[:usedBy { label:"Sugar"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'07' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'07' }) MERGE (node)-[:usedBy { label:"Coffee, tea, cocoa etc"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'08' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'08' }) MERGE (node)-[:usedBy { label:"Animal feeding stuffs"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'09' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'09' }) MERGE (node)-[:usedBy { label:"Miscellaneous foods"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'1' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'1' }) MERGE (node)-[:usedBy { label:"Beverages & tobacco"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'11' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'11' }) MERGE (node)-[:usedBy { label:"Beverages"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'12' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'12' }) MERGE (node)-[:usedBy { label:"Tobacco"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'2' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'2' }) MERGE (node)-[:usedBy { label:"Crude materials"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'21' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'21' }) MERGE (node)-[:usedBy { label:"Hides, skins & furskins"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'22' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'22' }) MERGE (node)-[:usedBy { label:"Oil-seeds & oleaginous fruits"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'23' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'23' }) MERGE (node)-[:usedBy { label:"Crude rubber"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'24' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'24' }) MERGE (node)-[:usedBy { label:"Wood & cork"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'25' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'25' }) MERGE (node)-[:usedBy { label:"Pulp & waste paper"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'26' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'26' }) MERGE (node)-[:usedBy { label:"Textile fibres"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'27' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'27' }) MERGE (node)-[:usedBy { label:"Crude minerals & fertilisers"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'28' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'28' }) MERGE (node)-[:usedBy { label:"Metal ores & scrap"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'29' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'29' }) MERGE (node)-[:usedBy { label:"Other crude animal & vegetable m"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'3' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'3' }) MERGE (node)-[:usedBy { label:"Fuels"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'32' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'32' }) MERGE (node)-[:usedBy { label:"Coal, coke & briquettes"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'33' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'33' }) MERGE (node)-[:usedBy { label:"Oil"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'33O' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'33O' }) MERGE (node)-[:usedBy { label:"Crude oil"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'33R' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'33R' }) MERGE (node)-[:usedBy { label:"Refined oil"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'34' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'34' }) MERGE (node)-[:usedBy { label:"Gas"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'35' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'35' }) MERGE (node)-[:usedBy { label:"Electricity"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'3OF' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'3OF' }) MERGE (node)-[:usedBy { label:"Fuels other than oil"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'4' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'4' }) MERGE (node)-[:usedBy { label:"Animal & vegetable oils & fats"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'41' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'41' }) MERGE (node)-[:usedBy { label:"Animal oils & fats"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'42' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'42' }) MERGE (node)-[:usedBy { label:"Vegetable oils & fats"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'43' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'43' }) MERGE (node)-[:usedBy { label:"Processed oils & fatss"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'5' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'5' }) MERGE (node)-[:usedBy { label:"Chemicals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'51' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'51' }) MERGE (node)-[:usedBy { label:"Organic chemicals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'52' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'52' }) MERGE (node)-[:usedBy { label:"Inorganic chemicals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'53' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'53' }) MERGE (node)-[:usedBy { label:"Dyeing, tanning & colouring mate"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'54' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'54' }) MERGE (node)-[:usedBy { label:"Medicinal & pharmaceutical produ"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'55' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'55' }) MERGE (node)-[:usedBy { label:"Toilet & cleansing preparations"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'56' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'56' }) MERGE (node)-[:usedBy { label:"Processed fertilisers"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'57' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'57' }) MERGE (node)-[:usedBy { label:"Plastics in primary forms"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'58' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'58' }) MERGE (node)-[:usedBy { label:"Plastics in non-primary forms"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'59' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'59' }) MERGE (node)-[:usedBy { label:"Other chemicals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'6' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'6' }) MERGE (node)-[:usedBy { label:"Material manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'61' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'61' }) MERGE (node)-[:usedBy { label:"Leather manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'62' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'62' }) MERGE (node)-[:usedBy { label:"Rubber manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'63' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'63' }) MERGE (node)-[:usedBy { label:"Wood & cork manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'64' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'64' }) MERGE (node)-[:usedBy { label:"Paper & paperboard"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'65' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'65' }) MERGE (node)-[:usedBy { label:"Textile fabrics"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'66' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'66' }) MERGE (node)-[:usedBy { label:"Mineral manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'67' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'67' }) MERGE (node)-[:usedBy { label:"Iron & steel"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'68' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'68' }) MERGE (node)-[:usedBy { label:"Non-ferrous metals"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'69' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'69' }) MERGE (node)-[:usedBy { label:"Miscellaneous metal manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7' }) MERGE (node)-[:usedBy { label:"Machinery & transport equipment"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'71EI' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'71EI' }) MERGE (node)-[:usedBy { label:"Electric motors (intermediate)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'71EK' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'71EK' }) MERGE (node)-[:usedBy { label:"Electric motors (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'71MC' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'71MC' }) MERGE (node)-[:usedBy { label:"Mechanical power generators (con"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'71MI' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'71MI' }) MERGE (node)-[:usedBy { label:"Mechanical power generators (int"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'71MK' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'71MK' }) MERGE (node)-[:usedBy { label:"Mechanical power generators (cap"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'72C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'72C' }) MERGE (node)-[:usedBy { label:"Specialised machinery (consumer)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'72I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'72I' }) MERGE (node)-[:usedBy { label:"Specialised machinery (intermedi"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'72K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'72K' }) MERGE (node)-[:usedBy { label:"Specialised machinery (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'73I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'73I' }) MERGE (node)-[:usedBy { label:"Metal working machinery (interme"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'73K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'73K' }) MERGE (node)-[:usedBy { label:"Metal working machinery (capital"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'74C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'74C' }) MERGE (node)-[:usedBy { label:"General industrial machinery (co"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'74I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'74I' }) MERGE (node)-[:usedBy { label:"General industrial machinery (in"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'74K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'74K' }) MERGE (node)-[:usedBy { label:"General industrial machinery (ca"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'75C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'75C' }) MERGE (node)-[:usedBy { label:"Office machinery (consumer)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'75I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'75I' }) MERGE (node)-[:usedBy { label:"Office machinery (intermediate)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'75K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'75K' }) MERGE (node)-[:usedBy { label:"Office machinery (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'76C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'76C' }) MERGE (node)-[:usedBy { label:"Telecoms & sound equipment (cons"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'76I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'76I' }) MERGE (node)-[:usedBy { label:"Telecoms & sound equipment (inte"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'76K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'76K' }) MERGE (node)-[:usedBy { label:"Telecoms & sound equipment (capi"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'77C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'77C' }) MERGE (node)-[:usedBy { label:"Miscellaneous electrical goods ("}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'77I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'77I' }) MERGE (node)-[:usedBy { label:"Miscellaneous electrical goods ("}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'77K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'77K' }) MERGE (node)-[:usedBy { label:"Miscellaneous electrical goods ("}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'78' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'78' }) MERGE (node)-[:usedBy { label:"Road vehicles"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'78C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'78C' }) MERGE (node)-[:usedBy { label:"Road vehicles other than cars (c"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'78I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'78I' }) MERGE (node)-[:usedBy { label:"Road vehicles other than cars (i"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'78K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'78K' }) MERGE (node)-[:usedBy { label:"Road vehicles other than cars (c"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'78M' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'78M' }) MERGE (node)-[:usedBy { label:"Cars"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'79' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'79' }) MERGE (node)-[:usedBy { label:"Other transport equipment"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'791I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'791I' }) MERGE (node)-[:usedBy { label:"Road vehicles other than cars (i"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'791K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'791K' }) MERGE (node)-[:usedBy { label:"Railway equipment (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'792' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'792' }) MERGE (node)-[:usedBy { label:"Aircraft"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'792-3' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'792-3' }) MERGE (node)-[:usedBy { label:"Ships & aircraft"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'793' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'793' }) MERGE (node)-[:usedBy { label:"Ships"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7E' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7E' }) MERGE (node)-[:usedBy { label:"Electrical machinery"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7EC' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7EC' }) MERGE (node)-[:usedBy { label:"Electrical machinery (consumer)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7EI' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7EI' }) MERGE (node)-[:usedBy { label:"Electrical machinery (intermedia"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7EK' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7EK' }) MERGE (node)-[:usedBy { label:"Electrical machinery (intermedia"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7M' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7M' }) MERGE (node)-[:usedBy { label:"Mechanical machinery"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7MC' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7MC' }) MERGE (node)-[:usedBy { label:"Mechanical machinery (consumer)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7MI' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7MI' }) MERGE (node)-[:usedBy { label:"Mechanical machinery (intermedia"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'7MK' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'7MK' }) MERGE (node)-[:usedBy { label:"Mechanical machinery (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'8' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'8' }) MERGE (node)-[:usedBy { label:"Miscellaneous manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'81C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'81C' }) MERGE (node)-[:usedBy { label:"Plumbing, heating & lighting fix"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'81I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'81I' }) MERGE (node)-[:usedBy { label:"Plumbing, heating & lighting fix"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'81K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'81K' }) MERGE (node)-[:usedBy { label:"Plumbing, heating & lighting fix"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'82C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'82C' }) MERGE (node)-[:usedBy { label:"Furniture (consumer)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'82I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'82I' }) MERGE (node)-[:usedBy { label:"Furniture (intermediate)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'82K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'82K' }) MERGE (node)-[:usedBy { label:"Furniture (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'83' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'83' }) MERGE (node)-[:usedBy { label:"Travel goods, handbags etc"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'84' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'84' }) MERGE (node)-[:usedBy { label:"Clothing"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'85' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'85' }) MERGE (node)-[:usedBy { label:"Footwear"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'87C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'87C' }) MERGE (node)-[:usedBy { label:"Scientific instruments (consumer"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'87I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'87I' }) MERGE (node)-[:usedBy { label:"Scientific instruments (intermed"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'87K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'87K' }) MERGE (node)-[:usedBy { label:"Scientific instruments (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'88C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'88C' }) MERGE (node)-[:usedBy { label:"Photographic & optical goods & c"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'88I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'88I' }) MERGE (node)-[:usedBy { label:"Photographic & optical goods & c"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'88K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'88K' }) MERGE (node)-[:usedBy { label:"Photographic & optical goods & c"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'896' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'896' }) MERGE (node)-[:usedBy { label:"Works of art"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'897C' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'897C' }) MERGE (node)-[:usedBy { label:"Jewellery"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'89I' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'89I' }) MERGE (node)-[:usedBy { label:"Other manufactures (intermediate"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'89K' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'89K' }) MERGE (node)-[:usedBy { label:"Other manufactures (capital)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'89OC' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'89OC' }) MERGE (node)-[:usedBy { label:"Other manufactures (consumer)"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'8O' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'8O' }) MERGE (node)-[:usedBy { label:"Other manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'8OC' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'8OC' }) MERGE (node)-[:usedBy { label:"Other miscellaneous manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'8OI' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'8OI' }) MERGE (node)-[:usedBy { label:"Other miscellaneous manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'8OK' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'8OK' }) MERGE (node)-[:usedBy { label:"Other miscellaneous manufactures"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'9' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'9' }) MERGE (node)-[:usedBy { label:"Unspecified goods"}]->(parent);

MERGE (node:`_code`:`_code_trade-commodity` { value:'T' });

MATCH (parent:`_code_list`:`_code_list_trade-commodity`),(node:`_code`:`_code_trade-commodity` { value:'T' }) MERGE (node)-[:usedBy { label:"Total"}]->(parent);
