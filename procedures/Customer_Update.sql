USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Customer_Update') IS NOT NULL
BEGIN 
DROP PROC Customer_Update
END 
GO

CREATE PROC Customer_Update
    @CustomerId int,
    @FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@PhoneNumber NVARCHAR(16),
	@Email NVARCHAR(100),
	@Notes NVARCHAR(MAX),
	@TotalPurchasesAmount MONEY
AS 
BEGIN 
UPDATE Customers
SET  FirstName = @FirstName,
     LastName = @LastName,
	 PhoneNumber = @PhoneNumber,
     Email = @Email,
     Notes = @Notes,
	 TotalPurchasesAmount = @TotalPurchasesAmount
WHERE  CustomerId = @CustomerId
END
GO

EXEC Customer_Update @CustomerId = 1, @FirstName = 'Petr', @LastName = 'Ivanov', @PhoneNumber = NULL,
@Email = NULL, @Notes = '567', @TotalPurchasesAmount = 200
GO

/* SELECT * FROM Customers */