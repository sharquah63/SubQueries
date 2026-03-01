SELECT d.departmentname
FROM Department d
WHERE d.departmentid IN (
    SELECT e.departmentid
    FROM Employee e
    JOIN Sales s ON e.empid = s.empid
    GROUP BY e.departmentid
    HAVING SUM(s.saleamount) > 10000
);