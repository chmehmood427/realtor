-- Realtor database

-- create database
-- CREATE DATABASE IF NOT EXISTS realtor;
CREATE OR REPLACE DATABASE realtor;

USE realtor;

-- create tables

-- Tables related to Address
-- Province table
CREATE TABLE province(
	province_id tinyint not null auto_increment primary key,
	name_short char(2) not null,
	name_long varchar(30)
)ENGINE=InnoDB;

-- City table
CREATE TABLE city(
	city_id int not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Suffix table
CREATE TABLE suffix(
	suffix_id smallint not null auto_increment primary key,
	name_short char(5) not null,
	name_long varchar(15) not null
)ENGINE=InnoDB;

-- Direction table
CREATE TABLE direction(
	direction_id tinyint not null auto_increment primary key,
	name_short  char(2) not null,
	name_long varchar(15) not null
)ENGINE=InnoDB;

-- Address table
CREATE TABLE address(
	address_id int not null auto_increment primary key,
	house_no  varchar(10) not null,
	street varchar(15) not null,
	suffix_id smallint,
	direction_id tinyint,
	apartment_no varchar(10),
	city_id int not null,
	province_id tinyint not null,
	FOREIGN KEY fk_suffix_address(suffix_id)
	REFERENCES suffix(suffix_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_direction_address(direction_id)
	REFERENCES direction(direction_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_city_address(city_id)
	REFERENCES city(city_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_province_address(province_id)
	REFERENCES province(province_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;


-- Tables related to Property
-- Property Type table
CREATE TABLE property_type(
	property_type_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Property For table
CREATE TABLE property_for(
	property_for_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Zoning table
CREATE TABLE zoning(
	zoning_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Property table
CREATE TABLE property(
	property_id int not null auto_increment primary key,
	address_id int not null,
	description varchar(1000) not null,
	property_type_id tinyint not null,
	property_for_id tinyint not null,
	land_size varchar(15),
	zoning varchar(15), --manually type it
	taxes int,
	taxes_year int,
	FOREIGN KEY fk_address_property(address_id)
	REFERENCES address(address_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_property_type_property(property_type_id)
	REFERENCES property_type(property_type_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_property_for_property(property_for_id)
	REFERENCES property_for(property_for_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Image table
CREATE TABLE image(
	image_id int not null auto_increment primary key,
	property_id int not null,
	image_name varchar(10),	
	FOREIGN KEY fk_property_image(property_id)
	REFERENCES property(property_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;


-- Tables related to Building
-- Building Type table
CREATE TABLE building_type(
	building_type_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Style table
CREATE TABLE style(
	style_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Cooling table
CREATE TABLE cooling(
	cooling_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Foundation table
CREATE TABLE foundation(
	foundation_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Building table
CREATE TABLE building(
	building_id int not null auto_increment primary key,
	property_id int not null,
	building_type_id tinyint not null,
	style_id tinyint,
	bedrooms int,
	bathrooms tinyint,
	cooling_id tinyint,
	year_built int,
	foundation_id tinyint,	
	walking_score tinyint,
	FOREIGN KEY fk_property_building(property_id)
	REFERENCES property(property_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_building_type(building_type_id)
	REFERENCES building_type(building_type_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_style(style_id)
	REFERENCES style(style_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_cooling(cooling_id)
	REFERENCES cooling(cooling_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_foundation(foundation_id)
	REFERENCES foundation(foundation_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Parking table
CREATE TABLE parking(
	parking_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Heating Type table
CREATE TABLE heating(
	heating_id tinyint not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Property View table
CREATE TABLE property_view(
	property_view_id tinyint not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Exterior table
CREATE TABLE exterior(
	exterior_id tinyint not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Flooring table
CREATE TABLE flooring(
	flooring_id tinyint not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Sewarage table
CREATE TABLE sewarage(
	sewarage_id tinyint not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Room Level table
CREATE TABLE room_level(
	room_level_id tinyint not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Room Type table
CREATE TABLE room_type(
	room_type_id tinyint not null auto_increment primary key,
	name  varchar(50) not null
)ENGINE=InnoDB;

-- Building Parking table
CREATE TABLE building_parking(
	building_id int not null,
	parking_id tinyint not null,
	PRIMARY KEY (building_id, parking_id),
	FOREIGN KEY fk_building_building_parking(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_parking_building_parking(parking_id)
	REFERENCES parking(parking_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Building Heating table
CREATE TABLE building_heating(
	building_id int not null,
	heating_id tinyint not null,
	PRIMARY KEY (building_id, heating_id),
	FOREIGN KEY fk_building_building_heating(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_heating_building_heating(heating_id)
	REFERENCES heating(heating_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Building Poperty View table
CREATE TABLE building_property_view(
	building_id int not null,
	property_view_id tinyint not null,
	PRIMARY KEY (building_id, property_view_id),
	FOREIGN KEY fk_building_building_property_view(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_property_view_building_property_view(property_view_id)
	REFERENCES property_view(property_view_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Building Exterior table
CREATE TABLE building_exterior(
	building_id int not null,
	exterior_id tinyint not null,
	PRIMARY KEY (building_id, exterior_id),
	FOREIGN KEY fk_building_building_exterior(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_exterior_building_exterior(exterior_id)
	REFERENCES exterior(exterior_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Building Flooring table
CREATE TABLE building_flooring(
	building_id int not null,
	flooring_id tinyint not null,
	PRIMARY KEY (building_id, flooring_id),
	FOREIGN KEY fk_building_building_flooring(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_flooring_building_flooring(flooring_id)
	REFERENCES flooring(flooring_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Building Sewarage table
CREATE TABLE building_sewarage(
	building_id int not null,
	sewarage_id tinyint not null,
	PRIMARY KEY (building_id, sewarage_id),
	FOREIGN KEY fk_building_building_sewarage(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_sewarage_building_sewarage(sewarage_id)
	REFERENCES sewarage(sewarage_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Building Room table
CREATE TABLE building_room(
	building_id int not null,
	room_type_id tinyint not null,
	room_level_id tinyint not null,
	room_no tinyint not null,
	dimensions varchar(10),
	PRIMARY KEY (building_id, room_type_id, room_level_id, room_no),
	FOREIGN KEY fk_building_building_room(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_room_type_building_room(room_type_id)
	REFERENCES room_type(room_type_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_room_level_building_room(room_level_id)
	REFERENCES room_level(room_level_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;


-- Tables related to listing
-- Person table
CREATE TABLE person(
	person_id int not null auto_increment primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	address_id int not null,
	home_phone varchar(13),
	cell_phone varchar(13),
	office_phone varchar(13),
	fax varchar(13),
	email varchar(13),
	note  varchar(250),
	FOREIGN KEY fk_address_person(address_id)
	REFERENCES address(address_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Agent table
CREATE TABLE agent(
	agent_id int not null auto_increment primary key,
	person_id int not null,
	office_address_id int not null,
	picture_path varchar(100),	
	FOREIGN KEY fk_person_agent(person_id)
	REFERENCES person(person_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_address_agent(office_address_id)
	REFERENCES address(address_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Status table
CREATE TABLE status(
	status_id tinyint not null auto_increment primary key,
	name varchar(50) not null
)ENGINE=InnoDB;

-- Listing table
CREATE TABLE listing(
	listing_id int not null auto_increment primary key,
	mls_no varchar(10),
	property_id int not null,
	description varchar(1000) not null,
	listing_date date not null,
	listing_price numeric(15,2) not null,
	is_active tinyint not null,
	status_id tinyint not null,
	sold_date date,
	sold_price numeric(15,2),
	FOREIGN KEY fk_property_listing(property_id)
	REFERENCES property(property_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_status_listing(status_id)
	REFERENCES status(status_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Listing Seller table
CREATE TABLE listing_seller(
	listing_id int not null,
	seller_id int not null,
	PRIMARY KEY (listing_id, seller_id),
	FOREIGN KEY fk_listing_listing_seller(listing_id)
	REFERENCES listing(listing_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_person_listing_seller(seller_id)
	REFERENCES person(person_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Listing Buyer table
CREATE TABLE listing_buyer(
	listing_id int not null,
	buyer_id int not null,
	PRIMARY KEY (listing_id, buyer_id),
	FOREIGN KEY fk_listing_listing_buyer(listing_id)
	REFERENCES listing(listing_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_person_listing_buyer(buyer_id)
	REFERENCES person(person_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Listing Agent table
CREATE TABLE listing_agent(
	listing_id int not null,
	agent_id int not null,
	PRIMARY KEY (listing_id, agent_id),
	FOREIGN KEY fk_listing_listing_agent(listing_id)
	REFERENCES listing(listing_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	FOREIGN KEY fk_agent_listing_agent(agent_id)
	REFERENCES agent(agent_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;