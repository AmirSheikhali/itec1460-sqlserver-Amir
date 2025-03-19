
SELECT FirstName, LastName, HireDate FROM Employees;

SELECT e.FirstName, e.LastName, o.OrderID, o.OrderDate
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
ORDER BY e.EmployeeID, o.OrderDate;

 SELECT c.CategoryName, 
       SUM(Quantity * UnitPrice) AS TotalSales
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
JOIN Orders od ON p.ProductID = od.ProductID
GROUP BY c.CategoryName
ORDER BY TotalSales DESC;
