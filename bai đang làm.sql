CREATE TABLE Product_list(
     Product_name varchar(50),
	Item_description varchar(50),
	 Unit varchar(50),
	 Price int,
	 Quantity_available int,
)  
CREATE TABLE Products(
      Company_code Int,
	  Company_name varchar(50),
	  Address  varchar(50),
	  Điện_thoại nvarchar(50),
)
insert into Products values ('123','Asus', 'USA','983232')

insert into Product_list values('Máy Tính T450', 'Máy nhập củ ','Chiếc','1000','10')
insert into Product_list values('Điện Thoại Nokia5670', 'Điện thoại đang hot', 'Chiếc','200 ', '200')
insert into Product_list values('Máy In Samsung 450', 'Máy in đang loại bình', 'Chiếc', '100', '10')




select * from Product_list
--b) Hiển thị tất cả các sản phẩm.--
          
-- Hiển thị tất cả các hãng sản xuất--

-- Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần.--
 SELECT * FROM  Product_list
 ORDER BY  Product_list DESC;
 --Hiển thị thông tin của hãng Asus.--
  SELECT * FROM  Products
 WHERE Products = 'Asus';
 --Liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho--
 SELECT * FROM Product_list
 WHERE Quantity < 11;
 --Liệt kê danh sách sản phẩm của hãng Asus
 SELECT Products.*
FROM Products
INNER JOIN Hang ON Products.HangId = Hang.HangId
WHERE Hang.TenHang = 'A';

 --Số hãng sản phẩm mà cửa hàng có.---
 SELECT TenHang, COUNT(*) [Số_Hãng]
FROM Hang
GROUP BY TenHang


 --Số mặt hàng mà cửa hàng bán.---
 SELECT COUNT(DISTINCT Products) AS SoMatHang
FROM Products;


 --Tổng số loại sản phẩm của mỗi hãng có trong cửa hàng.--



 --Tổng số đầu sản phẩm của toàn cửa hàng--

