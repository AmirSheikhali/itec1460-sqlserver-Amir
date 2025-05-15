-- Question #1
SELECT FirstName, LastName, HireDate FROM Employees;

--Question # 2
SELECT e.FirstName, e.LastName, o.OrderID, o.OrderDate
FROM Employees e 
JOIN Orders o ON e.EmployeeID = o.EmployeeID
ORDER BY e.EmployeeID, o.OrderDate;
--Question # 3
SELECT c.CategoryName, 
       SUM(od.Quantity * p.UnitPrice) AS TotalSales
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
JOIN [Order Details] od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY c.CategoryName
ORDER BY TotalSales DESC;

--Question # 4
INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country)
VALUES ('Northwind Traders', 'John Doe', 'Sales Manager', '123 Market St', 'Seattle', 'WA', '98101', 'USA');

--Question # 5
UPDATE Products
SET CategoryID = ( SELECT CategoryID FROM Categories WHERE CategoryName = 'Organic Products')
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Exotic Liquids');

--Question # 6
DELETE FROM Products
WHERE ProductName = [Minneapolis Pizza];

--Question # 7
CREATE TABLE EmployeePerformance (
    PerformanceID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT,Year INT, Quarter INT,
    SalesTarget DECIMAL(15,2),ActualSales DECIMAL(15,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID));

--Question # 8
SELECT p.ProductName, c.CategoryName, p.UnitInStock, p.UnitsOnOrder
FROM Products p 
JOIN Categories c ON p.CategoryID = c.CategoryID;

--Question 9#


--Question #10
SELECT TOP 5 o.CustomerID, SUM(o.Freight) AS TotalFreightCost, COUNT(o.OrderID) AS NumberOfOrders, AVG(o.Freight) AS AverageFreightPerOrder
FROM Orders o 
JOIN Customers c ON o.CustomerID =c.CustomerID
GROUP BY c.CustomerID
ORDER BY TotalFreightCost DESC;








