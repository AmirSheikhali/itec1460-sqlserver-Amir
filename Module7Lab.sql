CREATE OR ALTER PROCEDURE CalculateOrderTotal
     @OrderID INT,
     @TotalAmount MONEY OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT @TotalAmount = SUM(UnitPrice * Quantity * (1- Discount))
    FROM [Order Details]
    WHERE OrderID = @OrderID;
    IF @TotalAmount is NULL
    BEGIN
    SET @TotalAmount = 0;
    PRINT 'Order' + CAST(@OrderID as NVARCHAR(10)) + 'not found' ;
    RETURN;

    END

    PRINT 'The total amount for Order' + CAST (@OrderID as NVARCHAR(10)) + 'is $' + 
    CAST(@TotalAmount AS NVARCHAR(20));
END


GO
DECLARE @OrderID INT = 10248;

DECLARE @TotalAmount MONEY;

EXEC CalculateOrderTotal
     @OrderID = @OrderID,
     @TotalAmount = @TotalAmount OUTPUT;

PRINT 'Returned total amount : $ ' + CAST (ISNULL(@TotalAmount,0) AS NVARCHAR(20));

