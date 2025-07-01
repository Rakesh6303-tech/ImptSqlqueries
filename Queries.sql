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





  



   
