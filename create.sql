USE [master]
GO

CREATE DATABASE [CustomerLib_Koshelev]
GO

/* DROP DATABASE [CustomerLib_Koshelev] */

USE [CustomerLib_Koshelev]
GO

CREATE TABLE [Customers]
(
	CustomerId INT IDENTITY(1,1) NOT NULL CONSTRAINT [PK_CustomerId] PRIMARY KEY CLUSTERED,
	FirstName NVARCHAR(50) NULL,
	LastName NVARCHAR(50) NOT NULL,
	PhoneNumber NVARCHAR(16) NULL
	CONSTRAINT CHK_PhoneNumber_E164 CHECK
	(PhoneNumber LIKE '+[1-9]' + REPLICATE('[0-9]', 14) OR PhoneNumber LIKE '[1-9]' + REPLICATE('[0-9]', 14)),
	Email NVARCHAR(100) NULL CONSTRAINT CHK_Email CHECK (Email LIKE '%[a-zA-Z0-9][@][a-zA-Z0-9]%[.][a-zA-Z0-9]%'),
	Notes NVARCHAR(MAX) NOT NULL,
	TotalPurchasesAmount MONEY NULL
)
GO

/* DROP TABLE Customers */

CREATE TABLE Addresses
(
	AddressId INT IDENTITY(1,1) NOT NULL CONSTRAINT [PK_AddressId] PRIMARY KEY CLUSTERED,
	CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerId),
	Line NVARCHAR(100) NOT NULL,
	Line2 NVARCHAR(100) NULL,
	AddressType NVARCHAR(8) NOT NULL CONSTRAINT CHK_AddressType CHECK (AddressType IN ('Shipping', 'Billing')),
	City NVARCHAR(50) NOT NULL,
	PostalCode NVARCHAR(6) NOT NULL,
	AddressState NVARCHAR(20) NOT NULL,
	Country NVARCHAR(14) NOT NULL CONSTRAINT CHK_Country CHECK (Country IN ('United States', 'Canada'))
)
GO

/* DROP TABLE Addresses */