SELECT name 
FROM sys.tables;

SELECT name
FROM sys.tables
WHERE name LIKE '%Order%';
SELECT ProductName FROM Products;
SELECT ProductName FROM Products WHERE ProductName LIKE '%Pizza%';

SELECT * FROM Products WHERE ProductName = 'Minneapolis Pizza';

INSERT INTO Products (ProductName, SupplierID, CategoryID, UnitPrice, QuantityPerUnit, ReorderLevel)
VALUES ('Minneapolis Pizza', [SupplierID], [CategoryID], 12.99, '1 per box', 10);
