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
