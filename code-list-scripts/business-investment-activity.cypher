CREATE CONSTRAINT ON (n:`_code_business-investment-activity`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_business-investment-activity` { label:'activity', edition:'one-off' });

MERGE (node:`_code`:`_code_business-investment-activity` { value:'L' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'L' }) MERGE (node)-[:usedBy { label:"Real estate activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'_T' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'_T' }) MERGE (node)-[:usedBy { label:"Total - All activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'A' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'A' }) MERGE (node)-[:usedBy { label:"Agriculture, forestry and fishing"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'A01' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'A01' }) MERGE (node)-[:usedBy { label:"Crop and animal production, hunting and related service activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'A02' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'A02' }) MERGE (node)-[:usedBy { label:"Forestry and logging"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'A03' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'A03' }) MERGE (node)-[:usedBy { label:"Fishing and aquaculture"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'B' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'B' }) MERGE (node)-[:usedBy { label:"Mining and quarrying"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'BTE' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'BTE' }) MERGE (node)-[:usedBy { label:"Industry (except construction)"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C' }) MERGE (node)-[:usedBy { label:"Manufacturing"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C10T12' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C10T12' }) MERGE (node)-[:usedBy { label:"Manufacture of food products; beverages and tobacco products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C13T15' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C13T15' }) MERGE (node)-[:usedBy { label:"Manufacture of textiles, wearing apparel, leather and related products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C16' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C16' }) MERGE (node)-[:usedBy { label:"Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C16T18' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C16T18' }) MERGE (node)-[:usedBy { label:"Manufacture of wood, paper, and their products; printing and reproduction of recorded media"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C17' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C17' }) MERGE (node)-[:usedBy { label:"Manufacture of paper and paper products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C18' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C18' }) MERGE (node)-[:usedBy { label:"Printing and reproduction of recorded media"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C19' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C19' }) MERGE (node)-[:usedBy { label:"Manufacture of coke and refined petroleum products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C20' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C20' }) MERGE (node)-[:usedBy { label:"Manufacture of chemicals and chemical products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C21' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C21' }) MERGE (node)-[:usedBy { label:"Manufacture of basic pharmaceutical products and pharmaceutical preparations"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C22' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C22' }) MERGE (node)-[:usedBy { label:"Manufacture of rubber and plastic products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C22_23' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C22_23' }) MERGE (node)-[:usedBy { label:"Manufacture of rubber and plastic products and other non-metallic mineral products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C23' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C23' }) MERGE (node)-[:usedBy { label:"Manufacture of other non-metallic mineral products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C24' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C24' }) MERGE (node)-[:usedBy { label:"Manufacture of basic metals"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C24_25' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C24_25' }) MERGE (node)-[:usedBy { label:"Manufacture of basic metals and fabricated metal products, except machinery and equipment"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C25' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C25' }) MERGE (node)-[:usedBy { label:"Manufacture of fabricated metal products, except machinery and equipment"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C26' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C26' }) MERGE (node)-[:usedBy { label:"Manufacture of computer, electronic and optical products"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C27' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C27' }) MERGE (node)-[:usedBy { label:"Manufacture of electrical equipment"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C28' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C28' }) MERGE (node)-[:usedBy { label:"Manufacture of machinery and equipment n.e.c."}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C29' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C29' }) MERGE (node)-[:usedBy { label:"Manufacture of motor vehicles, trailers and semi-trailers"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C29_30' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C29_30' }) MERGE (node)-[:usedBy { label:"Manufacture of motor vehicles, trailers, semi-trailers and of other transport equipment"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C30' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C30' }) MERGE (node)-[:usedBy { label:"Manufacture of other transport equipment"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C31T33' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C31T33' }) MERGE (node)-[:usedBy { label:"Manufacture of furniture; jewellery, musical instruments, toys, etc.; repair and installation of machinery and equipment"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C31_32' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C31_32' }) MERGE (node)-[:usedBy { label:"Manufacture of furniture; other manufacturing"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'C33' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'C33' }) MERGE (node)-[:usedBy { label:"Repair and installation of machinery and equipment"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'D' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'D' }) MERGE (node)-[:usedBy { label:"Electricity, gas, steam and air conditioning supply"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'E' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'E' }) MERGE (node)-[:usedBy { label:"Water supply; sewerage, waste management and remediation activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'E36' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'E36' }) MERGE (node)-[:usedBy { label:"Water collection, treatment and supply"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'E37T39' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'E37T39' }) MERGE (node)-[:usedBy { label:"Sewerage, waste management, remediation activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'F' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'F' }) MERGE (node)-[:usedBy { label:"Construction"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'G' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'G' }) MERGE (node)-[:usedBy { label:"Wholesale and retail trade; repair of motor vehicles and motorcycles"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'G45' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'G45' }) MERGE (node)-[:usedBy { label:"Wholesale and retail trade and repair of motor vehicles and motorcycles"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'G46' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'G46' }) MERGE (node)-[:usedBy { label:"Wholesale trade, except of motor vehicles and motorcycles"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'G47' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'G47' }) MERGE (node)-[:usedBy { label:"Retail trade, except of motor vehicles and motorcycles"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'H' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'H' }) MERGE (node)-[:usedBy { label:"Transportation and storage"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'H49' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'H49' }) MERGE (node)-[:usedBy { label:"Land transport and transport via pipelines"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'H50' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'H50' }) MERGE (node)-[:usedBy { label:"Water transport"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'H51' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'H51' }) MERGE (node)-[:usedBy { label:"Air transport"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'H52' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'H52' }) MERGE (node)-[:usedBy { label:"Warehousing and support activities for transportation"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'H53' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'H53' }) MERGE (node)-[:usedBy { label:"Postal and courier activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'I' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'I' }) MERGE (node)-[:usedBy { label:"Accommodation and food service activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'J' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'J' }) MERGE (node)-[:usedBy { label:"Information and communication"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'J58' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'J58' }) MERGE (node)-[:usedBy { label:"Publishing activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'J58T60' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'J58T60' }) MERGE (node)-[:usedBy { label:"Publishing, motion picture, video, television programme production; sound recording, programming and broadcasting activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'J59_60' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'J59_60' }) MERGE (node)-[:usedBy { label:"Motion picture, video, television programme production; programming and broadcasting activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'J61' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'J61' }) MERGE (node)-[:usedBy { label:"Telecommunications"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'J62_63' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'J62_63' }) MERGE (node)-[:usedBy { label:"Computer programming, consultancy, and information service activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'K' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'K' }) MERGE (node)-[:usedBy { label:"Financial and insurance activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'K64' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'K64' }) MERGE (node)-[:usedBy { label:"Financial service activities, except insurance and pension funding"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'K65' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'K65' }) MERGE (node)-[:usedBy { label:"Insurance, reinsurance and pension funding, except compulsory social security"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'K66' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'K66' }) MERGE (node)-[:usedBy { label:"Activities auxiliary to financial services and insurance activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M' }) MERGE (node)-[:usedBy { label:"Professional, scientific and technical activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M69T71' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M69T71' }) MERGE (node)-[:usedBy { label:"Legal and accounting activities; activities of head offices; management consultancy activities; architectural and engineering activities; technical testing and analysis"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M69_70' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M69_70' }) MERGE (node)-[:usedBy { label:"Legal and accounting activities; activities of head offices; management consultancy activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M71' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M71' }) MERGE (node)-[:usedBy { label:"Architectural and engineering activities; technical testing and analysis"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M72' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M72' }) MERGE (node)-[:usedBy { label:"Scientific research and development"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M73' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M73' }) MERGE (node)-[:usedBy { label:"Advertising and market research"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M73T75' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M73T75' }) MERGE (node)-[:usedBy { label:"Advertising and market research; other professional, scientific and technical activities; veterinary activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M74_75' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M74_75' }) MERGE (node)-[:usedBy { label:"Other professional, scientific and technical activities; veterinary activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'M_N' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'M_N' }) MERGE (node)-[:usedBy { label:"Professional, scientific and technical activities; administrative and support service activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'N' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'N' }) MERGE (node)-[:usedBy { label:"Administrative and support service activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'N77' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'N77' }) MERGE (node)-[:usedBy { label:"Rental and leasing activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'N78' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'N78' }) MERGE (node)-[:usedBy { label:"Employment activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'N79' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'N79' }) MERGE (node)-[:usedBy { label:"Travel agency, tour operator reservation service and related activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'N80T82' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'N80T82' }) MERGE (node)-[:usedBy { label:"Security and investigation, service and landscape, office administrative and support activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'O' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'O' }) MERGE (node)-[:usedBy { label:"Public administration and defence; compulsory social security"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'OTQ' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'OTQ' }) MERGE (node)-[:usedBy { label:"Public administration, defence, education, human health and social work activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'P' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'P' }) MERGE (node)-[:usedBy { label:"Education"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'Q' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'Q' }) MERGE (node)-[:usedBy { label:"Human health and social work activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'Q86' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'Q86' }) MERGE (node)-[:usedBy { label:"Human health activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'Q87_88' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'Q87_88' }) MERGE (node)-[:usedBy { label:"Residential care activities and social work activities without accommodation"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'R' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'R' }) MERGE (node)-[:usedBy { label:"Arts, entertainment and recreation"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'R90T92' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'R90T92' }) MERGE (node)-[:usedBy { label:"Creative, arts and entertainment activities; libraries, archives, museums and other cultural activities; gambling and betting activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'R93' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'R93' }) MERGE (node)-[:usedBy { label:"Sports activities and amusement and recreation activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'RTU' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'RTU' }) MERGE (node)-[:usedBy { label:"Arts, entertainment and recreation; other service activities; activities of household and extra-territorial organizations and bodies"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'S' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'S' }) MERGE (node)-[:usedBy { label:"Other service activities"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'S94' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'S94' }) MERGE (node)-[:usedBy { label:"Activities of membership organisations"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'S95' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'S95' }) MERGE (node)-[:usedBy { label:"Repair of computers and personal and household goods"}]->(parent);

MERGE (node:`_code`:`_code_business-investment-activity` { value:'S96' });

MATCH (parent:`_code_list`:`_code_list_business-investment-activity`),(node:`_code`:`_code_business-investment-activity` { value:'S96' }) MERGE (node)-[:usedBy { label:"Other personal service activities"}]->(parent);
