SELECT e.name
FROM Employee e
WHERE e.empid NOT IN (
    SELECT DISTINCT s.empid 
    FROM Sales s
);