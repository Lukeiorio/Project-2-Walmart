create table final_tab
as
SELECT stores_table.store_id, info_table.weekly_sales,  features_table.fuel_price, features_table.CPI
FROM stores_table
INNER JOIN info_table ON
stores_table.store_id = info_table.store_id
INNER JOIN features_table ON
stores_table.store_id = features_table.store_id;
use project2_db;
create view store_sales_average
as
SELECT store_id, AVG(weekly_sales) AS total_stores_sales FROM final_tab GROUP BY store_id;