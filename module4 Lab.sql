SELECT C.CompanyName, O. OrderDate FROM Customers AS c 
JOIN Orders AS o ON c.CustomerID = o.CustomerID;
SELECT c.CustomerID , c.CompanyName, o.OrderID , o.OrderDate 
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;
SELECT OrderID, ROUND(SUM(UnitPRice * Quantity * (1-Discount)),2) AS TotalValue, COUNT(*) AS NumberOfItems
 From[Order Details] GROUP By OrderID Order By TotalValue DESC;
 SELECT p.ProductID, p.ProductName, COUNT(od.OrderID) AS timesOrdered
 From Products p INNER JOIN[Order Details] od ON p.productID = od.ProductID
 GROUP By p. ProductID, p.ProductName
 HAVING COUNT(od.OrderID)>10
 ORDER BY TimesOrdered DESC;
 SELECT ProductName, UnitPrice FROM Products
 WHERE UnitPrice > (SELECT AVG(UnitPrice)FROM Products)
 ORDER By UnitPrice;
 
 SELECT TOP 5
 c.CustomerID, c.CompanyName, 
 ROUND(SUM(od.UnitPrice * od.Quantity * (1 -od.Discount)),2) AS TotalPurchase 
 FROM Customers c 
 INNER JOIN Orders o ON c.CustomerID = o.CustomerID
 INNER JOIN [Order Details] od ON o.OrderID = od.OrderID 
 WHERE YEAR(o.OrderDate) =1997
 GROUP By c.CustomerID, c.CompanyName 
 ORDER BY TotalPurchase DESC;