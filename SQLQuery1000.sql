CREATE TABLE Employee(
    EmployeeID int  PRIMARY KEY,
    Name varchar(100),
	Tel char(11),
	Email varchar(30),
	)

DROP TABLE Employee

CREATE TABLE Groups(
   GroupID int primary key,
   GroupName varchar(30),
   LeaderID int,
   ProjectID int ,
    FOREIGN KEY (LeaderID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
)

DROP TABLE Groups

CREATE TABLE Project(
   ProjectID int PRIMARY KEY,
   ProjectName nvarchar(30),
   StartDate datetime,
   Period int,
   Cost money,
)
DROP TABLE Project


CREATE TABLE GroupDetail(
   GroupID int,
   EmployeeID int,
   Status char(20),
    PRIMARY KEY (GroupID),
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
)
DROP TABLE GroupDetail

   INSERT INTO Employee VALUES ('101','phucco','112','phucco@gmail.com');
   INSERT INTO Employee VALUES ('102','nam','113','nam2005@gmail.com');
   INSERT INTO Employee VALUES ('103','linh','114','linh@gamil.com');
   INSERT INTO Employee VALUES ('104','thanh','115','thanhto@gmail.com');

   INSERT INTO Groups VALUES ('123','TTT','1122','445566');
   INSERT INTO Groups VALUES ('124','TTT','1122','445566');
   INSERT INTO Groups VALUES ('125','TTT','1122','445566');
   INSERT INTO Groups VALUES ('126','TTT','1122','445566');
   
     INSERT INTO Project VALUES ('TTT',N'chính phủ điện tử','1-12-2006','12-12007','12','1000');
	 INSERT INTO Project VALUES ('TTT',N'chính phủ kinh tế','1-12-2006','12-12007','12','1000');
	
	 INSERT INTO GroupDetail VALUES ('123','112233','DANG LAM');
	 INSERT INTO GroupDetail VALUES ('124','223344','SAP LAM');
	 INSERT INTO GroupDetail VALUES ('125','334455','DA LAM');
     INSERT INTO GroupDetail VALUES ('126','445566', 'DANG LAM');

	 --Hiển thị thông tin của tất cả nhân viên--
	 SELECT * FROM Employee
	  --Liệt kê danh sách nhân viên đang làm dự án “Chính phủ điện tử”--
	  SELECT *
    FROM Employee 
    JOIN GroupDetai ON GroupDetai.EmployeeID = Employee.EmployeeID
    JOIN Group ON Group.GroupID= GroupDetai.GroupID
    JOIN Project ON Project.ProjectID = Group.ProjectID
    WHERE ProjectName = 'Project'
	--. Thống kê số lượng nhân viên đang làm việc tại mỗi nhóm--



	--Liệt kê thông tin cá nhân của các trưởng nhóm--


	--Liệt kê thông tin về nhóm và nhân viên đang làm các dự án có ngày bắt đầu làm trước ngày 12/10/2010--
	 P.StartDate > '2023-07-07';




	-- KHÓA CHÍNH ĐỂ ID KH ĐỂ TRÙNG KHỚP --
	-- KHÓA PHỤ LIÊN KẾT KHÓA CHÍNH BẢNG KHÁC--