
SELECT FirstName, LastName, HireDate FROM Employees;

SELECT e.FirstName, e.LastName, o.OrderID , o.OrderDate
FROM Employees e
JOIN Orders o ON e.EmployeeID = e.EmployeeID
ORDER BY e.EmployeeID, o.OrderDate;

SELECT c.CategoryName, 
       SUM(od.Quantity * p.UnitPrice) AS TotalSales
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
JOIN [Order Details] od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY c.CategoryName
ORDER BY TotalSales DESC;

INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country)
VALUES ('Northwind Traders', 'John Doe', 'Sales Manager', '123 Market St', 'Seattle', 'WA', '98101', 'USA');

DELETE FROM Products
WHERE ProductName = [Minneapolis Pizza];

CREATE TABLE EmployeePerformance (
    PerformanceID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT,Year INT, Quarter INT,
    SalesTarget DECIMAL(15,2),ActualSales DECIMAL(15,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID));






