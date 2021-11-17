USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Customer_Create') IS NOT NULL
BEGIN 
DROP PROC Customer_Create
END
GO

CREATE PROCEDURE Customer_Create
	   @FirstName NVARCHAR(50),
	   @LastName NVARCHAR(50),
	   @PhoneNumber NVARCHAR(16),
	   @Email NVARCHAR(100),
	   @Notes NVARCHAR(MAX),
	   @TotalPurchasesAmount MONEY
AS
BEGIN
INSERT INTO Customers(FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Notes, @TotalPurchasesAmount)
END
GO

EXEC Customer_Create @FirstName = 'Ivan', @LastName = 'Petrov', @PhoneNumber = '+219474280516700',
@Email = 'petrov123@mail.ru', @Notes = '123', @TotalPurchasesAmount = 500
GO