---- creating all the tables


CREATE TABLE Customer
(CName VARCHAR2(20),
PNumber NUMBER(11) NOT NULL,
CustomerId NUMBER(10),
PRIMARY KEY (CustomerId));



create table Supplier
(SupplierId NUMBER(10),
SupplierName VARCHAR2(20),
PNumber NUMBER(11) NOT NULL,
PRIMARY KEY (SupplierId));



create table Department
(DepartmentId NUMBER(3),
DepartmentName VARCHAR2(12),
ManagerId NUMBER(8),
PRIMARY KEY(ManagerId,DepartmentId));





create table Buy_from
(CustomerId NUMBER(10),
ManagerId NUMBER(8),
DepartmentId NUMBER(3),
primary key(CustomerId,ManagerId),
foreign key (CustomerId) REFERENCES Customer(CustomerId),
foreign key (ManagerId,DepartmentId) REFERENCES department(ManagerId,DepartmentId));






create table Product
(DepartmentId NUMBER(3) NOT NULL,
Price NUMBER(8,2),
Quantity NUMBER(5) NOT NULL,
PName VARCHAR2(20),
SupplierId NUMBER(10) NOT NULL,
ProductId NUMBER(8),
PRIMARY KEY (ProductId),
--foreign KEY (DepartmentId) REFERENCES Department(DepartmentId),
foreign KEY (SupplierId) REFERENCES Supplier(SupplierId));
 -- product table has supplierid which is primary key to supplier table



-- add primary 


create table supply
(ProductId NUMBER(8),
SupplierId NUMBER(10),
foreign key (ProductId) REFERENCES product(ProductId),
foreign key (supplierid) REFERENCES supplier(supplierid));






create table Purchase
(CustomerId NUMBER(10),
ProductId NUMBER(8),
foreign key (CustomerId) REFERENCES Customer(CustomerId),
foreign key (ProductId) REFERENCES product(ProductId));






create table Employee
(EName VARCHAR2(20) NOT NULL,
Salary NUMBER(8,2),
EId NUMBER(8),
PNumber NUMBER(11),
DepartmentId NUMBER(3) NOT NULL,
PRIMARY KEY (EId));
--foreign KEY (DepartmentId) REFERENCES Department(DepartmentId));
-- here EmployeeId is present in other tables as foreign key



create table work_for
(ManagerId NUMBER(8),
DepartmentId NUMBER(3),
EId NUMBER(8),
primary key(ManagerId,EId),
foreign key (ManagerId,DepartmentId) REFERENCES department(ManagerId,DepartmentId),
foreign key (EId) REFERENCES employee(EId));




create table Bill
(EId NUMBER(8) NOT NULL,
BillNo NUMBER(25),
CName VARCHAR2(20),
CPhoneNumber NUMBER(11) NOT NULL,
CustomerId NUMBER(10),
BillDate DATE NOT NULL,
Amount NUMBER(8,2) NOT NULL,
BillMethod VARCHAR2(10),
PRIMARY KEY(BillNo),
foreign KEY (EId) REFERENCES Employee(EId));






create table payment
(CustomerId NUMBER(10),
BillNo NUMBER(20),
foreign key (BillNo) REFERENCES Bill(BillNo),
foreign key (CustomerId) REFERENCES Customer(CustomerId));




-- ENDING OF TABLE CREATION