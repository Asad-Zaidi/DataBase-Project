CREATE DATABASE ChickenForEveryone;

USE ChickenForEveryone;


--Customer Table
CREATE TABLE Customer
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ShopName VARCHAR(30),
    Address VARCHAR(100),
    Contact VARCHAR(20),
    FixedBalance INT,
    RunningBalance INT,
);
SELECT *
FROM Customer;
INSERT INTO Customer
VALUES
    (1, 'Jane Smith', 'Bacon Brothers', '1234 Oak Ln.', '617555-1235', 65004, 0);

--Supplier Table
CREATE TABLE Supplier
(
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(50),
    ShopName VARCHAR(30),
    Address VARCHAR(100),
    Contact VARCHAR(20),
    FixedBalance INT,
    RunningBalance INT,
);
SELECT *
FROM Supplier;
INSERT INTO Supplier
VALUES
    (1, 'Jane Smith', 'Bacon Brothers', '1234 Oak Ln.', '617555-1235', 65004, 0);

--Products Table
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
);
SELECT *
FROM Products;
INSERT INTO Products
VALUES
    (1, 'Leg'),
    (2, 'Thai'),
    (3, 'Boneless');

--Inventory
CREATE TABLE Inventory
(
    ProductID INT,
    Quantity INT,
    Location VARCHAR(100),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
);
SELECT *
FROM Inventory;
INSERT INTO Inventory
VALUES
    (1, 10, 'Main');


SELECT *
FROM Customer;
SELECT *
FROM Supplier;
SELECT *
FROM Products;
SELECT *
FROM Inventory;