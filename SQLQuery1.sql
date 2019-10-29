
CREATE TABLE Customer
(
CustomerID INT PRIMARY KEY IDENTITY(1,1),
CustomerName VARCHAR(50) NOT NULL,
City VARCHAR(30) NOT NULL,
Age INT NOT NULL,
Phone BIGINT NOT NULL,
Pincode INT NOT NULL
);

CREATE PROCEDURE InsertCustomer
@CustomerName VARCHAR(50),
@City VARCHAR(30),
@Age INT,
@Phone BIGINT,
@Pincode INT
AS
BEGIN
	INSERT INTO Customer VALUES (@CustomerName,@City,@Age,@Phone,@Pincode)
END

exec InsertCustomer @CustomerName='Srujana',@City='Pune',@Age=22,@Phone=9550579813,@Pincode=535579;

CREATE PROCEDURE SelectAllCustomers
AS
BEGIN
	SELECT * FROM Customer
END

CREATE PROCEDURE SelectCustomer
@CustomerID INT
AS
BEGIN
	SELECT * FROM Customer WHERE CustomerID=@CustomerID
END

CREATE PROCEDURE UpdateCustomer
@CustomerID INT,
@CustomerName VARCHAR(50),
@City VARCHAR(30),
@Age INT,
@Phone BIGINT,
@Pincode INT
AS
BEGIN
	UPDATE Customer SET CustomerName=@CustomerName, City=@City, Age=@Age, Phone=@Phone, Pincode=@Pincode WHERE CustomerID=@CustomerID
END

CREATE PROCEDURE DeleteCustomer
@CustomerID INT
AS
BEGIN
	DELETE FROM Customer WHERE CustomerID=@CustomerID
END

