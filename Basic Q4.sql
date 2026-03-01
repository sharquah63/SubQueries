SELECT e.name
FROM Employee e
WHERE e.empid = (
    SELECT s.empid
    FROM Sales s
    WHERE s.saleamount = (
        SELECT MAX(saleamount) 
        FROM Sales
    )
);