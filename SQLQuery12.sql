CREATE TABLE Customer(
    Customer_id nvarchar(50) Primary Key,
	tel  nvarchar(10),
	name nvarchar(50),
	Address nvarchar(50),
)
insert into  Customer( Customer_id,tel, name, Address)
values ( '123','987654321', N'Nguyễn Văn An', N'Hà Nội')


CREATE TABLE Product (
	ProductID INT PRIMARY KEY,
	NAME NVARCHAR (30),
	Description NVARCHAR (30),
	Unit NVARCHAR (10),
	Price INT,
	Quantity INT,
	Status NVARCHAR (30)
);

INSERT INTO Product  Values (1, 'Máy Tính T450', 'Máy nhập mới', 'chiếc', 1000, 2, ' Stock');
 INSERT INTO Product  Values (2, 'Điện Thoại Nokia 5670', 'Điện thoại đang hot', 'chiếc', 200, 1, 'Stock');
INSERT INTO Product  Values (3, 'Máy In Samsung 450', 'Máy in đang ế', 'chiếc', 100, 1, ' Stock');
 INSERT INTO Product  Values (4, 'Máy Tính hp', 'Máy tính đang hot', 'chiếc', 3000, 23, ' Stock');
INSERT INTO Product  Values (5, 'Máy Tính mis', 'Máy nhập mới', 'chiếc', 2400, 4, ' Stock');

  

  CREATE TABLE OderDetails(
	OderID  INT,
	ProductID INT,
	PriceMacDinh Money,
	Quantity INT,
	FOREIGN KEY (OderID) REFERENCES Oder(OderID),
	FOREIGN KEY (ProductID) REFERENCES Product(ProductID) 
)

INSERT INTO  OderDetails VALUES ('1', '001', '678', '1')
INSERT INTO  OderDetails VALUES ('2', '002', '789', '2')


DROP TABLE OderDetails

SELECT * FROM OderDetails
SELECT * FROM Customer
SELECT * FROM Product