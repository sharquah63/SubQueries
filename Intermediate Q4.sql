SELECT DISTINCT e.name
FROM Employee e
WHERE e.empid IN (
    SELECT s.empid
    FROM Sales s
    WHERE s.saleamount > (SELECT AVG(saleamount) FROM Sales)
);