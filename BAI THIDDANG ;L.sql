CREATE TABLE Department(
    DepartId Int Primary key,
	DepartName varchar(50) not null,
	Description varchar(100) not null,
	)

INSERT INTO Department values ('101','khoa 1','tay');
INSERT INTO Department values ('102','khoa 2','cham');
INSERT INTO Department values ('103','khoa 3','mat');

	CREATE TABLE Employee(
	EmpCode char(6) Primary key,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	Birthday smalldatetime not null,
	Gender Bit Default 1,
	Address varchar(100),
	DepartID  Int Foreign key references  Department (DepartId),
	Salary Money,
	)
	 
INSERT INTO Employee (EmpCode, FirstName, LastName, Birthday, Address, DepartID, Salary)
 values   (234,'nam','le','2005-04-27',N'HA NỘI',101,'10'),
          (235,'phuc','ngo','2006-05-24',N'THANH HÓA',102,'9'),
          (236,'linh','dinh','2002-09-13',N'NGHỆ AN',103,'8');

		  SELECT * FROM Department
		  SELECT * FROM Employee
 UPDATE Employee
 SET Salary = Salary *1.1

 ALTER TABLE Employee
 ADD CHECK (Salary > 0)