SELECT d.departmentname
FROM Department d
WHERE d.departmentid IN (
    SELECT e.departmentid
    FROM Employee e
    GROUP BY e.departmentid
    HAVING AVG(e.salary) > 55000
);