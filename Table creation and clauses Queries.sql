REM   Script: SQL 1
REM   SQL 1

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
VALUES 
    (1, 'John', 'Doe', 30, 'M', 'IT', 60000.00, 'Mumbai');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (2, 'Jane', 'Smith', 28, 'F', 'HR', 50000.00, 'Delhi');

drop table "EMPLOYEE" cascade constraints;

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
VALUES 
    (1, 'John', 'Doe', 30, 'M', 'IT', 60000.00, 'Mumbai');

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
VALUES 
    (1, 'John', 'Doe', 30, 'M', 'IT', 60000.00, 'Mumbai');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (2, 'Jane', 'Smith', 28, 'F', 'HR', 50000.00, 'Delhi');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (3, 'Raj', 'Patel', 35, 'M', 'Finance', 75000.00, 'Ahmedabad');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (4, 'Priya', 'Gupta', 25, 'F', 'Marketing', 55000.00, 'Bangalore');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (5, 'Amit', 'Sharma', 32, 'M', 'IT', 62000.00, 'Pune');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (6, 'Neha', 'Singh', 29, 'F', 'HR', 52000.00, 'Kolkata');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (7, 'Sanjay', 'Verma', 33, 'M', 'Finance', 77000.00, 'Chennai');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (8, 'Anita', 'Yadav', 27, 'F', 'Marketing', 56000.00, 'Hyderabad');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
    (9, 'Rahul', 'Kumar', 31, 'M', 'IT', 64000.00, 'Jaipur');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
   (10, 'Aparna', 'Mishra', 26, 'F', 'HR', 51000.00, 'Chandigarh');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
   (11, 'Vijay', 'Jha', 34, 'M', 'Finance', 76000.00, 'Lucknow');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
   (12, 'Meera', 'Reddy', 30, 'F', 'Marketing', 57000.00, 'Coimbatore');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
   (13, 'Suresh', 'Pandey', 29, 'M', 'IT', 63000.00, 'Nagpur');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
   (14, 'Rekha', 'Malik', 28, 'F', 'HR', 53000.00, 'Bhopal');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, Department, Salary, City) 
VALUES 
   (15, 'Sunil', 'Gowda', 32, 'M', 'Finance', 78000.00, 'Indore');

SELECT * FROM Employee;

SELECT FirstName, LastName FROM Employee;

SELECT * FROM Employee WHERE Department = 'IT';

SELECT * FROM Employee WHERE Salary > 60000.00;

SELECT * FROM Employee WHERE Department = 'Finance' AND Age > 30;

SELECT * FROM Employee WHERE Salary >= 60000.00;

SELECT * FROM Employee WHERE Department <> 'Marketing';

SELECT * FROM Employee WHERE Age BETWEEN 25 AND 30;

SELECT * FROM Employee WHERE Gender = 'F' AND Department = 'Finance' AND Salary BETWEEN 70000 AND 80000;

SELECT * FROM Employee WHERE Department IN ('IT', 'Finance');

SELECT * FROM Employee WHERE Age < 25 OR Age > 35;

SELECT * FROM Employee WHERE City NOT IN ('Mumbai', 'Delhi');

SELECT FirstName || ' ' || LastName AS FullName FROM Employee;

SELECT MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary 
FROM Employee;

SELECT Department, MIN(Age) AS MinAge, MAX(Age) AS MaxAge 
FROM Employee 
WHERE Department = 'IT' 
GROUP BY Department;

SELECT Gender, AVG(Age) AS AvgAge 
FROM Employee 
GROUP BY Gender;

