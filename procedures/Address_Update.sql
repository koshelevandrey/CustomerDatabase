USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Address_Update') IS NOT NULL
BEGIN 
DROP PROC Address_Update
END 
GO

CREATE PROC Address_Update
    @AddressId int,
    @Line NVARCHAR(100),
	@Line2 NVARCHAR(100),
	@AddressType NVARCHAR(8),
	@City NVARCHAR(50),
	@PostalCode NVARCHAR(6),
	@AddressState NVARCHAR(20),
	@Country NVARCHAR(14)
AS 
BEGIN 
UPDATE Addresses
SET  Line = @Line,
     Line2 = @Line2,
	 AddressType = @AddressType,
     City = @City,
     PostalCode = @PostalCode,
	 AddressState = @AddressState,
	 Country = @Country
WHERE  AddressId = @AddressId
END
GO

EXEC Address_Update @AddressId = 1, @Line = 'Main Street', @Line2 = NULL, @AddressType = 'Billing',
@City = 'Washington', @PostalCode = '18379', @AddressState = 'Washington State', @Country = 'Canada'
GO

/* SELECT * FROM Addresses */