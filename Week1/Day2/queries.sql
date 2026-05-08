--Q21
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

--Q22
SELECT department_id, AVG(age) AS average_age
FROM Employee
GROUP BY department_id;

--Q23
SELECT YEAR(hire_date) AS hire_year,
COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date);

--Q24
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

--Q25
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;

--Q26
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

--Q27
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

--Q28
SELECT YEAR(hire_date) AS hire_year,
COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

--Q29
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

--Q30
SELECT department_id, MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;

--Q31
SELECT * FROM Employee
ORDER BY salary ASC;

--Q32
SELECT * FROM Employee
ORDER BY age DESC;

--Q33
SELECT * FROM Employee
ORDER BY hire_date ASC;

--Q34
SELECT * FROM Employee
ORDER BY department_id, salary;

--Q35
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;

--Q36
SELECT e.name AS employee_name,
d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

--Q37
SELECT p.name AS project_name,
d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-Q38
SELECT e.name AS employee_name,
p.name AS project_name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

--Q39
SELECT e.name AS employee_name,
d.name AS department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

--Q40
SELECT d.name AS department_name,
e.name AS employee_name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;
