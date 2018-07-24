CREATE CONSTRAINT ON (n:`_code_trade-country`) ASSERT n.value IS UNIQUE;

CREATE (node:`_code_list`:`_code_list_trade-country` { label:'country', edition:'one-off' });

MERGE (node:`_code`:`_code_trade-country` { value:'AD' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AD' }) MERGE (node)-[:usedBy { label:"Andorra"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AE' }) MERGE (node)-[:usedBy { label:"United Arab Emirates"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AF' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AF' }) MERGE (node)-[:usedBy { label:"Afghanistan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AG' }) MERGE (node)-[:usedBy { label:"Antigua & Barbuda"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AI' }) MERGE (node)-[:usedBy { label:"Anguilla"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AL' }) MERGE (node)-[:usedBy { label:"Albania"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AM' }) MERGE (node)-[:usedBy { label:"Armenia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AO' }) MERGE (node)-[:usedBy { label:"Angola"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AQ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AQ' }) MERGE (node)-[:usedBy { label:"Antarctica"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AR' }) MERGE (node)-[:usedBy { label:"Argentina"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AS' }) MERGE (node)-[:usedBy { label:"American Samoa"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AT' }) MERGE (node)-[:usedBy { label:"Austria"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AU' }) MERGE (node)-[:usedBy { label:"Australia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AW' }) MERGE (node)-[:usedBy { label:"Aruba"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'AZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'AZ' }) MERGE (node)-[:usedBy { label:"Azerbaijan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'B5' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'B5' }) MERGE (node)-[:usedBy { label:"Total EU(28)"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BA' }) MERGE (node)-[:usedBy { label:"Bosnia & Herzegovina"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BB' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BB' }) MERGE (node)-[:usedBy { label:"Barbados"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BD' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BD' }) MERGE (node)-[:usedBy { label:"Bangladesh"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BE' }) MERGE (node)-[:usedBy { label:"Belgium"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BF' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BF' }) MERGE (node)-[:usedBy { label:"Burkina Faso"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BG' }) MERGE (node)-[:usedBy { label:"Bulgaria"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BH' }) MERGE (node)-[:usedBy { label:"Bahrain"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BI' }) MERGE (node)-[:usedBy { label:"Burundi"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BJ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BJ' }) MERGE (node)-[:usedBy { label:"Benin"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BM' }) MERGE (node)-[:usedBy { label:"Bermuda"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BN' }) MERGE (node)-[:usedBy { label:"Brunei"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BO' }) MERGE (node)-[:usedBy { label:"Bolivia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BQ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BQ' }) MERGE (node)-[:usedBy { label:"Bonaire, Sint Eustatius and Saba"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BR' }) MERGE (node)-[:usedBy { label:"Brazil"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BS' }) MERGE (node)-[:usedBy { label:"Bahamas"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BT' }) MERGE (node)-[:usedBy { label:"Bhutan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BV' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BV' }) MERGE (node)-[:usedBy { label:"Bouvet Island"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BW' }) MERGE (node)-[:usedBy { label:"Botswana"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BY' }) MERGE (node)-[:usedBy { label:"Belarus"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'BZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'BZ' }) MERGE (node)-[:usedBy { label:"Belize"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CA' }) MERGE (node)-[:usedBy { label:"Canada"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CC' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CC' }) MERGE (node)-[:usedBy { label:"Cocos Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CD' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CD' }) MERGE (node)-[:usedBy { label:"Congo (Democratic Republic)"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CF' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CF' }) MERGE (node)-[:usedBy { label:"Central African Republic"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CG' }) MERGE (node)-[:usedBy { label:"Congo (Republic)"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CH' }) MERGE (node)-[:usedBy { label:"Switzerland"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CI' }) MERGE (node)-[:usedBy { label:"Ivory Coast"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CK' }) MERGE (node)-[:usedBy { label:"Cook Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CL' }) MERGE (node)-[:usedBy { label:"Chile"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CM' }) MERGE (node)-[:usedBy { label:"Cameroon"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CN' }) MERGE (node)-[:usedBy { label:"China"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CO' }) MERGE (node)-[:usedBy { label:"Colombia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CR' }) MERGE (node)-[:usedBy { label:"Costa Rica"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CU' }) MERGE (node)-[:usedBy { label:"Cuba"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CV' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CV' }) MERGE (node)-[:usedBy { label:"Cape Verde"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CW' }) MERGE (node)-[:usedBy { label:"Curacao"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CX' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CX' }) MERGE (node)-[:usedBy { label:"Christmas Island"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CY' }) MERGE (node)-[:usedBy { label:"Cyprus"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'CZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'CZ' }) MERGE (node)-[:usedBy { label:"Czech Republic"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'D5' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'D5' }) MERGE (node)-[:usedBy { label:"Extra EU 28 (Rest of World)"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'DE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'DE' }) MERGE (node)-[:usedBy { label:"Germany"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'DJ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'DJ' }) MERGE (node)-[:usedBy { label:"Djibouti"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'DK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'DK' }) MERGE (node)-[:usedBy { label:"Denmark"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'DM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'DM' }) MERGE (node)-[:usedBy { label:"Dominica"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'DO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'DO' }) MERGE (node)-[:usedBy { label:"Dominican Republic"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'DZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'DZ' }) MERGE (node)-[:usedBy { label:"Algeria"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'EC' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'EC' }) MERGE (node)-[:usedBy { label:"Ecuador"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'EE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'EE' }) MERGE (node)-[:usedBy { label:"Estonia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'EG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'EG' }) MERGE (node)-[:usedBy { label:"Egypt"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ER' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ER' }) MERGE (node)-[:usedBy { label:"Eritrea"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ES' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ES' }) MERGE (node)-[:usedBy { label:"Spain"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ET' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ET' }) MERGE (node)-[:usedBy { label:"Ethiopia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'FI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'FI' }) MERGE (node)-[:usedBy { label:"Finland"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'FJ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'FJ' }) MERGE (node)-[:usedBy { label:"Fiji"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'FK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'FK' }) MERGE (node)-[:usedBy { label:"Falkland Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'FM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'FM' }) MERGE (node)-[:usedBy { label:"Micronesia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'FO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'FO' }) MERGE (node)-[:usedBy { label:"Faroe Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'FR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'FR' }) MERGE (node)-[:usedBy { label:"France"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GA' }) MERGE (node)-[:usedBy { label:"Gabon"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GD' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GD' }) MERGE (node)-[:usedBy { label:"Grenada"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GE' }) MERGE (node)-[:usedBy { label:"Georgia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GH' }) MERGE (node)-[:usedBy { label:"Ghana"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GI' }) MERGE (node)-[:usedBy { label:"Gibraltar"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GL' }) MERGE (node)-[:usedBy { label:"Greenland"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GM' }) MERGE (node)-[:usedBy { label:"Gambia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GN' }) MERGE (node)-[:usedBy { label:"Guinea"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GQ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GQ' }) MERGE (node)-[:usedBy { label:"Equatorial Guinea"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GR' }) MERGE (node)-[:usedBy { label:"Greece"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GS' }) MERGE (node)-[:usedBy { label:"South Georgia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GT' }) MERGE (node)-[:usedBy { label:"Guatemala"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GU' }) MERGE (node)-[:usedBy { label:"Guam"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GW' }) MERGE (node)-[:usedBy { label:"Guinea Bissau"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'GY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'GY' }) MERGE (node)-[:usedBy { label:"Guyana"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'HK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'HK' }) MERGE (node)-[:usedBy { label:"Hong Kong"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'HM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'HM' }) MERGE (node)-[:usedBy { label:"Heard & McDonald Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'HN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'HN' }) MERGE (node)-[:usedBy { label:"Honduras"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'HR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'HR' }) MERGE (node)-[:usedBy { label:"Croatia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'HT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'HT' }) MERGE (node)-[:usedBy { label:"Haiti"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'HU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'HU' }) MERGE (node)-[:usedBy { label:"Hungary"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ID' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ID' }) MERGE (node)-[:usedBy { label:"Indonesia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IE' }) MERGE (node)-[:usedBy { label:"Irish Republic"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IL' }) MERGE (node)-[:usedBy { label:"Israel"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IN' }) MERGE (node)-[:usedBy { label:"India"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IO' }) MERGE (node)-[:usedBy { label:"British Indian Ocean Territory"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IQ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IQ' }) MERGE (node)-[:usedBy { label:"Iraq"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IR' }) MERGE (node)-[:usedBy { label:"Iran"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IS' }) MERGE (node)-[:usedBy { label:"Iceland"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'IT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'IT' }) MERGE (node)-[:usedBy { label:"Italy"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'JE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'JE' }) MERGE (node)-[:usedBy { label:"Jersey"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'JM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'JM' }) MERGE (node)-[:usedBy { label:"Jamaica"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'JO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'JO' }) MERGE (node)-[:usedBy { label:"Jordan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'JP' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'JP' }) MERGE (node)-[:usedBy { label:"Japan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KE' }) MERGE (node)-[:usedBy { label:"Kenya"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KG' }) MERGE (node)-[:usedBy { label:"Kyrgyz Republic"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KH' }) MERGE (node)-[:usedBy { label:"Cambodia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KI' }) MERGE (node)-[:usedBy { label:"Kiribati"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KM' }) MERGE (node)-[:usedBy { label:"Comoros"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KN' }) MERGE (node)-[:usedBy { label:"St Kitts & Nevis"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KP' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KP' }) MERGE (node)-[:usedBy { label:"North Korea"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KR' }) MERGE (node)-[:usedBy { label:"South Korea"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KW' }) MERGE (node)-[:usedBy { label:"Kuwait"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KY' }) MERGE (node)-[:usedBy { label:"Cayman Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'KZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'KZ' }) MERGE (node)-[:usedBy { label:"Kazakhstan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LA' }) MERGE (node)-[:usedBy { label:"Laos"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LB' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LB' }) MERGE (node)-[:usedBy { label:"Lebanon"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LC' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LC' }) MERGE (node)-[:usedBy { label:"St Lucia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LI' }) MERGE (node)-[:usedBy { label:"Liechtenstein"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LK' }) MERGE (node)-[:usedBy { label:"Sri Lanka"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LR' }) MERGE (node)-[:usedBy { label:"Liberia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LS' }) MERGE (node)-[:usedBy { label:"Lesotho"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LT' }) MERGE (node)-[:usedBy { label:"Lithuania"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LU' }) MERGE (node)-[:usedBy { label:"Luxembourg"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LV' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LV' }) MERGE (node)-[:usedBy { label:"Latvia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'LY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'LY' }) MERGE (node)-[:usedBy { label:"Libya"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MA' }) MERGE (node)-[:usedBy { label:"Morocco"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MD' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MD' }) MERGE (node)-[:usedBy { label:"Moldova"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ME' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ME' }) MERGE (node)-[:usedBy { label:"Montenegro"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MG' }) MERGE (node)-[:usedBy { label:"Madagascar"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MH' }) MERGE (node)-[:usedBy { label:"Marshall Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MK' }) MERGE (node)-[:usedBy { label:"FYR Macedonia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ML' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ML' }) MERGE (node)-[:usedBy { label:"Mali"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MM' }) MERGE (node)-[:usedBy { label:"Myanmar"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MN' }) MERGE (node)-[:usedBy { label:"Mongolia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MO' }) MERGE (node)-[:usedBy { label:"Macao"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MP' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MP' }) MERGE (node)-[:usedBy { label:"Northern Mariana Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MR' }) MERGE (node)-[:usedBy { label:"Mauritania"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MS' }) MERGE (node)-[:usedBy { label:"Montserrat"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MT' }) MERGE (node)-[:usedBy { label:"Malta"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MU' }) MERGE (node)-[:usedBy { label:"Mauritius"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MV' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MV' }) MERGE (node)-[:usedBy { label:"Maldives"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MW' }) MERGE (node)-[:usedBy { label:"Malawi"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MX' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MX' }) MERGE (node)-[:usedBy { label:"Mexico"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MY' }) MERGE (node)-[:usedBy { label:"Malaysia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'MZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'MZ' }) MERGE (node)-[:usedBy { label:"Mozambique"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'' }) MERGE (node)-[:usedBy { label:"Namibia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NC' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NC' }) MERGE (node)-[:usedBy { label:"New Caledonia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NE' }) MERGE (node)-[:usedBy { label:"Niger"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NF' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NF' }) MERGE (node)-[:usedBy { label:"Norfolk Island"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NG' }) MERGE (node)-[:usedBy { label:"Nigeria"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NI' }) MERGE (node)-[:usedBy { label:"Nicaragua"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NL' }) MERGE (node)-[:usedBy { label:"Netherlands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NO' }) MERGE (node)-[:usedBy { label:"Norway"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NP' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NP' }) MERGE (node)-[:usedBy { label:"Nepal"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NR' }) MERGE (node)-[:usedBy { label:"Nauru"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NU' }) MERGE (node)-[:usedBy { label:"Niue Island"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'NZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'NZ' }) MERGE (node)-[:usedBy { label:"New Zealand"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'OM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'OM' }) MERGE (node)-[:usedBy { label:"Oman"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PA' }) MERGE (node)-[:usedBy { label:"Panama"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PE' }) MERGE (node)-[:usedBy { label:"Peru"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PF' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PF' }) MERGE (node)-[:usedBy { label:"French Polynesia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PG' }) MERGE (node)-[:usedBy { label:"Papua New Guinea"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PH' }) MERGE (node)-[:usedBy { label:"Philippines"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PK' }) MERGE (node)-[:usedBy { label:"Pakistan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PL' }) MERGE (node)-[:usedBy { label:"Poland"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PN' }) MERGE (node)-[:usedBy { label:"Pitcairn"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PS' }) MERGE (node)-[:usedBy { label:"Occupied Palestinian Territory"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PT' }) MERGE (node)-[:usedBy { label:"Portugal"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PW' }) MERGE (node)-[:usedBy { label:"Palau"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'PY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'PY' }) MERGE (node)-[:usedBy { label:"Paraguay"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'QA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'QA' }) MERGE (node)-[:usedBy { label:"Qatar"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'RO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'RO' }) MERGE (node)-[:usedBy { label:"Romania"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'RS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'RS' }) MERGE (node)-[:usedBy { label:"Serbia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'RU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'RU' }) MERGE (node)-[:usedBy { label:"Russia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'RW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'RW' }) MERGE (node)-[:usedBy { label:"Rwanda"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SA' }) MERGE (node)-[:usedBy { label:"Saudi Arabia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SB' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SB' }) MERGE (node)-[:usedBy { label:"Solomon Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SC' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SC' }) MERGE (node)-[:usedBy { label:"Seychelles"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SD' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SD' }) MERGE (node)-[:usedBy { label:"Sudan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SE' }) MERGE (node)-[:usedBy { label:"Sweden"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SG' }) MERGE (node)-[:usedBy { label:"Singapore"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SH' }) MERGE (node)-[:usedBy { label:"St. Helena"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SI' }) MERGE (node)-[:usedBy { label:"Slovenia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SK' }) MERGE (node)-[:usedBy { label:"Slovakia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SL' }) MERGE (node)-[:usedBy { label:"Sierra Leone"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SM' }) MERGE (node)-[:usedBy { label:"San Marino"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SN' }) MERGE (node)-[:usedBy { label:"Senegal"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SO' }) MERGE (node)-[:usedBy { label:"Somalia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SR' }) MERGE (node)-[:usedBy { label:"Suriname"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SS' }) MERGE (node)-[:usedBy { label:"South Sudan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ST' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ST' }) MERGE (node)-[:usedBy { label:"Sao Tome & Principe"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SV' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SV' }) MERGE (node)-[:usedBy { label:"El Salvador"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SX' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SX' }) MERGE (node)-[:usedBy { label:"Sint Maarten"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SY' }) MERGE (node)-[:usedBy { label:"Syria"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'SZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'SZ' }) MERGE (node)-[:usedBy { label:"Swaziland"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TC' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TC' }) MERGE (node)-[:usedBy { label:"Turks & Caicos Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TD' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TD' }) MERGE (node)-[:usedBy { label:"Chad"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TF' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TF' }) MERGE (node)-[:usedBy { label:"French Southern Territories"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TG' }) MERGE (node)-[:usedBy { label:"Togo"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TH' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TH' }) MERGE (node)-[:usedBy { label:"Thailand"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TJ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TJ' }) MERGE (node)-[:usedBy { label:"Tajikistan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TK' }) MERGE (node)-[:usedBy { label:"Tokelau Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TL' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TL' }) MERGE (node)-[:usedBy { label:"East Timor"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TM' }) MERGE (node)-[:usedBy { label:"Turkmenistan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TN' }) MERGE (node)-[:usedBy { label:"Tunisia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TO' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TO' }) MERGE (node)-[:usedBy { label:"Tonga"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TR' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TR' }) MERGE (node)-[:usedBy { label:"Turkey"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TT' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TT' }) MERGE (node)-[:usedBy { label:"Trinidad & Tobago"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TV' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TV' }) MERGE (node)-[:usedBy { label:"Tuvalu"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TW' }) MERGE (node)-[:usedBy { label:"Taiwan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'TZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'TZ' }) MERGE (node)-[:usedBy { label:"Tanzania"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'UA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'UA' }) MERGE (node)-[:usedBy { label:"Ukraine"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'UG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'UG' }) MERGE (node)-[:usedBy { label:"Uganda"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'UM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'UM' }) MERGE (node)-[:usedBy { label:"US Minor Outlying Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'US' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'US' }) MERGE (node)-[:usedBy { label:"United States inc Puerto Rico"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'UY' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'UY' }) MERGE (node)-[:usedBy { label:"Uruguay"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'UZ' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'UZ' }) MERGE (node)-[:usedBy { label:"Uzbekistan"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'VA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'VA' }) MERGE (node)-[:usedBy { label:"Vatican City"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'VC' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'VC' }) MERGE (node)-[:usedBy { label:"St Vincent"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'VE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'VE' }) MERGE (node)-[:usedBy { label:"Venezuela"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'VG' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'VG' }) MERGE (node)-[:usedBy { label:"British Virgin Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'VI' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'VI' }) MERGE (node)-[:usedBy { label:"US Virgin Islands"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'VN' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'VN' }) MERGE (node)-[:usedBy { label:"Vietnam"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'VU' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'VU' }) MERGE (node)-[:usedBy { label:"Vanuatu"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'W1' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'W1' }) MERGE (node)-[:usedBy { label:"Whole world"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'WF' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'WF' }) MERGE (node)-[:usedBy { label:"Wallis & Futuna"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'WS' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'WS' }) MERGE (node)-[:usedBy { label:"Samoa"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'XK' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'XK' }) MERGE (node)-[:usedBy { label:"Kosovo"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'YE' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'YE' }) MERGE (node)-[:usedBy { label:"Yemen"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ZA' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ZA' }) MERGE (node)-[:usedBy { label:"South Africa"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ZM' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ZM' }) MERGE (node)-[:usedBy { label:"Zambia"}]->(parent);

MERGE (node:`_code`:`_code_trade-country` { value:'ZW' });

MATCH (parent:`_code_list`:`_code_list_trade-country`),(node:`_code`:`_code_trade-country` { value:'ZW' }) MERGE (node)-[:usedBy { label:"Zimbabwe"}]->(parent);
