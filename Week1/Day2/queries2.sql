--SELECT
--Q1
SELECT * FROM Employees
WHERE salary > 70000;

--Q2
SELECT * FROM Employees
WHERE city = 'Hyderabad';

--Q3
SELECT * FROM Employees
WHERE experience < 4;

--Q4
SELECT * FROM Employees
WHERE department = 'Finance';

--Q5
SELECT * FROM Employees
WHERE salary = 52000;

--GROUP BY
--Q1
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;

--Q2
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;

--Q3
SELECT city, COUNT(*) AS employee_count
FROM Employees
GROUP BY city;

--Q4
SELECT department, MAX(salary) AS max_salary
FROM Employees
GROUP BY department;

--Q5
SELECT department, MIN(experience) AS min_experience
FROM Employees
GROUP BY department;

--HAVING
--Q1
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 3;

--Q2
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;

--Q3
SELECT city, COUNT(*) AS total_employees
FROM Employees
GROUP BY city
HAVING COUNT(*) > 2;

--Q4
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 200000;

--Q5
SELECT department, MAX(salary) AS max_salary
FROM Employees
GROUP BY department
HAVING MAX(salary) > 90000;

--TOP
--Q1
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 5;

--Q2
SELECT * FROM Employees
ORDER BY experience DESC
LIMIT 3;

--Q3
SELECT * FROM Employees
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 2;

--Q4
SELECT * FROM Employees
WHERE city = 'Hyderabad'
LIMIT 4;

--Q5
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 1;

--DISTINCT
--Q1
SELECT DISTINCT department FROM Employees;

--Q2
SELECT DISTINCT city FROM Employees;

--Q3
SELECT DISTINCT salary FROM Employees;

--Q4
SELECT DISTINCT department, city FROM Employees;

--Q5
SELECT DISTINCT experience FROM Employees;

--COMPARISON OPERATORS
--Q1
SELECT * FROM Employees
WHERE salary >= 80000;

--Q2
SELECT * FROM Employees
WHERE experience <= 3;

--Q3
SELECT * FROM Employees
WHERE salary <> 45000;

--Q4
SELECT * FROM Employees
WHERE salary < 50000;

--Q5
SELECT * FROM Employees
WHERE experience > 5;

--LOGICAL OPERATORS
--Q1
SELECT * FROM Employees
WHERE department = 'IT' AND salary > 70000;

--Q2
SELECT * FROM Employees
WHERE city = 'Hyderabad' OR city = 'Bangalore';

--Q3
SELECT * FROM Employees
WHERE department = 'HR' AND experience < 3;

--Q4
SELECT * FROM Employees
WHERE salary > 60000 OR experience > 6;

--Q5
SELECT * FROM Employees
WHERE department != 'Sales';

--IN AND NOT IN
--Q1
SELECT * FROM Employees
WHERE city IN ('Hyderabad', 'Mumbai');

--Q2
SELECT * FROM Employees
WHERE department IN ('IT', 'Finance');

--Q3
SELECT * FROM Employees
WHERE city NOT IN ('Chennai', 'Pune');

--Q4
SELECT * FROM Employees
WHERE salary IN (45000, 75000, 91000);

--Q5
SELECT * FROM Employees
WHERE department NOT IN ('HR', 'Sales');

--BETWEEN
--Q1
SELECT * FROM Employees
WHERE salary BETWEEN 50000 AND 80000;

--Q2
SELECT * FROM Employees
WHERE experience BETWEEN 3 AND 6;

--Q3
SELECT * FROM Employees
WHERE emp_id BETWEEN 105 AND 112;

--Q4
SELECT * FROM Employees
WHERE salary NOT BETWEEN 40000 AND 60000;

--Q5
SELECT * FROM Employees
WHERE experience BETWEEN 2 AND 4;

--LIKE OPERATOR
--Q1
SELECT * FROM Employees
WHERE emp_name LIKE 'R%';

--Q2
SELECT * FROM Employees
WHERE emp_name LIKE '%a';

--Q3
SELECT * FROM Employees
WHERE emp_name LIKE '%v%';

--Q4
SELECT * FROM Employees
WHERE city LIKE 'B%';

--Q5
SELECT * FROM Employees
WHERE department LIKE '%s';



