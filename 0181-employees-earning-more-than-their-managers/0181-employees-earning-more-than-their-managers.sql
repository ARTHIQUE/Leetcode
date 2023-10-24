

SELECT e.name AS employee
FROM employee AS e
JOIN employee AS m ON e.managerid = m.id
WHERE e.salary > m.salary;


