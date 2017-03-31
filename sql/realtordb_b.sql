-- Realtor database

-- create database
-- CREATE DATABASE IF NOT EXISTS realtor;
CREATE OR REPLACE DATABASE realtordb_b;

USE realtordb_b;

-- create tables



-- Property table
CREATE TABLE property(
	property_id int not null auto_increment primary key,
	mls_no int,
	listing_price numeric(9,2),
	address varchar(100) not null,
	description varchar(1000) not null,
	property_type varchar(50) not null,
	property_for varchar(50) not null,
	land_size varchar(15),
	zoning varchar(15), 
	taxes numeric(6,2),
	taxes_year int,
	amenities varchar(100),	
	features varchar(100),
	is_active tinyint
)ENGINE=InnoDB;

-- Image table
CREATE TABLE image(
	image_id int not null auto_increment primary key,
	property_id int not null,
	image_name varchar(50),	
	FOREIGN KEY fk_property_image(property_id)
	REFERENCES property(property_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;

-- Building table
CREATE TABLE building(
	building_id int not null auto_increment primary key,
	property_id int not null,
	building_type varchar(50) not null,
	building_style varchar(50),
	bedrooms int,
	bathrooms tinyint,
	heating varchar(100),
	cooling varchar(100),
	flooring varchar(100),
	parking varchar(100),
	exterior varchar(100),
	water varchar(100),
	sewarage varchar(100),
	year_built int,
	foundation varchar(100),	
	walking_score tinyint,
	FOREIGN KEY fk_property_building(property_id)
	REFERENCES property(property_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;



-- Building Room table
CREATE TABLE building_room(
	building_room int not null auto_increment primary key,
	building_id int not null,
	room_type varchar(15) not null,
	room_level varchar(15) not null,
	dimensions varchar(10),
	FOREIGN KEY fk_building_building_room(building_id)
	REFERENCES building(building_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)ENGINE=InnoDB;


