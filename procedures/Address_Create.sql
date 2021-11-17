USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Address_Create') IS NOT NULL
BEGIN 
DROP PROC Address_Create
END
GO

CREATE PROCEDURE Address_Create
	   @CustomerId INT,
	   @Line NVARCHAR(100),
	   @Line2 NVARCHAR(100),
	   @AddressType NVARCHAR(8),
	   @City NVARCHAR(50),
	   @PostalCode NVARCHAR(6),
	   @AddressState NVARCHAR(20),
	   @Country NVARCHAR(14)
AS
BEGIN
INSERT INTO Addresses (CustomerId, Line, Line2, AddressType, City, PostalCode, AddressState, Country)
VALUES
(@CustomerId, @Line, @Line2, @AddressType, @City, @PostalCode, @AddressState, @Country)
END
GO

EXEC Address_Create @CustomerId = 1, @Line = 'First line', @Line2 = 'Second line', @AddressType = 'Shipping',
@City = 'New-York', @PostalCode = '567125', @AddressState = 'NewYorkState', @Country = 'United States'
GO