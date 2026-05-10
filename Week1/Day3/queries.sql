--Q41
SELECT e.name
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
WHERE p.project_id IS NULL;

--Q42
SELECT e.name,
COUNT(p.project_id) AS project_count
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
GROUP BY e.emp_id, e.name;

--Q43
SELECT d.name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

--Q44
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    WHERE name = 'John Doe'
);

--Q45
SELECT d.name,
AVG(e.salary) AS average_salary
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.name
ORDER BY average_salary DESC
LIMIT 1;

--Q46
SELECT *
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);

--Q47
SELECT *
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);

--Q48
SELECT MAX(salary) AS second_highest_salary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);

--Q49
SELECT department_id,
COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

--Q50
SELECT e.name, e.salary
FROM Employee e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

--Q51
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

--Q52
SELECT *
FROM Employee
WHERE age > ALL (
    SELECT age
    FROM Employee
    WHERE department_id = (
        SELECT department_id
        FROM Department
        WHERE name = 'HR'
    )
);

--Q53
SELECT d.name,
AVG(e.salary) AS average_salary
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.name
HAVING AVG(e.salary) > 55000;

--Q54
SELECT e.name
FROM Employee e
WHERE e.department_id IN (
    SELECT department_id
    FROM Project
    GROUP BY department_id
    HAVING COUNT(project_id) >= 2
);

--Q55
SELECT *
FROM Employee
WHERE hire_date = (
    SELECT hire_date
    FROM Employee
    WHERE name = 'Jane Smith'
);

--Q56
SELECT SUM(salary) AS total_salary
FROM Employee
WHERE YEAR(hire_date) = 2020;

--Q57
SELECT department_id,
AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
ORDER BY average_salary DESC;

--Q58
SELECT department_id,
COUNT(*) AS employee_count,
AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1
AND AVG(salary) > 55000;

--Q59
SELECT *
FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
ORDER BY hire_date;

--Q60
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

--Q61
SELECT e.name,
e.salary
FROM Employee e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

--Q62
SELECT name
FROM Employee
WHERE hire_date = (
    SELECT hire_date
    FROM Employee
    WHERE age = (
        SELECT MAX(age)
        FROM Employee
    )
);

--Q63
SELECT d.name AS department_name,
COUNT(p.project_id) AS total_projects
FROM Department d
LEFT JOIN Project p
ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY total_projects DESC;

--Q64
SELECT e.name,
e.department_id,
e.salary
FROM Employee e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

--Q65
SELECT e.name,
e.salary
FROM Employee e
WHERE e.age > (
    SELECT AVG(age)
    FROM Employee
    WHERE department_id = e.department_id
);
