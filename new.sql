BEGIN TRANSACTION;
CREATE TABLE "contacts" (
	`contactindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`contactname`	INTEGER,
	`contactsurname`	INTEGER,
	`contactnikname`	INTEGER,
	`contactbirth`	TEXT,
	`contactorg`	INTEGER,
	`contactfix`	TEXT,
	`contactmov`	TEXT,
	`contactemail`	TEXT,
	`contactserver`	INTEGER,
	`contactcountry`	INTEGER,
	FOREIGN KEY(`contactname`) REFERENCES `names` ( `nameindx` ),
	FOREIGN KEY(`contactsurname`) REFERENCES `surnames` ( `surnameindx` ),
	FOREIGN KEY(`contactorg`) REFERENCES `orgs` ( `orgsindx` ),
	FOREIGN KEY(`contactserver`) REFERENCES `servers` ( `serverindx` ),
	FOREIGN KEY(`contactcountry`) REFERENCES `countries` ( `countryindx` )
);
CREATE TABLE "names" (
	`nameindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`namename`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "surnames" (
	`surnameindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`surnamename`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "niknames" (
	`niknameindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`niknamename`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "servers" (
	`serverindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`servername`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "orgs" (
	`orgsindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`orgsname`	TEXT NOT NULL
);
CREATE TABLE "countries" (
	`countryindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`countryc2`	TEXT(2) NOT NULL UNIQUE,
	`countryc3`	TEXT(3) NOT NULL UNIQUE,
	`countryname`	TEXT NOT NULL UNIQUE,
	`countryint`	TEXT,
	`countrycapital`	TEXT,
	`countryremark`	TEXT
);
INSERT INTO `countries` VALUES (1,'XX','XXX','None','','None','');
INSERT INTO `countries` VALUES (2,'AF','AFG','Afghanistan','','Kabul','');
INSERT INTO `countries` VALUES (3,'AL','ALB','Albania','','Tirana','');
INSERT INTO `countries` VALUES (4,'DZ','DZA','Algeria','','Algiers','');
INSERT INTO `countries` VALUES (5,'AS','ASM','American Samoa','','Pago Pago','');
INSERT INTO `countries` VALUES (6,'AD','AND','Andorra','','Andorra la Vella','');
INSERT INTO `countries` VALUES (7,'AO','AGO','Angola','','Luanda','');
INSERT INTO `countries` VALUES (8,'AI','AIA','Anguilla','','The Valley','');
INSERT INTO `countries` VALUES (9,'AQ','ATA','Antarctica','','','');
INSERT INTO `countries` VALUES (10,'AR','ARG','Argentina','54','Buenos Aires','');
INSERT INTO `countries` VALUES (11,'AM','ARM','Armenia','','Yerevan','');
INSERT INTO `countries` VALUES (12,'AW','ABW','Aruba','','Oranjestad','');
INSERT INTO `countries` VALUES (13,'AU','AUS','Australia','','Canberra','');
INSERT INTO `countries` VALUES (14,'AT','AUT','Austria','','Vienna','');
INSERT INTO `countries` VALUES (15,'AZ','AZE','Azerbaijan','','Baku','');
INSERT INTO `countries` VALUES (16,'BS','BHS','Bahamas','','Nassau','');
INSERT INTO `countries` VALUES (17,'BH','BHR','Bahrain','','Manama','');
INSERT INTO `countries` VALUES (18,'BD','BGD','Bangladesh','','Dhaka','');
INSERT INTO `countries` VALUES (19,'BB','BRB','Barbados','','Bridgetown','');
INSERT INTO `countries` VALUES (20,'BY','BLR','Belarus','','Minsk','');
INSERT INTO `countries` VALUES (21,'BE','BEL','Belgium','','Brussels','');
INSERT INTO `countries` VALUES (22,'BZ','BLZ','Belize','','Belmopan','');
INSERT INTO `countries` VALUES (23,'BJ','BEN','Benin','','Porto-Novo','');
INSERT INTO `countries` VALUES (24,'BM','BMU','Bermuda','','Hamilton','');
INSERT INTO `countries` VALUES (25,'BT','BTN','Bhutan','','Thimphu','');
INSERT INTO `countries` VALUES (26,'BO','BOL','Bolivia','','La Paz','');
INSERT INTO `countries` VALUES (27,'BA','BIH','Bosnia and Herzegovina','','Sarajevo','');
INSERT INTO `countries` VALUES (28,'BW','BWA','Botswana','','Gaborone','');
INSERT INTO `countries` VALUES (29,'BR','BRA','Brazil','','Brasília','');
INSERT INTO `countries` VALUES (30,'VG','VGB','British Virgin Islands','','Road Town','');
INSERT INTO `countries` VALUES (31,'BN','BRN','Brunei','','Bandar Seri Begawan','');
INSERT INTO `countries` VALUES (32,'BG','BGR','Bulgaria','','Sofia','');
INSERT INTO `countries` VALUES (33,'BF','BFA','Burkina Faso','','Ouagadougou','');
INSERT INTO `countries` VALUES (34,'BI','BDI','Burundi','','Bujumbura','');
INSERT INTO `countries` VALUES (35,'KH','KHM','Cambodia','','Phnom Penh','');
INSERT INTO `countries` VALUES (36,'CM','CMR','Cameroon','','Yaoundé','');
INSERT INTO `countries` VALUES (37,'CA','CAN','Canada','','Ottawa','');
INSERT INTO `countries` VALUES (38,'CV','CPV','Cape Verde','','Praia','');
INSERT INTO `countries` VALUES (39,'KY','CYM','Cayman Islands','','George Town','');
INSERT INTO `countries` VALUES (40,'CF','CAF','Central African Republic','','Bangui','');
INSERT INTO `countries` VALUES (41,'CL','CHL','Chile','','Santiago','');
INSERT INTO `countries` VALUES (42,'CN','CHN','China','','Beijing','');
INSERT INTO `countries` VALUES (43,'CO','COL','Colombia','','Bogotá','');
INSERT INTO `countries` VALUES (44,'KM','COM','Comoros','','Moroni','');
INSERT INTO `countries` VALUES (45,'CK','COK','Cook Islands','','Avarua','');
INSERT INTO `countries` VALUES (46,'CR','CRI','Costa Rica','','San José','');
INSERT INTO `countries` VALUES (47,'HR','HRV','Croatia','','Zagreb','');
INSERT INTO `countries` VALUES (48,'CU','CUB','Cuba','','Havana','');
INSERT INTO `countries` VALUES (49,'CW','CUW','Curacao','','Willemstad','');
INSERT INTO `countries` VALUES (50,'CY','CYP','Cyprus','','Nicosia','');
INSERT INTO `countries` VALUES (51,'CZ','CZE','Czech Republic','','Prague','');
INSERT INTO `countries` VALUES (52,'CD','COD','Democratic Republic of Congo','','Kinshasa','');
INSERT INTO `countries` VALUES (53,'DK','DNK','Denmark','','Copenhagen','');
INSERT INTO `countries` VALUES (54,'DJ','DJI','Djibouti','','Djibouti','');
INSERT INTO `countries` VALUES (55,'DM','DMA','Dominica','','Roseau','');
INSERT INTO `countries` VALUES (56,'DO','DOM','Dominican Republic','','Santo Domingo','');
INSERT INTO `countries` VALUES (57,'TL','TLS','East Timor','','Dili','');
INSERT INTO `countries` VALUES (58,'EC','ECU','Ecuador','','Quito','');
INSERT INTO `countries` VALUES (59,'EG','EGY','Egypt','','Cairo','');
INSERT INTO `countries` VALUES (60,'SV','SLV','El Salvador','','San Salvador','');
INSERT INTO `countries` VALUES (61,'GQ','GNQ','Equatorial Guinea','','Malabo','');
INSERT INTO `countries` VALUES (62,'ER','ERI','Eritrea','','Asmara','');
INSERT INTO `countries` VALUES (63,'EE','EST','Estonia','','Tallinn','');
INSERT INTO `countries` VALUES (64,'ET','ETH','Ethiopia','','Addis Ababa','');
INSERT INTO `countries` VALUES (65,'FK','FLK','Falkland Islands','','Stanley','');
INSERT INTO `countries` VALUES (66,'FO','FRO','Faroe Islands','','Tórshavn','');
INSERT INTO `countries` VALUES (67,'FJ','FJI','Fiji','','Suva','');
INSERT INTO `countries` VALUES (68,'FI','FIN','Finland','','Helsinki','');
INSERT INTO `countries` VALUES (69,'FR','FRA','France','','Paris','');
INSERT INTO `countries` VALUES (70,'PF','PYF','French Polynesia','','Papeete','');
INSERT INTO `countries` VALUES (71,'GA','GAB','Gabon','','Libreville','');
INSERT INTO `countries` VALUES (72,'GM','GMB','Gambia','','Banjul','');
INSERT INTO `countries` VALUES (73,'GE','GEO','Georgia','','Tbilisi','');
INSERT INTO `countries` VALUES (74,'DE','DEU','Germany','','Berlin','');
INSERT INTO `countries` VALUES (75,'GH','GHA','Ghana','','Accra','');
INSERT INTO `countries` VALUES (76,'GI','GIB','Gibraltar','','Gibraltar','');
INSERT INTO `countries` VALUES (77,'GR','GRC','Greece','','Athens','');
INSERT INTO `countries` VALUES (78,'GL','GRL','Greenland','','Nuuk','');
INSERT INTO `countries` VALUES (79,'GP','GLP','Guadeloupe','','Basse-Terre','');
INSERT INTO `countries` VALUES (80,'GU','GUM','Guam','','Hagåtña','');
INSERT INTO `countries` VALUES (81,'GT','GTM','Guatemala','','Guatemala City','');
INSERT INTO `countries` VALUES (82,'GN','GIN','Guinea','','Conakry','');
INSERT INTO `countries` VALUES (83,'GW','GNB','Guinea-Bissau','','Bissau','');
INSERT INTO `countries` VALUES (84,'GY','GUY','Guyana','','Georgetown','');
INSERT INTO `countries` VALUES (85,'HT','HTI','Haiti','','Port-au-Prince','');
INSERT INTO `countries` VALUES (86,'HN','HND','Honduras','','Tegucigalpa','');
INSERT INTO `countries` VALUES (87,'HK','HKG','Hong Kong','','Hong Kong','');
INSERT INTO `countries` VALUES (88,'HU','HUN','Hungary','','Budapest','');
INSERT INTO `countries` VALUES (89,'IS','ISL','Iceland','','Reykjavík','');
INSERT INTO `countries` VALUES (90,'IN','IND','India','','New Delhi','');
INSERT INTO `countries` VALUES (91,'ID','IDN','Indonesia','','Jakarta','');
INSERT INTO `countries` VALUES (92,'IR','IRN','Iran','','Tehran','');
INSERT INTO `countries` VALUES (93,'IQ','IRQ','Iraq','','Baghdad','');
INSERT INTO `countries` VALUES (94,'IE','IRL','Ireland','','Dublin','');
INSERT INTO `countries` VALUES (95,'IM','IMN','Isle of Man','','Douglas, Isle of Man','');
INSERT INTO `countries` VALUES (96,'IL','ISR','Israel','','Jerusalem','');
INSERT INTO `countries` VALUES (97,'IT','ITA','Italy','','Rome','');
INSERT INTO `countries` VALUES (98,'CI','CIV','Ivory Coast','','Yamoussoukro','');
INSERT INTO `countries` VALUES (99,'JM','JAM','Jamaica','','Kingston','');
INSERT INTO `countries` VALUES (100,'JP','JPN','Japan','','Tokyo','');
INSERT INTO `countries` VALUES (101,'JO','JOR','Jordan','','Amman','');
INSERT INTO `countries` VALUES (102,'KZ','KAZ','Kazakhstan','','Astana','');
INSERT INTO `countries` VALUES (103,'KE','KEN','Kenya','','Nairobi','');
INSERT INTO `countries` VALUES (104,'KI','KIR','Kiribati','','Tarawa','');
INSERT INTO `countries` VALUES (105,'XK','XKX','Kosovo','','Pristina','');
INSERT INTO `countries` VALUES (106,'KW','KWT','Kuwait','','Kuwait City','');
INSERT INTO `countries` VALUES (107,'KG','KGZ','Kyrgyzstan','','Bishkek','');
INSERT INTO `countries` VALUES (108,'LA','LAO','Laos','','Vientiane','');
INSERT INTO `countries` VALUES (109,'LV','LVA','Latvia','','Riga','');
INSERT INTO `countries` VALUES (110,'LB','LBN','Lebanon','','Beirut','');
INSERT INTO `countries` VALUES (111,'LS','LSO','Lesotho','','Maseru','');
INSERT INTO `countries` VALUES (112,'LR','LBR','Liberia','','Monrovia','');
INSERT INTO `countries` VALUES (113,'LY','LBY','Libya','','Tripolis','');
INSERT INTO `countries` VALUES (114,'LI','LIE','Liechtenstein','','Vaduz','');
INSERT INTO `countries` VALUES (115,'LT','LTU','Lithuania','','Vilnius','');
INSERT INTO `countries` VALUES (116,'LU','LUX','Luxembourg','','Luxembourg','');
INSERT INTO `countries` VALUES (117,'MO','MAC','Macau','','Macao','');
INSERT INTO `countries` VALUES (118,'MK','MKD','Macedonia','','Skopje','');
INSERT INTO `countries` VALUES (119,'MG','MDG','Madagascar','','Antananarivo','');
INSERT INTO `countries` VALUES (120,'MW','MWI','Malawi','','Lilongwe','');
INSERT INTO `countries` VALUES (121,'MY','MYS','Malaysia','','Kuala Lumpur','');
INSERT INTO `countries` VALUES (122,'MV','MDV','Maldives','','Malé','');
INSERT INTO `countries` VALUES (123,'ML','MLI','Mali','','Bamako','');
INSERT INTO `countries` VALUES (124,'MT','MLT','Malta','','Valletta','');
INSERT INTO `countries` VALUES (125,'MH','MHL','Marshall Islands','','Majuro','');
INSERT INTO `countries` VALUES (126,'MR','MRT','Mauritania','','Nouakchott','');
INSERT INTO `countries` VALUES (127,'MU','MUS','Mauritius','','Port Louis','');
INSERT INTO `countries` VALUES (128,'MX','MEX','Mexico','','Mexico City','');
INSERT INTO `countries` VALUES (129,'FM','FSM','Micronesia','','Palikir','');
INSERT INTO `countries` VALUES (130,'MD','MDA','Moldova','','Chişinău','');
INSERT INTO `countries` VALUES (131,'MC','MCO','Monaco','','Monaco','');
INSERT INTO `countries` VALUES (132,'MN','MNG','Mongolia','','Ulan Bator','');
INSERT INTO `countries` VALUES (133,'ME','MNE','Montenegro','','Podgorica','');
INSERT INTO `countries` VALUES (134,'MS','MSR','Montserrat','','Plymouth','');
INSERT INTO `countries` VALUES (135,'MA','MAR','Morocco','','Rabat','');
INSERT INTO `countries` VALUES (136,'MZ','MOZ','Mozambique','','Maputo','');
INSERT INTO `countries` VALUES (137,'MM','MMR','Myanmar','','Nay Pyi Taw','');
INSERT INTO `countries` VALUES (138,'NA','NAM','Namibia','','Windhoek','');
INSERT INTO `countries` VALUES (139,'NR','NRU','Nauru','','Yaren','');
INSERT INTO `countries` VALUES (140,'NP','NPL','Nepal','','Kathmandu','');
INSERT INTO `countries` VALUES (141,'NL','NLD','Netherlands','','Amsterdam','');
INSERT INTO `countries` VALUES (142,'NC','NCL','New Caledonia','','Nouméa','');
INSERT INTO `countries` VALUES (143,'NZ','NZL','New Zealand','','Wellington','');
INSERT INTO `countries` VALUES (144,'NI','NIC','Nicaragua','','Managua','');
INSERT INTO `countries` VALUES (145,'NE','NER','Niger','','Niamey','');
INSERT INTO `countries` VALUES (146,'NG','NGA','Nigeria','','Abuja','');
INSERT INTO `countries` VALUES (147,'NU','NIU','Niue','','Alofi','');
INSERT INTO `countries` VALUES (148,'NF','NFK','Norfolk Island','','Kingston','');
INSERT INTO `countries` VALUES (149,'KP','PRK','North Korea','','Pyongyang','');
INSERT INTO `countries` VALUES (150,'MP','MNP','Northern Mariana Islands','','Saipan','');
INSERT INTO `countries` VALUES (151,'NO','NOR','Norway','','Oslo','');
INSERT INTO `countries` VALUES (152,'OM','OMN','Oman','','Muscat','');
INSERT INTO `countries` VALUES (153,'PK','PAK','Pakistan','','Islamabad','');
INSERT INTO `countries` VALUES (154,'PW','PLW','Palau','','Melekeok','');
INSERT INTO `countries` VALUES (155,'PA','PAN','Panama','','Panama City','');
INSERT INTO `countries` VALUES (156,'PG','PNG','Papua New Guinea','','Port Moresby','');
INSERT INTO `countries` VALUES (157,'PY','PRY','Paraguay','','Asunción','');
INSERT INTO `countries` VALUES (158,'PE','PER','Peru','51','Lima','');
INSERT INTO `countries` VALUES (159,'PH','PHL','Philippines','','Manila','');
INSERT INTO `countries` VALUES (160,'PN','PCN','Pitcairn Islands','','Adamstown','');
INSERT INTO `countries` VALUES (161,'PL','POL','Poland','','Warsaw','');
INSERT INTO `countries` VALUES (162,'PT','PRT','Portugal','','Lisbon','');
INSERT INTO `countries` VALUES (163,'PR','PRI','Puerto Rico','','San Juan','');
INSERT INTO `countries` VALUES (164,'QA','QAT','Qatar','','Doha','');
INSERT INTO `countries` VALUES (165,'CG','COG','Republic of the Congo','','Brazzaville','');
INSERT INTO `countries` VALUES (166,'RE','REU','Reunion','','Saint-Denis','');
INSERT INTO `countries` VALUES (167,'RO','ROU','Romania','','Bucharest','');
INSERT INTO `countries` VALUES (168,'RU','RUS','Russia','','Moscow','');
INSERT INTO `countries` VALUES (169,'RW','RWA','Rwanda','','Kigali','');
INSERT INTO `countries` VALUES (170,'BL','BLM','Saint Barthélemy','','Gustavia','');
INSERT INTO `countries` VALUES (171,'SH','SHN','Saint Helena','','Jamestown','');
INSERT INTO `countries` VALUES (172,'KN','KNA','Saint Kitts and Nevis','','Basseterre','');
INSERT INTO `countries` VALUES (173,'LC','LCA','Saint Lucia','','Castries','');
INSERT INTO `countries` VALUES (174,'MF','MAF','Saint Martin','','Marigot','');
INSERT INTO `countries` VALUES (175,'PM','SPM','Saint Pierre and Miquelon','','Saint-Pierre','');
INSERT INTO `countries` VALUES (176,'VC','VCT','Saint Vincent and the Grenadines','','Kingstown','');
INSERT INTO `countries` VALUES (177,'WS','WSM','Samoa','','Apia','');
INSERT INTO `countries` VALUES (178,'SM','SMR','San Marino','','San Marino','');
INSERT INTO `countries` VALUES (179,'ST','STP','Sao Tome and Principe','','São Tomé','');
INSERT INTO `countries` VALUES (180,'SA','SAU','Saudi Arabia','','Riyadh','');
INSERT INTO `countries` VALUES (181,'SN','SEN','Senegal','','Dakar','');
INSERT INTO `countries` VALUES (182,'RS','SRB','Serbia','','Belgrade','');
INSERT INTO `countries` VALUES (183,'SC','SYC','Seychelles','','Victoria','');
INSERT INTO `countries` VALUES (184,'SL','SLE','Sierra Leone','','Freetown','');
INSERT INTO `countries` VALUES (185,'SG','SGP','Singapore','','Singapur','');
INSERT INTO `countries` VALUES (186,'SK','SVK','Slovakia','','Bratislava','');
INSERT INTO `countries` VALUES (187,'SI','SVN','Slovenia','','Ljubljana','');
INSERT INTO `countries` VALUES (188,'SB','SLB','Solomon Islands','','Honiara','');
INSERT INTO `countries` VALUES (189,'SO','SOM','Somalia','','Mogadishu','');
INSERT INTO `countries` VALUES (190,'ZA','ZAF','South Africa','','Pretoria','');
INSERT INTO `countries` VALUES (191,'KR','KOR','South Korea','','Seoul','');
INSERT INTO `countries` VALUES (192,'SS','SSD','South Sudan','','Juba','');
INSERT INTO `countries` VALUES (193,'ES','ESP','Spain','34','Madrid','');
INSERT INTO `countries` VALUES (194,'LK','LKA','Sri Lanka','','Colombo','');
INSERT INTO `countries` VALUES (195,'SD','SDN','Sudan','','Khartoum','');
INSERT INTO `countries` VALUES (196,'SR','SUR','Suriname','','Paramaribo','');
INSERT INTO `countries` VALUES (197,'SZ','SWZ','Swaziland','','Mbabane','');
INSERT INTO `countries` VALUES (198,'SE','SWE','Sweden','','Stockholm','');
INSERT INTO `countries` VALUES (199,'CH','CHE','Switzerland','','Berne','');
INSERT INTO `countries` VALUES (200,'SY','SYR','Syria','','Damascus','');
INSERT INTO `countries` VALUES (201,'TW','TWN','Taiwan','','Taipei','');
INSERT INTO `countries` VALUES (202,'TJ','TJK','Tajikistan','','Dushanbe','');
INSERT INTO `countries` VALUES (203,'TZ','TZA','Tanzania','','Dodoma','');
INSERT INTO `countries` VALUES (204,'TH','THA','Thailand','','Bangkok','');
INSERT INTO `countries` VALUES (205,'TG','TGO','Togo','','Lomé','');
INSERT INTO `countries` VALUES (206,'TK','TKL','Tokelau','','','');
INSERT INTO `countries` VALUES (207,'TT','TTO','Trinidad and Tobago','','Port of Spain','');
INSERT INTO `countries` VALUES (208,'TN','TUN','Tunisia','','Tunis','');
INSERT INTO `countries` VALUES (209,'TR','TUR','Turkey','','Ankara','');
INSERT INTO `countries` VALUES (210,'TM','TKM','Turkmenistan','','Ashgabat','');
INSERT INTO `countries` VALUES (211,'TV','TUV','Tuvalu','','Funafuti','');
INSERT INTO `countries` VALUES (212,'UG','UGA','Uganda','','Kampala','');
INSERT INTO `countries` VALUES (213,'UA','UKR','Ukraine','','Kiev','');
INSERT INTO `countries` VALUES (214,'AE','ARE','United Arab Emirates','','Abu Dhabi','');
INSERT INTO `countries` VALUES (215,'GB','GBR','United Kingdom','','London','');
INSERT INTO `countries` VALUES (216,'US','USA','United States','','Washington','');
INSERT INTO `countries` VALUES (217,'UY','URY','Uruguay','','Montevideo','');
INSERT INTO `countries` VALUES (218,'UZ','UZB','Uzbekistan','','Tashkent','');
INSERT INTO `countries` VALUES (219,'VU','VUT','Vanuatu','','Port Vila','');
INSERT INTO `countries` VALUES (220,'VA','VAT','Vatican','','Vatican City','');
INSERT INTO `countries` VALUES (221,'VE','VEN','Venezuela','','Caracas','');
INSERT INTO `countries` VALUES (222,'VN','VNM','Vietnam','','Hanoi','');
INSERT INTO `countries` VALUES (223,'EH','ESH','Western Sahara','','El-Aaiun','');
INSERT INTO `countries` VALUES (224,'YE','YEM','Yemen','','San‘a’','');
INSERT INTO `countries` VALUES (225,'ZM','ZMB','Zambia','','Lusaka','');
INSERT INTO `countries` VALUES (226,'ZW','ZWE','Zimbabwe','','Harare','');
COMMIT;