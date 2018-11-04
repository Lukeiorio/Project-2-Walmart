Drop database if exists project2_db;

CREATE DATABASE project2_db;
USE project2_db;

-- Create tables for raw data to be loaded into
CREATE TABLE features_table (
date FLOAT PRIMARY KEY,
temperature float,
fuel_price float,
CPI float,
unemployment float
);

CREATE TABLE stores_table (
store_id float PRIMARY KEY,
size int
);

CREATE TABLE info_table (
date float ,
store_id float PRIMARY KEY,
weekly_sales float,
is_holiday boolean
);
-- new table--
CREATE TABLE final (
    store_id INT,
    size int(50),
    date float,
    weekly_sales float,
    unemployment float,
    fuel_price float,
    is_holiday boolean,
    PRIMARY KEY (store_id),
	FOREIGN KEY (date) REFERENCES stores_table(store_id)
);

-- Let's populate the third table
INSERT INTO final (size, store_id)
SELECT size, store_id
FROM stores_table;
INSERT INTO final (date,weekly_sales,is_holiday, store_id)
SELECT date,weekly_sales, is_holiday, store_id
FROM info_table;
INSERT INTO final (unemployment,fuel_price, date)
SELECT unemployment,fuel_price, date
FROM features_table;