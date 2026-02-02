USE united_nations;
-- select all columns in the database
SELECT
*
FROM
Access_to_basic_services;

-- select all columns and limit to 1o rows
SELECT
*
FROM
access_to_basic_services
LIMIT 10;

-- select ddistinct column
SELECT distinct
Country_name
FROM
access_to_basic_services;

-- saving the query into a table
CREATE TABLE
Country_list (
country_name VARCHAR(225)
);
INSERT INTO Country_list(
country_name
)
SELECT DISTINCT 
country_name
FROM
access_to_basic_services;

-- check for country that has the lowest pct of people with access to managed drinking water services
SELECT
Country_name,
Time_period,
Pct_managed_drinking_water_services as Pct_access_water
FROM
Access_to_basic_services
WHERE
Time_period = 2020