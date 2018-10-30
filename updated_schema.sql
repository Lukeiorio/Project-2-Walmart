Drop database project2_db;

CREATE DATABASE project2_db;
USE project2_db;

-- Create tables for raw data to be loaded into
CREATE TABLE features_table (
date date PRIMARY KEY,
Temperature float,
Fuel_Price float,
CPI float,
unemployment float
);

CREATE TABLE stores_table (
store_id INT PRIMARY KEY,
size int
);

CREATE TABLE info_table (
date date PRIMARY KEY,
store_id int,
Weekly_Sales float,
IsHoliday boolean
);
