Drop database project2_db;

CREATE DATABASE project2_db;
USE project2_db;

-- Create tables for raw data to be loaded into
CREATE TABLE features_table (
date date PRIMARY KEY,
Temperature float,
Fuel_Price float,
markdown1 varchar(20),
markdown2 varchar(20),
markdown3 varchar(20),
markdown4 varchar(20),
markdown5 varchar(20),
CPI float,
unemployment float,
isHoliday boolean
);

CREATE TABLE stores_table (
store INT PRIMARY KEY,
type TEXT,
size int
);

CREATE TABLE info_table (
date date PRIMARY KEY,
store int,
Dept int,
Weekly_Sales float,
IsHoliday boolean
);
