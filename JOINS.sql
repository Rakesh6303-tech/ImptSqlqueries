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
