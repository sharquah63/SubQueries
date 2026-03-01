SELECT e.name
FROM Employee e
WHERE e.departmentid = (
    SELECT departmentid 
    FROM Employee 
    GROUP BY departmentid 
    HAVING AVG(salary) = (
        SELECT MAX(avg_salary) 
        FROM (
            SELECT AVG(salary) AS avg_salary 
            FROM Employee 
            GROUP BY departmentid
        ) AS dept_avg
    )
);