USE [CustomerLib_Koshelev]
GO

/* Correct customers values */
INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
VALUES
('Ivan', 'Petrov', '+219474280516700', 'petrov123@mail.ru', '123', 500)
GO

INSERT INTO Customers (LastName, PhoneNumber, Notes, TotalPurchasesAmount)
VALUES
('Smith', '165204892561322', 'Some note', 12200)
GO

INSERT INTO Customers (FirstName, LastName, Email, Notes)
VALUES
('Tom', 'Hanks', 'tom-hanks@yahoo.com', 'Lalala')
GO

/* SELECT * FROM Customers */

/* Not correct customers values */

/* Not correct phone number */
INSERT INTO Customers (LastName, PhoneNumber, Notes)
VALUES
('Jackson', '019474280516700', '123')
GO

/* Not correct email */
INSERT INTO Customers (LastName, Email, Notes)
VALUES
('Phil', '@mail.net', '123')
GO

/* Correct addresses values */
INSERT INTO Addresses (CustomerId, Line, Line2, AddressType, City, PostalCode, AddressState, Country)
VALUES
(1, 'First line', 'Second line', 'Shipping', 'New-York', '567125', 'NewYorkState', 'United States')
GO

INSERT INTO Addresses (CustomerId, Line, AddressType, City, PostalCode, AddressState, Country)
VALUES
(2, 'House 6', 'Billing', 'Moscow', '2398', 'State 5', 'Canada')
GO

INSERT INTO Addresses (CustomerId, Line, AddressType, City, PostalCode, AddressState, Country)
VALUES
(1, 'Some text', 'Shipping', 'London', '172682', 'Some state', 'Canada')
GO

/* SELECT * FROM Addresses */

/* Not correct addresses values */

/* Not correct address type */
INSERT INTO Addresses (CustomerId, Line, AddressType, City, PostalCode, AddressState, Country)
VALUES
(1, 'Some text', 'WrongType', 'London', '172682', 'Some state', 'Canada')
GO

/* Correct addresses values */
INSERT INTO Addresses (CustomerId, Line, Line2, AddressType, City, PostalCode, AddressState, Country)
VALUES
(1, 'First line', 'Second line', 'Shipping', 'New-York', '567125', 'NewYorkState', 'China')
GO