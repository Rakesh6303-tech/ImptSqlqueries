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

-- Most Important Querries
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




-- JOINS
--List employee names along with their department names (even if no department).
   SELECT e.Emp_Name, d.Dept_Name
FROM employees e
LEFT JOIN departments d ON e.Dept_id = d.Dept_id;

--Inner JOIN
-- List all employees and their department names (only if they belong to a department).
   -- Inner Join (Returns matching rows from both tables.)
SELECT e.Emp_Name, d.Dept_Name
FROM employees e
INNER JOIN departments d ON e.Dept_id = d.Dept_id;

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






  



   
