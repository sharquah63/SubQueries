CREATE DATABASE pwskills_subqueries;
USE pwskills_subqueries;

-- Employee Table
CREATE TABLE Employee (
    empid INT,
    name VARCHAR(50),
    departmentid VARCHAR(10),
    salary INT
);

-- Department Table  
CREATE TABLE Department (
    departmentid VARCHAR(10),
    departmentname VARCHAR(50),
    location VARCHAR(50)
);

-- Sales Table
CREATE TABLE Sales (
    saleid INT,
    empid INT,
    saleamount INT,
    saledate DATE
);

INSERT INTO Department VALUES
('D01', 'Sales', 'Mumbai'),
('D02', 'Marketing', 'Delhi'),
('D03', 'Finance', 'Pune'),
('D04', 'HR', 'Bengaluru'),
('D05', 'IT', 'Hyderabad');

INSERT INTO Sales VALUES
(201, 101, 4500, '2025-01-05'),
(202, 102, 7800, '2025-01-10'),
(203, 103, 6700, '2025-01-14'),
(204, 104, 12000, '2025-01-20'),
(205, 105, 9800, '2025-02-02'),
(206, 106, 10500, '2025-02-05'),
(207, 107, 3200, '2025-02-09'),
(208, 108, 5100, '2025-02-15'),
(209, 109, 3900, '2025-02-20'),
(210, 110, 7200, '2025-03-01');

SELECT name
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);
