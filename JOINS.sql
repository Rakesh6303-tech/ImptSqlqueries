-- JOINS
     -- Defination: Joins in Sql used to Comnine Two or More Tables Based on releated Column Them.
-- Types Of Joins
  -- Inner Join : is used to combine rows from two or more tables based on {MCBT} matching condition between them.It return Both Records where Specific Conditon is True.
  -- Right Join : is Used to return all Records from right table as well as matching records from the left table. If no matching records will be found in left table , return null values.
  -- Left Join : is used to return all Records from left table as well as matching records from the right table. If no matching records will be found in right table, return null values.
  -- Full Join : Combines the results of both Left Join and Right Join. it return all records both tables. 
                -- In Mysql work Bench full join is not working. We've to use Union operator in Btw Left JOin, Right Join.
  -- Self Join : is a join where a table is joined with itself to compare rows within the same table.
  -- Cross Join : is used to return the Cartersian Product of two tables, meaning it combines every row from the first table with every row from the second table. It doesn't require any condition.

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


