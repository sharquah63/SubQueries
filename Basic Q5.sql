SELECT name
FROM Employee
WHERE salary > (
    SELECT salary 
    FROM Employee 
    WHERE name = 'Shubham'
);