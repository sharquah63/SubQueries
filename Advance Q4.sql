SELECT e.name
FROM Employee e
WHERE e.empid = (
    SELECT s.empid
    FROM Sales s
    WHERE s.saleamount = (
        SELECT MAX(saleamount)
        FROM Sales s2
        WHERE s2.saleamount < (SELECT MAX(saleamount) FROM Sales)
    )
);