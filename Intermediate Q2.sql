SELECT DISTINCT d.departmentname
FROM Department d
WHERE d.departmentid IN (
    SELECT e.departmentid 
    FROM Employee e 
    WHERE e.salary > 60000
);