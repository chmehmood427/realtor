-- Insert basic information
USE realtordb_b;

-- Insert records into Property table 
INSERT INTO property VALUES (null,592255, 309900, '856 WEST VILLAGE SQ LONDON, ON',
'BEING BUILT! Welcome home to TRIBECA. Price represents the `Becca` model. Beautiful 3 storey, 3 bdrm, 2+1 bathroom unit, approx 1812 sqft. Includes Quartz countertops in kitchen, laminate flooring throughout main level, 6 appliances, 1 car garage, deck, A/C and contemporary finishes. Experience London`s Urban Townhome Village with six distinct floorplans to satisfy any homeowners needs. The modern design and architectural details are just a few of the important features that make these townhomes standout from the rest. Brand New Vacant Land Condo. You own your land with condo fees of $35/month. Be quick to get the best location. This area is rapidly growing with all modern amenities that are desired by the young professional and growing families. Easy access to shopping, schools, Western University and downtown London make this a highly anticipated location. All meas approx. Note: Pictures are of the artists rendering.',
'Residential', 'Sale', null, 'RES', 2500, 2016, 'Patio(S) Shopping Nearby', 'Park and river nearby', 1);

INSERT INTO image VALUES (null, 1, 'image-1-1.jpg');
INSERT INTO image VALUES (null, 1, 'image-1-2.jpg');
INSERT INTO image VALUES (null, 1, 'image-1-3.jpg');
INSERT INTO image VALUES (null, 1, 'image-1-4.jpg');


INSERT INTO building VALUES (null, 1, 'Apartment', '3 Storey', 3, 3, 'Energy Efficient, Forced Air, Central Air',
'Central air', 'Carpet, Laminate, Ceramic', 'Attached', 'Brick, Vinyl, Stone', 'Municipal', 'Municipal', 2001, 'Concrete', 18);

INSERT INTO building_room VALUES (null, 1, 'FO', 'M', '26.7x6.8');
INSERT INTO building_room VALUES (null, 1, 'LR', '2', '14.8x12.9');
INSERT INTO building_room VALUES (null, 1, 'KI', '2', '13.01x10.6');
INSERT INTO building_room VALUES (null, 1, 'DR', '2', '12.01x9.5');
INSERT INTO building_room VALUES (null, 1, 'MB', '3', '16.6x11.01');
INSERT INTO building_room VALUES (null, 1, 'BR', '3', '10.01x9.');
INSERT INTO building_room VALUES (null, 1, 'BR', '3', '10.01x9.');

-- INSERT INTO property () VALUES ();

-- Insert records into Property table 
INSERT INTO property VALUES (null, 597101, 14900, '1361 COMMISSIONERS RD W, LONDON, ON',
'House for sale only! Must be moved at buyer`s expense. Excellent opportunity to have house moved to your own property. Being sold cheap. Note: Seller is a Licensed Sales Representative',
'Residential', 'Sale', '69.49 X 220 FEET', 'RES', 1800, 2016, 'See Remarks', 'See Remarks', 1);

INSERT INTO image VALUES (null, 2, 'image-2-1.jpg');
INSERT INTO image VALUES (null, 2, 'image-2-2.jpg');
INSERT INTO image VALUES (null, 2, 'image-2-3.jpg');
INSERT INTO image VALUES (null, 2, 'image-2-4.jpg');
INSERT INTO image VALUES (null, 2, 'image-2-5.jpg');
INSERT INTO image VALUES (null, 2, 'image-2-6.jpg');
INSERT INTO image VALUES (null, 2, 'image-2-7.jpg');
INSERT INTO image VALUES (null, 2, 'image-2-8.jpg');


INSERT INTO building VALUES (null, 2, 'Detached', '1-1/2 Storey', 3, 2, 'Energy Efficient, Forced Air, Central Air',
'Central air', 'Carpet, Softwood, Ceramic', 'Attached', 'Vinyl', 'Municipal', 'Municipal', 1934, 'Concrete', 5);

INSERT INTO building_room VALUES (null, 2, 'LF', 'M', '23.3x11.11');
INSERT INTO building_room VALUES (null, 2, 'KI', 'M', '12.2x8.8');
INSERT INTO building_room VALUES (null, 2, 'DR', 'M', '10.2x8.9');
INSERT INTO building_room VALUES (null, 2, 'BR', 'M', '11.5x9.5');
INSERT INTO building_room VALUES (null, 2, 'OT', 'M', '21.2x10');
INSERT INTO building_room VALUES (null, 2, 'BR', '2', '13.11x12.10');
INSERT INTO building_room VALUES (null, 2, 'BR', '2', '13.11x12.');
INSERT INTO building_room VALUES (null, 2, 'FO', 'M', '11.5x11.5');
