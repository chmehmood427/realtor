-- Insert basic information
USE realtor;

-- -- Related to Address
-- Insert records into Province table 
-- INSERT INTO province (name_short, name_long) VALUES ('AB', 'Alberta');
-- INSERT INTO province (name_short, name_long) VALUES ('BC', 'British Columbia');
-- INSERT INTO province (name_short, name_long) VALUES ('MB', 'Manitoba');
-- INSERT INTO province (name_short, name_long) VALUES ('NB', 'New Brunswick');
-- INSERT INTO province (name_short, name_long) VALUES ('NL', 'Newfoundland and Labrador');
-- INSERT INTO province (name_short, name_long) VALUES ('NS', 'Nova Scotia');
-- INSERT INTO province (name_short, name_long) VALUES ('NT', 'Northwest Territories');
-- INSERT INTO province (name_short, name_long) VALUES ('NU', 'Nunavut');
-- INSERT INTO province (name_short, name_long) VALUES ('ON', 'Ontario');
-- INSERT INTO province (name_short, name_long) VALUES ('PE', 'Prince Edward Island');
-- INSERT INTO province (name_short, name_long) VALUES ('QC', 'Quebec');
-- INSERT INTO province (name_short, name_long) VALUES ('SK', 'Saskatchewan');
-- INSERT INTO province (name_short, name_long) VALUES ('YT', 'Yukon');

-- -- Insert records into Direction table 
-- INSERT INTO direction (name_short, name_long) VALUES ('E', 'East');
-- INSERT INTO direction (name_short, name_long) VALUES ('N', 'North');
-- INSERT INTO direction (name_short, name_long) VALUES ('NE', 'Northeast');
-- INSERT INTO direction (name_short, name_long) VALUES ('NW', 'Northweat');
-- INSERT INTO direction (name_short, name_long) VALUES ('S', 'South');
-- INSERT INTO direction (name_short, name_long) VALUES ('SE', 'Southeast');
-- INSERT INTO direction (name_short, name_long) VALUES ('SW', 'Southwest');
-- INSERT INTO direction (name_short, name_long) VALUES ('W', 'West');

-- -- Insert records into Suffix table 
-- INSERT INTO suffix (name_short, name_long) VALUES ('ABBEY', 'Abbey');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ACRES', 'Acres');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ALLÉE', 'Allée');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ALLEY', 'Alley');
-- INSERT INTO suffix (name_short, name_long) VALUES ('AUT', 'Autoroute');
-- INSERT INTO suffix (name_short, name_long) VALUES ('AVE', 'Avenue');
-- INSERT INTO suffix (name_short, name_long) VALUES ('AV', 'Avenue-F');
-- INSERT INTO suffix (name_short, name_long) VALUES ('BAY', 'Bay');
-- INSERT INTO suffix (name_short, name_long) VALUES ('BEACH', 'Beach');
-- INSERT INTO suffix (name_short, name_long) VALUES ('BEND', 'Bend');
-- INSERT INTO suffix (name_short, name_long) VALUES ('BLVD', 'Boulevard');
-- INSERT INTO suffix (name_short, name_long) VALUES ('BOUL', 'Boulevard-F');
-- INSERT INTO suffix (name_short, name_long) VALUES ('BYPASS', 'By-pass');
-- INSERT INTO suffix (name_short, name_long) VALUES ('BYWAY', 'Byway');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CAMPUS', 'Campus');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CAPE', 'Cape');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CAR', 'Carré');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CARREF', 'Carrefour');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CTR', 'Centre');
-- INSERT INTO suffix (name_short, name_long) VALUES ('C', 'Centre-F');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CERCLE', 'Cercle');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CHASE', 'Chase');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CH', 'Chemin');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CIR', 'Circle');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CIRCT', 'Circuit');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CLOSE', 'Close');
-- INSERT INTO suffix (name_short, name_long) VALUES ('COMMON', 'Common');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CONC', 'Concession');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CRNRS', 'Corners');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CÔTE', 'Côte');
-- INSERT INTO suffix (name_short, name_long) VALUES ('COUR', 'Cour');
-- INSERT INTO suffix (name_short, name_long) VALUES ('COURS', 'Cours');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CRT', 'Court');
-- INSERT INTO suffix (name_short, name_long) VALUES ('COVE', 'Cove');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CRES', 'Crescent');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CROIS', 'Croissant');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CROSS', 'Crossing');
-- INSERT INTO suffix (name_short, name_long) VALUES ('CDS', 'Cul-de-sac');
-- INSERT INTO suffix (name_short, name_long) VALUES ('DALE', 'Dale');
-- INSERT INTO suffix (name_short, name_long) VALUES ('DELL', 'Dell');
-- INSERT INTO suffix (name_short, name_long) VALUES ('DIVERS', 'Diversion');
-- INSERT INTO suffix (name_short, name_long) VALUES ('DOWNS', 'Downs');
-- INSERT INTO suffix (name_short, name_long) VALUES ('DR', 'Drive');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ÉCH', 'Échangeur');
-- INSERT INTO suffix (name_short, name_long) VALUES ('END', 'End');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ESPL', 'Esplanade');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ESTATE', 'Estates');
-- INSERT INTO suffix (name_short, name_long) VALUES ('EXPY', 'Expressway');
-- INSERT INTO suffix (name_short, name_long) VALUES ('EXTEN', 'Extension');
-- INSERT INTO suffix (name_short, name_long) VALUES ('FARM', 'Farm');
-- INSERT INTO suffix (name_short, name_long) VALUES ('FIELD', 'Field');
-- INSERT INTO suffix (name_short, name_long) VALUES ('FOREST', 'Forest');
-- INSERT INTO suffix (name_short, name_long) VALUES ('FWY', 'Freeway');
-- INSERT INTO suffix (name_short, name_long) VALUES ('FRONT', 'Front');
-- INSERT INTO suffix (name_short, name_long) VALUES ('GDNS', 'Gardens');
-- INSERT INTO suffix (name_short, name_long) VALUES ('GATE', 'Gate');
-- INSERT INTO suffix (name_short, name_long) VALUES ('GLADE', 'Glade');
-- INSERT INTO suffix (name_short, name_long) VALUES ('GLEN', 'Glen');
-- INSERT INTO suffix (name_short, name_long) VALUES ('GREEN', 'Green');
-- INSERT INTO suffix (name_short, name_long) VALUES ('GRNDS', 'Grounds');
-- INSERT INTO suffix (name_short, name_long) VALUES ('GROVE', 'Grove');
-- INSERT INTO suffix (name_short, name_long) VALUES ('HARBR', 'Harbour');
-- INSERT INTO suffix (name_short, name_long) VALUES ('HEATH', 'Heath');
-- INSERT INTO suffix (name_short, name_long) VALUES ('HTS', 'Heights');
-- INSERT INTO suffix (name_short, name_long) VALUES ('HGHLDS', 'Highlands');
-- INSERT INTO suffix (name_short, name_long) VALUES ('HWY', 'Highway');
-- INSERT INTO suffix (name_short, name_long) VALUES ('HILL', 'Hill');
-- INSERT INTO suffix (name_short, name_long) VALUES ('HOLLOW', 'Hollow');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ÎLE', 'Île');
-- INSERT INTO suffix (name_short, name_long) VALUES ('IMP', 'Impasse');
-- INSERT INTO suffix (name_short, name_long) VALUES ('INLET', 'Inlet');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ISLAND', 'Island');
-- INSERT INTO suffix (name_short, name_long) VALUES ('KEY', 'Key');
-- INSERT INTO suffix (name_short, name_long) VALUES ('KNOLL', 'Knoll');
-- INSERT INTO suffix (name_short, name_long) VALUES ('LANDNG', 'Landing');
-- INSERT INTO suffix (name_short, name_long) VALUES ('LANE', 'Lane');
-- INSERT INTO suffix (name_short, name_long) VALUES ('LMTS', 'Limits');
-- INSERT INTO suffix (name_short, name_long) VALUES ('LINE', 'Line');
-- INSERT INTO suffix (name_short, name_long) VALUES ('LINK', 'Link');
-- INSERT INTO suffix (name_short, name_long) VALUES ('LKOUT', 'Lookout');
-- INSERT INTO suffix (name_short, name_long) VALUES ('LOOP', 'Loop');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MALL', 'Mall');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MANOR', 'Manor');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MAZE', 'Maze');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MEADOW', 'Meadow');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MEWS', 'Mews');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MONTÉE', 'Montée');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MOOR', 'Moor');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MOUNT', 'Mount');
-- INSERT INTO suffix (name_short, name_long) VALUES ('MTN', 'Mountain');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ORCH', 'Orchard');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PARADE', 'Parade');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PARC', 'Parc');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PK', 'Park');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PKY', 'Parkway');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PASS', 'Passage');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PATH', 'Path');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PTWAY', 'Pathway');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PINES', 'Pines');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PL', 'Place');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PLACE', 'Place-F');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PLAT', 'Plateau');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PLAZA', 'Plaza');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PT', 'Point');
-- INSERT INTO suffix (name_short, name_long) VALUES ('POINTE', 'Pointe');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PORT', 'Port');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PVT', 'Private');
-- INSERT INTO suffix (name_short, name_long) VALUES ('PROM', 'Promenade');
-- INSERT INTO suffix (name_short, name_long) VALUES ('QUAI', 'Quai');
-- INSERT INTO suffix (name_short, name_long) VALUES ('QUAY', 'Quay');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RAMP', 'Ramp');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RANG', 'Rang');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RG', 'Range');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RIDGE', 'Ridge');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RISE', 'Rise');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RD', 'Road');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RDPT', 'Rond-point');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RTE', 'Route');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ROW', 'Row');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RUE', 'Rue');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RLE', 'Ruelle');
-- INSERT INTO suffix (name_short, name_long) VALUES ('RUN', 'Run');
-- INSERT INTO suffix (name_short, name_long) VALUES ('SENT', 'Sentier');
-- INSERT INTO suffix (name_short, name_long) VALUES ('SQ', 'Square');
-- INSERT INTO suffix (name_short, name_long) VALUES ('ST', 'Street');
-- INSERT INTO suffix (name_short, name_long) VALUES ('SUBDIV', 'Subdivision');
-- INSERT INTO suffix (name_short, name_long) VALUES ('TERR', 'Terrace');
-- INSERT INTO suffix (name_short, name_long) VALUES ('TSSE', 'Terrasse');
-- INSERT INTO suffix (name_short, name_long) VALUES ('THICK', 'Thicket');
-- INSERT INTO suffix (name_short, name_long) VALUES ('TOWERS', 'Towers');
-- INSERT INTO suffix (name_short, name_long) VALUES ('TLINE', 'Townline');
-- INSERT INTO suffix (name_short, name_long) VALUES ('TRAIL', 'Trail');
-- INSERT INTO suffix (name_short, name_long) VALUES ('TRNABT', 'Turnabout');
-- INSERT INTO suffix (name_short, name_long) VALUES ('VALE', 'Vale');
-- INSERT INTO suffix (name_short, name_long) VALUES ('VIA', 'Via');
-- INSERT INTO suffix (name_short, name_long) VALUES ('VIEW', 'View');
-- INSERT INTO suffix (name_short, name_long) VALUES ('VILLGE', 'Village');
-- INSERT INTO suffix (name_short, name_long) VALUES ('VILLAS', 'Villas');
-- INSERT INTO suffix (name_short, name_long) VALUES ('VISTA', 'Vista');
-- INSERT INTO suffix (name_short, name_long) VALUES ('VOIE', 'Voie');
-- INSERT INTO suffix (name_short, name_long) VALUES ('WALK', 'Walk');
-- INSERT INTO suffix (name_short, name_long) VALUES ('WAY', 'Way');
-- INSERT INTO suffix (name_short, name_long) VALUES ('WHARF', 'Wharf');
-- INSERT INTO suffix (name_short, name_long) VALUES ('WOOD', 'Wood');
-- INSERT INTO suffix (name_short, name_long) VALUES ('WYND', 'Wynd');


-- Insert records into City table
INSERT INTO city (name) VALUES (' Barrie');
INSERT INTO city (name) VALUES (' Belleville');
INSERT INTO city (name) VALUES (' Brampton');
INSERT INTO city (name) VALUES (' Brant');
INSERT INTO city (name) VALUES (' Brantford');
INSERT INTO city (name) VALUES (' Brockville');
INSERT INTO city (name) VALUES (' Burlington');
INSERT INTO city (name) VALUES (' Cambridge');
INSERT INTO city (name) VALUES (' Clarence-Rockland');
INSERT INTO city (name) VALUES (' Cornwall');
INSERT INTO city (name) VALUES (' Dryden');
INSERT INTO city (name) VALUES (' Elliot Lake');
INSERT INTO city (name) VALUES (' Greater Sudbury');
INSERT INTO city (name) VALUES (' Guelph');
INSERT INTO city (name) VALUES (' Haldimand County');
INSERT INTO city (name) VALUES (' Hamilton');
INSERT INTO city (name) VALUES (' Kawartha Lakes');
INSERT INTO city (name) VALUES (' Kenora');
INSERT INTO city (name) VALUES (' Kingston');
INSERT INTO city (name) VALUES (' Kitchener');
INSERT INTO city (name) VALUES (' London');
INSERT INTO city (name) VALUES (' Markham');
INSERT INTO city (name) VALUES (' Mississauga');
INSERT INTO city (name) VALUES (' Niagara Falls');
INSERT INTO city (name) VALUES (' Norfolk County');
INSERT INTO city (name) VALUES (' North Bay');
INSERT INTO city (name) VALUES (' Orillia');
INSERT INTO city (name) VALUES (' Oshawa');
INSERT INTO city (name) VALUES (' Ottawa');
INSERT INTO city (name) VALUES (' Owen Sound');
INSERT INTO city (name) VALUES (' Pembroke');
INSERT INTO city (name) VALUES (' Peterborough');
INSERT INTO city (name) VALUES (' Pickering');
INSERT INTO city (name) VALUES (' Port Colborne');
INSERT INTO city (name) VALUES (' Prince Edward County');
INSERT INTO city (name) VALUES (' Quinte West');
INSERT INTO city (name) VALUES (' Sarnia');
INSERT INTO city (name) VALUES (' Sault Ste. Marie');
INSERT INTO city (name) VALUES (' St. Catharines');
INSERT INTO city (name) VALUES (' St. Thomas');
INSERT INTO city (name) VALUES (' Stratford');
INSERT INTO city (name) VALUES (' Temiskaming Shores');
INSERT INTO city (name) VALUES (' Thorold');
INSERT INTO city (name) VALUES (' Thunder Bay');
INSERT INTO city (name) VALUES (' Timmins');
INSERT INTO city (name) VALUES (' Toronto');
INSERT INTO city (name) VALUES (' Vaughan');
INSERT INTO city (name) VALUES (' Waterloo');
INSERT INTO city (name) VALUES (' Welland');
INSERT INTO city (name) VALUES (' Windsor');
INSERT INTO city (name) VALUES (' Woodstock');


-- Insert records into Property Type table
INSERT INTO property_type (name) VALUES (' Residential');
INSERT INTO property_type (name) VALUES (' Recreational');
INSERT INTO property_type (name) VALUES (' Condo/Strata');
INSERT INTO property_type (name) VALUES (' Multi Family');
INSERT INTO property_type (name) VALUES (' Agriculture');
INSERT INTO property_type (name) VALUES (' Parking Land');
INSERT INTO property_type (name) VALUES (' Vacant Land');
INSERT INTO property_type (name) VALUES (' No Preference');


-- Insert records into Property For table
INSERT INTO property_for (name) VALUES (' For sale');
INSERT INTO property_for (name) VALUES (' For rent');
INSERT INTO property_for (name) VALUES (' For sale or rent');


-- Insert records into Parking table
INSERT INTO parking (name) VALUES (' Garage');
INSERT INTO parking (name) VALUES (' Attached Garage');
INSERT INTO parking (name) VALUES (' Detached Garage');
INSERT INTO parking (name) VALUES (' Open Parking');
INSERT INTO parking (name) VALUES (' Street Parking');
INSERT INTO parking (name) VALUES ('No Parking');


-- Insert records into Heating table
INSERT INTO heating (name) VALUES (' Baseboard Heaters');
INSERT INTO heating (name) VALUES (' Forced Air');
INSERT INTO heating (name) VALUES (' Radiant Heat');
INSERT INTO heating (name) VALUES (' Unknown');