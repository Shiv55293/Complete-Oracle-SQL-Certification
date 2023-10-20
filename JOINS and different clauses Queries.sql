REM   Script: Different Clauses, JOINS and Single Row Functions
REM   Different Clauses, JOINS and Single Row Functions

CREATE TABLE Employee ( 
    EmployeeID INT PRIMARY KEY, 
    FirstName VARCHAR(50), 
    LastName VARCHAR(50), 
    Age INT, 
    Gender CHAR(1), 
    Department VARCHAR(50), 
    Salary DECIMAL(10, 2), 
    City VARCHAR(50) 
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (1, 'John', 'Doe', 30, 'M', 'IT', 60000.00, 'Mumbai');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (2, 'Jane', 'Smith', 28, 'F', 'HR', 50000.00, 'Delhi');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (3, 'Raj', 'Patel', 35, 'M', 'Finance', 75000.00, 'Ahmedabad');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (4, 'Priya', 'Gupta', 25, 'F', 'Marketing', 55000.00, 'Bangalore');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (5, 'Amit', 'Sharma', 32, 'M', 'IT', 62000.00, 'Pune');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (6, 'Neha', 'Singh', 29, 'F', 'HR', 52000.00, 'Kolkata');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (7, 'Sanjay', 'Verma', 33, 'M', 'Finance', 77000.00, 'Chennai');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (8, 'Anita', 'Yadav', 27, 'F', 'Marketing', 56000.00, 'Hyderabad');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (9, 'Rahul', 'Kumar', 31, 'M', 'IT', 64000.00, 'Jaipur');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (10, 'Aparna', 'Mishra', 26, 'F', 'HR', 51000.00, 'Chandigarh');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (11, 'Vijay', 'Jha', 34, 'M', 'Finance', 76000.00, 'Lucknow');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (12, 'Meera', 'Reddy', 30, 'F', 'Marketing', 57000.00, 'Coimbatore');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (13, 'Suresh', 'Pandey', 29, 'M', 'IT', 63000.00, 'Nagpur');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (14, 'Rekha', 'Malik', 28, 'F', 'HR', 53000.00, 'Bhopal');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES (15, 'Sunil', 'Gowda', 32, 'M', 'Finance', 78000.00, 'Indore');

SELECT * FROM Employee 
WHERE City IS NULL;

SELECT * FROM Employee 
WHERE City IS NOT NULL;

SELECT * FROM Employee 
WHERE Department IS NOT NULL;

SELECT UPPER(FirstName) AS UppercaseFirstName 
FROM Employee;

SELECT UPPER(FirstName) AS UppercaseFirstName 
FROM Employee;

SELECT Age, Age * Age AS AgeSquared 
FROM Employee;

SELECT FirstName, LastName, Salary, SQRT(Salary) AS SalarySquareRoot 
FROM Employee 
WHERE Salary > 60000;

CREATE TABLE Department ( 
    DepartmentID INT PRIMARY KEY, 
    DepartmentName VARCHAR(50) 
);

INSERT INTO Department (DepartmentID, DepartmentName) 
VALUES 
    (1, 'IT');

INSERT INTO Department (DepartmentID, DepartmentName) 
VALUES 
 (2, 'HR');

INSERT INTO Department (DepartmentID, DepartmentName) 
VALUES 
 (3, 'Finance');

INSERT INTO Department (DepartmentID, DepartmentName) 
VALUES 
 (4, 'Marketing');

ALTER TABLE Employee 
RENAME COLUMN Department TO DepartmentName;

SELECT e.FirstName, e.LastName, e.DepartmentName, d.DepartmentName AS Department 
FROM Employee e 
INNER JOIN Department d ON e.DepartmentName = d.DepartmentName;

SELECT e.FirstName, e.LastName, e.DepartmentName, d.DepartmentName AS Department 
FROM Employee e 
RIGHT JOIN Department d ON e.DepartmentName = d.DepartmentName;

SELECT d.DepartmentName, e.FirstName, e.LastName 
FROM Department d 
LEFT JOIN Employee e ON d.DepartmentName = e.DepartmentName;

SELECT e.FirstName, e.LastName, e.DepartmentName, d.DepartmentName AS Department 
FROM Employee e 
RIGHT JOIN Department d ON e.DepartmentName = d.DepartmentName;

SELECT e.FirstName, e.LastName, e.DepartmentName, d.DepartmentName AS Department 
FROM Employee e 
FULL JOIN Department d ON e.DepartmentName = d.DepartmentName;

SELECT e.FirstName, e.LastName, e.DepartmentName, d.DepartmentName AS Department 
FROM Employee e 
FULL JOIN Department d ON e.DepartmentName = d.DepartmentName;

SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM Employee e 
CROSS JOIN Department d;

SELECT EmployeeID, FirstName, LastName, DepartmentName 
FROM Employee 
NATURAL JOIN Department;

SELECT EmployeeID, FirstName, LastName, DepartmentName, Salary, 
       AVG(Salary) OVER (PARTITION BY DepartmentName) AS AverageSalaryByDepartment 
FROM Employee;

SELECT EmployeeID, FirstName, LastName, DepartmentName, Salary, 
       RANK() OVER (PARTITION BY DepartmentName ORDER BY Salary DESC) AS SalaryRank 
FROM Employee;

SELECT * FROM Employee;

DESC Employee


UPDATE Employee 
SET City = 'New York' 
WHERE LastName = 'Smith';

Select * from Employee;

DELETE FROM Employee 
WHERE Salary < 55000;

ALTER TABLE Employee 
ADD HireDate DATE;

select * from employee;

select * from employee;

ALTER TABLE Employee 
RENAME COLUMN HireDate TO JoinDate;

select * from Employee;

SELECT EmployeeID, FirstName, LastName 
FROM Employee 
ORDER BY EmployeeID 
OFFSET 0 ROWS 
FETCH FIRST 5 ROWS ONLY;

SELECT EmployeeID, FirstName, LastName 
FROM Employee 
ORDER BY EmployeeID 
OFFSET 5 ROWS 
FETCH NEXT 5 ROWS ONLY;

