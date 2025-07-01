    --Aggregation Functions Hacker Rank
--Query the total population of all cities in CITY where District is California.
  select sum(population) from CITY where DISTRICT='California';
--Query a count of the number of cities in CITY having a Population larger than .
  select count(NAME) from CITY where Population>100000;
--Query the average population of all cities in CITY where District is California.
  select avg(population) from CITY where DISTRICT='California';
--Query the average population for all cities in CITY, rounded down to the nearest integer.
  select ROUND(AVG(population)) from city;
--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
  select sum(population) from city where countrycode='JPN';
--Query the difference between the maximum and minimum populations in CITY.
  select max(population)-min(population) from CITY;
--Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to  decimal places.
  select TRUNCATE(sum(LAT_N),4) from STATION where LAT_N>38.7880 AND LAT_N<137.2345;
--Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to  decimal places.
  select TRUNCATE(MAX(LAT_N),4) from STATION where LAT_N<137.2345;
--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to  decimal places.  
  SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N=(SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7880. Round your answer to 4 decimal places.
  select round(min(LAT_N),4) from STATION where LAT_N>38.7780;

