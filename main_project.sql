-- intialisation of the project phase for cse 3110 

--- DROPPING TABLES INITIALLY

DROP TABLE Buy_from;
DROP TABLE Purchase;
DROP TABLE supply;
DROP TABLE work_for;
DROP TABLE payment;
DROP TABLE Customer;
DROP TABLE Department;
DROP TABLE Product;
DROP TABLE Bill;
DROP TABLE Employee;
DROP TABLE Supplier;



--- ENDED DROPPING TABLES





---- CREATING ALL THE TABLES


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
ManagerId NUMBER(10),
PRIMARY KEY(ManagerId,DepartmentId));





create table Buy_from
(CustomerId NUMBER(10),
ManagerId NUMBER(10),
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
ProductId NUMBER(10),
PRIMARY KEY (ProductId),
--foreign KEY (DepartmentId) REFERENCES Department(DepartmentId),
foreign KEY (SupplierId) REFERENCES Supplier(SupplierId));
 -- product table has supplierid which is primary key to supplier table
-- add primary keys





create table supply
(ProductId NUMBER(10),
SupplierId NUMBER(10),
foreign key (ProductId) REFERENCES product(ProductId),
foreign key (supplierid) REFERENCES supplier(supplierid));






create table Purchase
(CustomerId NUMBER(10),
ProductId NUMBER(10),
foreign key (CustomerId) REFERENCES Customer(CustomerId),
foreign key (ProductId) REFERENCES product(ProductId));






create table Employee
(EName VARCHAR2(20) NOT NULL,
Salary NUMBER(8,2),
EId NUMBER(10),
PNumber NUMBER(11),
DepartmentId NUMBER(3) NOT NULL,
PRIMARY KEY (EId));
--foreign KEY (DepartmentId) REFERENCES Department(DepartmentId));
-- here EmployeeId is present in other tables as foreign key






create table work_for
(ManagerId NUMBER(10),
DepartmentId NUMBER(3),
EId NUMBER(10),
primary key(ManagerId,EId),
foreign key (ManagerId,DepartmentId) REFERENCES department(ManagerId,DepartmentId),
foreign key (EId) REFERENCES employee(EId));







create table Bill
(EId NUMBER(10),
BillNo NUMBER(20),
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









-- INSERTION VALUES INTO THE TABLES


insert into Customer values('Asif',01991912661,0334567890);
insert into Customer values('Saad',01946728227,0345678901);
insert into Customer values('Otto',01875043576,0367890123);
insert into Customer values('Thomas',01991948555,0301234567);
insert into Customer values('Mike',01991948235,0312345678);






insert into Supplier values(1923456789,'Rick',01991916548);
insert into Supplier values(1923234565,'Blake',01991916587);
insert into Supplier values(1934543231,'Pink',01991916512);
insert into Supplier values(1934647845,'Walter',01991916500);
insert into Supplier values(1988778346,'Nacho',01991916509);






insert into Department values(13,'Meat',1313000000);
insert into Department values(8,'Health',0813000000);
insert into Department values(2,'Beauty',0213000000);
insert into Department values(19,'Stationery',1913000000);
insert into Department values(196,'Sea food',1961300000);
insert into Department values(1,'Check out',0113000000);

-- 'EID' MAY REQUIRE SOME MODIFICATION




insert into Product values(13,195,25,'Roast Chicken',1934543231,1318030000);
insert into Product values(19,210,11,'Pen Stand',1934647845,1916190000);
insert into Product values(196,900,16,'Rupchanda Fish',1988778346,1961806000);
insert into Product values(2,45,52,'Sandal Soap',1923456789,0219190000);
insert into Product values(8,180,121,'Anti-viral mask',1923234565,0801221300);




-- for employee id, the first 2 digit is for department, 
-- 2nd 2 digit is 05( for 'E' in employee) if they are employee, and 13 if they are manager, 
-- and the next 2 digit for the order number of their name's first letter
-- if first 2 digit is 01, then it is the accountant
insert into Employee values('Edward',20000.00,0205050000,01881765438,2);
insert into Employee values('Britanny',23874.43,0105020000,01664593289,1);
insert into Employee values('Anthony',26546.41,0105010000,01675433270,1);
insert into Employee values('Michael',54008.32,1305130000,01879453219,13);
insert into Employee values('Larry',61003.43,1913120000,01654876912,19);









insert into Bill values(0105020000,02579732392215259653,'Asif',01991912661,0334567890,'12-JAN-2022',1045.2,'Bkash');
insert into Bill values(0105010000,21211935258104054070,'Saad',01946728227,0345678901,'14-FEB-2022',876.98,'Cash');
insert into Bill values(0105020000,16521037165827003655,'Otto',01875043576,0367890123,'23-JUN-2022',2321.76,'Visa Card');
insert into Bill values(0105010000,11596156378532767219,'Thomas',01991948555,0301234567,'05-JUL-2022',4329.95,'Cash');
insert into Bill values(0105010000,27234131228344892985,'Mike',01991948235,0312345678,'09-JAN-2022',1875.34,'Cash');






insert into Buy_from values(0301234567,1313000000,13);
insert into Buy_from values(0345678901,0813000000,08);
insert into Buy_from values(0367890123,0213000000,02);
insert into Buy_from values(0301234567,1313000000,13);
insert into Buy_from values(0345678901,0213000000,02);



insert into work_for values(1313000000,13,1305130000);
insert into work_for values(1913000000,19,1913120000);
insert into work_for values(0813000000,08,0205050000);



insert into Purchase values(0367890123,1961806000);
insert into Purchase values(0367890123,0219190000);
insert into Purchase values(0345678901,0219190000);
insert into Purchase values(0367890123,0801221300);
insert into Purchase values(0345678901,1916190000);





insert into supply values(1916190000,1923456789);
insert into supply values(0219190000,1934647845);
insert into supply values(1961806000,1923234565);
insert into supply values(0801221300,1923456789);
insert into supply values(1916190000,1934647845);





insert into payment values(0334567890,02579732392215259653);
insert into payment values(0345678901,21211935258104054070);
insert into payment values(0367890123,16521037165827003655);
insert into payment values(0301234567,11596156378532767219);
insert into payment values(0312345678,27234131228344892985);








-- ENDED INSERTING VALUES INTO TABLES