--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. 
  SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiou]';
--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
  select DISTINCT CITY from STATION where CITY RLIKE '[aeiouAEIOU]$';
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
  select CITY from STATION where CITY REGEXP '^[aeiouAEIOU]' AND CITY REGEXP '[aeiouAEIOU]$';
--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
  select DISTINCT CITY from STATION where CITY not REGEXP '^[aeiouAEIOU]';
--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
  select DISTINCT CITY from STATION where CITY not REGEXP '[aeiouAEIOU]$';
--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
  select DISTINCT CITY from STATION where CITY NOT  REGEXP '^[aeiouAEIOU]' OR CITY NOT REGEXP '[aeiouAEIOU]$';
