USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Address_Read') IS NOT NULL
BEGIN 
    DROP PROC Address_Read
END 
GO

CREATE PROC Address_Read
    @AddressId int
AS 
BEGIN 
    SELECT * FROM Addresses WHERE (AddressId = @AddressId) 
END
GO

EXEC Address_Read @AddressId = 1
GO