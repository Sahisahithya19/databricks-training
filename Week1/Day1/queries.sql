-- Q1
SELECT * FROM Employee;

--Q2
SELECT name, salary FROM Employee;

--Q3
SELECT * FROM Employee
WHERE age > 30;

--Q4
SELECT name FROM Department;

--Q5
SELECT e.*
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name = 'IT';

--Q6
SELECT * FROM Employee
WHERE name LIKE 'J%';

--Q7
SELECT * FROM Employee
WHERE name LIKE '%e';

--Q8
SELECT * FROM Employee
WHERE name LIKE '%a%';

--Q9
SELECT * FROM Employee
WHERE name LIKE '_________';

--Q10
SELECT * FROM Employee
WHERE name LIKE '_o%';

--Q11
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;

--Q12
SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;

--Q13
SELECT * FROM Employee
WHERE YEAR(hire_date) < 2019;

--Q14
SELECT * FROM Employee
WHERE hire_date >= '2021-03-01';

--Q15
SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

--Q16
SELECT SUM(salary) AS total_salary
FROM Employee;

--Q17
SELECT AVG(salary) AS average_salary
FROM Employee;

--Q18
SELECT MIN(salary) AS minimum_salary
FROM Employee;

--Q19
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id;

--Q20
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id;
