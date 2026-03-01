SELECT name
FROM Employee
WHERE departmentid = (
    SELECT departmentid 
    FROM Employee 
    WHERE name = 'Abhishek'
);