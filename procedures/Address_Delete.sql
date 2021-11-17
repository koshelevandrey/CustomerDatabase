USE CustomerLib_Koshelev;  
GO

IF OBJECT_ID('Address_Delete') IS NOT NULL
BEGIN 
DROP PROC Address_Delete
END 
GO

CREATE PROC Address_Delete
    @AddressId int
AS 
BEGIN 
DELETE FROM Addresses WHERE AddressId = @AddressId
END
GO

EXEC Address_Delete @AddressId = 1
GO

/* SELECT * FROM Addresses */