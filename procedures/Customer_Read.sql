USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Customer_Read') IS NOT NULL
BEGIN 
    DROP PROC Customer_Read
END 
GO

CREATE PROC Customer_Read
    @CustomerId int
AS 
BEGIN 
    SELECT * FROM Customers WHERE (CustomerId = @CustomerId) 
END
GO

EXEC Customer_Read @CustomerId = 1
GO