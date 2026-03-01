SELECT name
FROM Employee
WHERE salary > (
    SELECT MAX(saleamount) 
    FROM Sales
);