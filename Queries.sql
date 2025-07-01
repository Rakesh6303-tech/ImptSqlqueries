-- Hacker Rank SQL Queries
--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
  select count(city) - count(distinct city) from station;
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
--Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  
--per month who have been employees for less than  months. Sort your result by ascending employee_id.
  select name from Employee where salary>2000 and months<10 order by employee_id asc;

-- Most Important Queries
--To find the 2nd highest salary from an employees
     -- This skips the highest salary (OFFSET 1) and returns the next one.
   SELECT DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 1;
--Find duplicate records in a table.
   SELECT Emp_Name, COUNT(*) FROM employees GROUP BY Emp_NameHAVING COUNT(*) > 1;
--Find employees who earn more than the average salary in their department.
  SELECT * FROM employees e 
  WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE Dept_id = e.Dept_id
);






-- LEFT JOIN (LEFT OUTER JOIN)
-- Returns all rows from the left table, plus matched rows from the right table. Unmatched rows get NULL.
--  Use case: Show all employees, even those not assigned to a department.
   SELECT e.Emp_Name, d.Dept_Name
FROM employees e
LEFT JOIN departments d ON e.Dept_id = d.Dept_id;

-- RIGHT JOIN (RIGHT OUTER JOIN)
-- Returns all rows from the right table, plus matched rows from the left table
--Use case: List all departments, including those with no employees.
SELECT e.Emp_Name, d.Dept_Name
FROM employees e
RIGHT JOIN departments d ON e.Dept_id = d.Dept_id;

--FULL OUTER JOIN (Not supported in MySQL)
--Returns all records when there is a match in one of the tables.
--Use case: List all employees and all departments, showing NULLs where there’s no match.
-- MySQL workaround using UNION:
SELECT e.Emp_Name, d.Dept_Name
FROM employees e
LEFT JOIN departments d ON e.Dept_id = d.Dept_id

UNION

SELECT e.Emp_Name, d.Dept_Name
FROM employees e
RIGHT JOIN departments d ON e.Dept_id = d.Dept_id;

--SELF JOIN
--A table joined with itself.
--Use case: Show employees and their managers using a Manager_id foreign key.
SELECT e1.Emp_Name AS Employee, e2.Emp_Name AS Manager
FROM employees e1
JOIN employees e2 ON e1.Manager_id = e2.Emp_id;


--CROSS JOIN
--Returns Cartesian product (every row in A joins with every row in B).
-- Use case: Generate all possible employee-department pairings (e.g., for simulation/testing).
SELECT e.Emp_Name, d.Dept_Name
FROM employees e
CROSS JOIN departments d;


-- JOINS QUERIES FROM HACKER RANK
--Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
select sum(CITY.POPULATION)
from CITY INNER JOIN COUNTRY
on CITY.COUNTRYCODE=COUNTRY.CODE where CONTINENT='Asia';
--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
select CITY.NAME
from CITY inner join country
on CITY.CountryCode=COUNTRY.Code
where CONTINENT='Africa';



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


-- Traingles
--Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
--Output one of the following statements for each record in the table:
--Equilateral: It's a triangle with  sides of equal length.
--Isosceles: It's a triangle with  sides of equal length.
--Scalene: It's a triangle with  sides of differing lengths.
--Not A Triangle: The given values of A, B, and C don't form a triangle.
  select case when A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
   WHEN A = B AND B = C 
   THEN 'Equilateral'

   WHEN A = B OR B = C OR A = C
       THEN 'Isosceles'

   ELSE 'Scalene'
  END AS triangle_type FROM triangles;





  



   
