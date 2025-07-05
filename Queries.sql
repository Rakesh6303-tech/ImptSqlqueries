-- Hacker Rank SQL Queries
--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
  select count(city) - count(distinct city) from station;
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

-- To Get the Top 2 Lowest Salaries:
    select salary from Employees order by salary asc limit 2;

-- Find all duplicate email addresses in the employee table and show how many times each one appears
      select Email, count(Email) AS appears
       from Employee
       GROUP BY Email
      Having COUNT(Email)>1;

-- Find Average Salary From Each Deptartment
    select e_dept, avg(salary) from Employees Group by e_dept;
-- Find Sum of salary From Each Department
    select e_dept sum(salary) from Employees Group by e_dept;
   

-- To find employees who joined in the last month from the current date, 
     --you can use the JOIN_DATE column and filter with MySQL's date functions.
   SELECT Name, JoinDate
   FROM Employees
   WHERE JoinDate >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);



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





  



   
