
Create DATABASE Myntradb;
Use Myntradb;

Create Table Myntra_Database (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(255) NOT NULL,
Brand VARCHAR(100),
Category VARCHAR(100),
SubCategory VARCHAR(100),
Price DECIMAL(10,2),
Discount DECIMAL(5,2),
Rating DECIMAL(3,2),
Reviews INT,
Stock INT,
DateAdded DATE
);
