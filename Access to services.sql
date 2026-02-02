CREATE DATABASE United_nations;
USE United_nations;
CREATE TABLE access_to_basic_services(
Region VARCHAR(32),
Sub_region VARCHAR(25),
Country_name INTEGER NOT NULL,
Time_Period INTEGER NOT NULL,
PCT_managed_drinking_water_services NUMERIC(5,2),
PCT_managed_sanitation_services NUMERIC(5,2),
EST_populations_in_millions NUMERIC(11,6),
Est_gdp_in_billions NUMERIC(8,2),
Land_area NUMERIC(10,2),
Pct_unemploymwnt NUMERIC(5,2)
);

ALTER TABLE access_to_basic_services
MODIFY COLUMN Country_name VARCHAR(37);

ALTER TABLE access_to_basic_services
ADD COLUMN Gini_index FLOAT;

ALTER TABLE access_to_basic_services
DROP COLUMN Gini_index;

UPDATE access_to_basic_services
SET Pct_unemployment = 4.53
WHERE Country_name = 'China'
AND Time_period = 2016;