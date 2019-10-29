USE Training_13Aug19_Pune
GO

CREATE SCHEMA [Srujana_46004311];
GO

CREATE TABLE [Srujana_46004311].[Customers]
(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50) NOT NULL,
City VARCHAR(30) NOT NULL,
Age INT NOT NULL,
Phone VARCHAR(30) NOT NULL,
Pincode INT NOT NULL
);

CREATE PROCEDURE [Srujana_46004311].[InsertCustomers]
@CustomerID INT ,
@CustomerName VARCHAR(50),
@City VARCHAR(30),
@Age INT,
@Phone VARCHAR(30),
@Pincode INT
AS
BEGIN
	INSERT INTO [Srujana_46004311].[Customers] VALUES (@CustomerID,@CustomerName,@City,@Age,@Phone,@Pincode)
END

exec Srujana_46004311.InsertCustomer @CustomerID=1,@CustomerName='Srujana',@City='Pune',@Age=21,@Phone='9550579813',@Pincode=535579;

CREATE PROCEDURE [Srujana_46004311].[SelectAllCustomers]
AS
BEGIN
	SELECT * FROM [Srujana_46004311].[Customers]
END

CREATE PROCEDURE [Srujana_46004311].[SelectCustomer]
@CustomerID INT
AS
BEGIN
	SELECT * FROM [Srujana_46004311].[Customers] WHERE CustomerID=@CustomerID
END

CREATE PROCEDURE [Srujana_46004311].[UpdateCustomer]
@CustomerID INT,
@CustomerName VARCHAR(50),
@City VARCHAR(30),
@Age INT,
@Phone VARCHAR(30),
@Pincode INT
AS
BEGIN
	UPDATE [Srujana_46004311].[Customers] SET CustomerID=@CustomerID, CustomerName=@CustomerName, City=@City, Age=@Age, Phone=@Phone, Pincode=@Pincode WHERE CustomerID=@CustomerID
END

CREATE PROCEDURE [Srujana_46004311].[DeleteCustomer]
@CustomerID INT
AS
BEGIN
	DELETE FROM [Srujana_46004311].[Customers] WHERE CustomerID=@CustomerID
END


