CREATE TABLE Employee(
    EmployeeID int,
    Name varchar(100),
	Tel char(11),
	Email varchar(30),
	)

CREATE TABLE GroupGroup(
   GroupID int,
   GroupName varchar(30),
   LeaderID int,
   ProjectID int,
)

CREATE TABLE Project(
   ProjectID int,
   ProjectName varchar(30),
   StartDate datetime,
   Period int,
   Cost money,
)

CREATE TABLE GroupDetail(
   GroupID int,
   EmployeeID int,
   Status char(20),
)

   INSERT INTO Employee VALUES ('101','phucco','112','phucco@gmail.com');
   INSERT INTO Employee VALUES ('102','nam','113','nam2005@gmail.com');
   INSERT INTO Employee VALUES ('103','linh','114','linh@gamil.com');
   INSERT INTO Employee VALUES ('103','thanh','115','thanhto@gmail.com');

   INSERT INTO GroupGroup VALUES ('123','TT1','1122','445566');
   INSERT INTO GroupGroup VALUES ('124','TT1','1122','445566');
   INSERT INTO GroupGroup VALUES ('125','TT1','1122','445566');
   INSERT INTO GroupGroup VALUES ('126','TT1','1122','445566')

     INSERT INTO Project VALUES ('',);
	 INSERT INTO Project VALUES ();
	 INSERT INTO Project VALUES ();
     INSERT INTO Project VALUES ();

	 INSERT INTO GroupDetail VALUES ('',);
	 INSERT INTO GroupDetail VALUES ();
	 INSERT INTO GroupDetail VALUES ();
     INSERT INTO GroupDetail VALUES ();