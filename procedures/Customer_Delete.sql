USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Customer_Delete') IS NOT NULL
BEGIN 
DROP PROC Customer_Delete
END 
GO

CREATE PROC Customer_Delete
    @CustomerId int
AS 
BEGIN 
DELETE FROM Customers WHERE CustomerId = @CustomerId
END
GO

EXEC Customer_Delete @CustomerId = 3
GO

/* SELECT * FROM Customers */