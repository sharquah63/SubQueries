SELECT SUM(s.saleamount) AS total_sales_high_earners
FROM Sales s
WHERE s.empid IN (
    SELECT empid 
    FROM Employee 
    WHERE salary > (SELECT AVG(salary) FROM Employee)
);