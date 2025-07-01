
-- Task 5: SQL Joins (Inner, Left, Right, Full)

-- Step 1: Create Tables
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    Name TEXT,
    City TEXT
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    OrderDate DATE,
    CustomerID INTEGER,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Step 2: Insert Data
INSERT INTO Customers VALUES (1, 'Alice', 'Hyderabad');
INSERT INTO Customers VALUES (2, 'Bob', 'Delhi');
INSERT INTO Customers VALUES (3, 'Charlie', 'Mumbai');

INSERT INTO Orders VALUES (101, '2025-06-25', 1, 250.00);
INSERT INTO Orders VALUES (102, '2025-06-26', 1, 300.00);
INSERT INTO Orders VALUES (103, '2025-06-27', 2, 400.00);
INSERT INTO Orders VALUES (104, '2025-06-28', NULL, 500.00);

-- Step 3: SQL Join Queries

-- INNER JOIN
SELECT Customers.Name, Orders.OrderDate, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN
SELECT Customers.Name, Orders.OrderDate, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN (only works in MySQL, not SQLite)
-- SELECT Customers.Name, Orders.OrderDate, Orders.Amount
-- FROM Customers
-- RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN Simulation (for SQLite/MySQL)
SELECT Customers.Name, Orders.OrderDate, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT Customers.Name, Orders.OrderDate, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
