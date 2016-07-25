--drop Databse Bamazon;
Create Database Bamazon;

Use Bamazon;

Create Table Products
( ItemId VarChar(10) NOT NULL,
  ItemName VarChar(70) Not Null,
  DepartmentName VarChar(30),
  Price Float(4,2),
  StockQuantity Integer(10),
  Primary Key ( ItemID));

  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000001', 'small Red Jacket','SMALL', 20.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000002', 'medium Red Jacket', 'MEDIUM', 25.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000003', 'Large Red Jacket', 'LARGE', 30.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000004', 'X-Large Red Jacket', 'XLARGE', 35.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000005', 'small Blue Jacket', 'SMALL', 20.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000006', 'medium Blue Jacket', 'MEDIUM', 25.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000007', 'Large Blue Jacket', 'LARGE', 30.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000008', 'X-Large Blue Jacket', 'XLARGE', 35.0, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000009', 'small White Jacket', 'SMALL', 20.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000010', 'medium White Jacket','MEDIUM',  25.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000011', 'Large White Jacket', 'LARGE', 30.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000012', 'X-Large White Jacket','XLARGE', 35.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000013', 'small Purple Jacket', 'SMALL', 20.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000014', 'medium Purple Jacket', 'MEDIUM', 25.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000015', 'Large Purple Jacket','LARGE',  30.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000016', 'X-Large Purple Jacket', 'XLARGE', 35.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000017', 'small Green Jacket', 'SMALL', 20.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000018', 'medium Green Jacket', 'MEDIUM', 25.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000019', 'Large Green Jacket','LARGE',  30.00, 20000);
  Insert Into Products(ItemId, ItemName, DEpartmentName, Price, StockQuantity) Values('ABC0000020', 'X-Large Green Jacket', 'XLARGE', 35.00, 20000);

  Create Table UserRole
  (
  	UserRole VarChar(20) Not Null,
  	UserPswd VarChar(10) 
  	);

  Insert into UserRole (UserRole, UserPswd) Values ('Buyer', '');
  Insert into UserRole (UserRole, UserPswd) Values ('Manager', '');
  Insert into UserRole (UserRole, UserPswd) Values ('Executive', '');


  Create Table Department
  (
  	DeptID Char(20) Not Null,
  	Description Char(30),
  	Overheads Float(7,2),
  	Sales Float(7,2),
  	Primary Key (DeptID)
  	);

  Insert Into Department (DeptID, Description, Overheads, Sales) Values ('SMALL', ' Small Jackets', 3100, 0) ;
  Insert Into Department (DeptID, Description, Overheads, Sales) Values ('MEDIUM', 'Medium Jackets', 3500, 0) ;
  Insert Into Department (DeptID, Description, Overheads, Sales) Values ('LARGE', ' Large Jackets', 4000, 0) ;
  Insert Into Department (DeptID, Description, Overheads, Sales) Values ('XLARGE', ' X-Large Jackets', 4500, 0) ;




