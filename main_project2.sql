-- intialisation of the project phase for cse 3110 

--- only dropping tables initially

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
























insert into Customer values('Asif',01991912661,334567890);
insert into Customer values('Saad',01946728227,345678901);
insert into Customer values('Otto',01875043576,367890123);
insert into Customer values('Thomas',01991948555,301234567);
insert into Customer values('Mike',01991948235,312345678);






insert into Supplier values(1923456789,'Rick',01991916548);
insert into Supplier values(1923234565,'Blake',01991916587);
insert into Supplier values(1934543231,'Pink',01991916512);
insert into Supplier values(1934647845,'Walter',01991916500);
insert into Supplier values(1988778346,'Nacho',01991916509);



insert into Department values(13,'Meat',1311214);
insert into Department values(8,'Health',812310);
insert into Department values(2,'Beauty',211208);
insert into Department values(19,'Stationery',1910113); 
insert into Department values(196,'Sea food',19610504);




-- 'EID' MAY REQUIRE SOME MODIFICATION





insert into Product values(13,195,25,'Roast Chicken',1934543231,13180300);
insert into Product values(19,210,11,'Pen Stand',1934647845,19161900);
insert into Product values(196,900,16,'Rupchanda Fish',1988778346,19618060);
insert into Product values(2,45,52,'Sandal Soap',1923456789,02191900);
insert into Product values(8,180,121,'Anti-viral mask',1923234565,08012213);




-- for employee id, the first 2 digit is for department, 
-- 2nd 2 digit is 05( for 'E' in employee) if they are employee, and 13 if they are manager, 
-- and the next 2 digit for the order number of their name's first letter
-- if first 2 digit is 01, then it is the accountant
-- (ename, salary, eid, phone number, department id)
insert into Employee values('Edward',20000.00,200503,01881765438,2);
insert into Employee values('Britanny',23874.43,100212,01664593289,1);
insert into Employee values('Anthony',26546.41,100110,01675433270,1);
insert into Employee values('Michael',54008.32,1301308,01879453219,13);
insert into Employee values('Larry',61003.43,1901220,01654876912,19);




-- (Eid, Billno, Cname, Cphone number, Billdate, Amount, Billmethod)
insert into Bill values(100212,2579732392215259653,'Asif',01991912661,0334567890,'12-JAN-22',1045.2,'Bkash');
insert into Bill values(100110,21211935258104054070,'Saad',01946728227,0345678901,'14-FEB-22',876.98,'Cash');
insert into Bill values(100212,16521037165827003655,'Otto',01875043576,0367890123,'23-JUN-22',2321.76,'Visa Card');
insert into Bill values(100212,11596156378532767219,'Thomas',01991948555,0301234567,'05-JUL-22',4329.95,'Cash');
insert into Bill values(100110,27234131228344892985,'Mike',01991948235,0312345678,'09-JAN-22',1875.34,'Cash');




insert into Buy_from values(334567890,1311214,13);
insert into Buy_from values(367890123,812310,8);
insert into Buy_from values(312345678,211208,2);
insert into Buy_from values(301234567,211208,2);




insert into work_for values(1311214,13,1301308);
insert into work_for values(1910113,19,1901220);




insert into Purchase values(367890123,19618060);
insert into Purchase values(367890123,2191900);
insert into Purchase values(345678901,2191900);
insert into Purchase values(367890123,8012213);
insert into Purchase values(345678901,19161900);





insert into supply values(19161900,1923456789);
insert into supply values(2191900,1934647845);
insert into supply values(19618060,1923234565);
insert into supply values(8012213,1923456789);
insert into supply values(19161900,1934647845);





insert into payment values(334567890,2579732392215259653);
insert into payment values(345678901,21211935258104054070);
insert into payment values(367890123,16521037165827003655);
insert into payment values(301234567,11596156378532767219);
insert into payment values(312345678,27234131228344892985);
























-- WORKING ON CURSOR

-- FINDING THE PRODUCT THAT IS STORED HIGHEST NUMBER

SET SERVEROUTPUT ON

DECLARE 
    max_quantity Product.Quantity%TYPE;
    max_quantity_name Product.PName%TYPE;

BEGIN
    SELECT MAX(Quantity) into max_quantity
    FROM Product;
    SELECT PName INTO max_quantity_name
    FROM Product
    WHERE Quantity=max_quantity;
    DBMS_OUTPUT.PUT_LINE(max_quantity_name || ' HAS THE HIGHEST ' || max_quantity || ' QUANTITY' );
    END;
/





-- AND THE FOLLOWING PL/SQL CONTAINS THE FIRST 4 SUPPLIES AND THEIR PRICE
SET SERVEROUTPUT ON

DECLARE

    CURSOR product_detail IS SELECT PName,Price FROM product;
    product_record product_detail%ROWTYPE;

BEGIN
OPEN product_detail;
    LOOP
        FETCH product_detail INTO product_record;
        EXIT WHEN product_detail%ROWCOUNT>4;
        DBMS_OUTPUT.PUT_LINE('NAME: ' || product_record.PName || ' AND IT COSTS ' || product_record.Price || ' PER PIECE');
        END LOOP;
        CLOSE product_detail;
END;
/

























-- FUNCTION IMPLEMENTATION




CREATE OR REPLACE FUNCTION total_salary RETURN NUMBER IS
    avg_salary Employee.salary%TYPE;

BEGIN
    SELECT SUM(Salary) INTO avg_salary
    FROM Employee;
    RETURN avg_salary;
END;
/

SET SERVEROUTPUT ON

BEGIN
    DBMS_OUTPUT.PUT_LINE('THE TOTAL SALARY OF ALL STUFFS IN A MONTH IS: ' || total_salary);
END;
/



















-- LAB 4 IMPLEMENTATION




-- FINDING THE DISTINCT SUPPLIERS

SELECT DISTINCT(SupplierName) FROM Supplier;







-- CONVERTING SALARY INTO USD AND SHOWING WITH A CUSTOMISED COLUMN NAME

SELECT (Salary/94) AS Salary_in_USD FROM Employee;












-- FINDING EMPLOYEE HAVING SALARY BETWEEN 30000 AND 70000

SELECT name,EmployeeId FROM Employee WHERE Salary BETWEEN 30000 AND 70000;








-- FINDING PRODUCTS HAVING PRICE 210/900/45

SELECT PName,Quantity from product where price in (210,900,45);






-- FINDING ALL THE SUPPLIERS HAVING 'K' IN THEIR NAME

select SupplierName from supplier where SupplierName LIKE '%k%';




-- multiple column ordering

select Cname, CPhoneNumber, Billdate, Eid, Amount from Bill order by Eid, Amount;





-- usuage of group by clause

select DepartmentId from employee group by DepartmentId;





-- having clause

select Eid from bill group by Eid having max(Amount)>100;








































-- LAB 5 IMPLEMENTATION






-- using union all function

select Cname,CustomerId 
from bill 
where Amount>1000
UNION all
select c.Cname, c.CustomerId
from bill c
where c.Billmethod IN (
    select Billmethod
    from bill b, employee e
    where b.Eid=e.Eid
);






-- using union operator and there happens to be no duplicate value

select Cname,CustomerId 
from bill 
where Amount>1000
UNION
select c.Cname, c.CustomerId
from bill c
where c.Billmethod IN (
    select Billmethod
    from bill b, employee e
    where b.Eid=e.Eid
);






-- implementation of intersect operator



select PName, Quantity
from product
where Price>200
intersect
select PName, Quantity
from product 
where SupplierId IN (
    select supplierid 
    from supplier 
);


























-- LAB 6 IMPLEMENTATION








-- using natural join in Bill and Employee table
SELECT Bill.CName, Employee.EName
FROM Bill JOIN Employee
ON Bill.EId= Employee.EId;




-- inner join in Department and Employee

SELECT Department.DepartmentName, Employee.EName
FROM Department JOIN Employee
ON Department.ManagerId= Employee.EId;



-- CROSS JOINS/CARTESIAN PRODUCTS BETWEEN SUPPLIER AND CUSTOMER

SELECT Supplier.SupplierName, Customer.CName
FROM Supplier CROSS JOIN Customer;





-- INNER JOIN BETWEEN CUSTOMER AND BILL

SELECT Customer.CName, Bill.BillNo
FROM Customer INNER JOIN Bill
ON Customer.CustomerId=Bill.CustomerId;



-- LEFT OUTER JOIN IN DEPARTMENT AND PRODUCT
SELECT Department.DepartmentName,Department.ManagerId, Product.PName
FROM Department LEFT OUTER JOIN Product
ON Department.DepartmentId=Product.DepartmentId;



























-- PROCEDURE




-- ADDING NEW RECORDS WITH THE HELP OF PROCEDURE


CREATE OR REPLACE PROCEDURE ADD_RECORD(
    supplierid Supplier.SupplierId%TYPE,
    suppliername Supplier.SupplierName%TYPE,
    sphonenumber Supplier.PNumber%TYPE) IS

BEGIN
    INSERT INTO Supplier VALUES(supplierid, suppliername, sphonenumber);

END ADD_RECORD;
/
SHOW ERRORS;


SET SERVEROUTPUT ON;
BEGIN ADD_RECORD(1113452389,'Alex',01965437548);
END;
/




























-- TRANSACTION




-- ADDING NEW VALUES INTO PRODUCT AND SAVING THE POINTS AND ROLLBACK IF REQUIRED

insert into Product values(19,210,11,'Power Supply',1934647845,10164400);

SAVEPOINT prod_1;

select * from Product;

insert into Product values(8,180,121,'Coca-cola',1923234565,08972243);



SAVEPOINT prod_2;

select * from Product;


ROLLBACK to prod_2;





select * from Product;


ROLLBACK to prod_1;



select * from Product;

































--- TRIGGER





-- APPLYING TRIGGER BEFORE INSERT OR UPDATE ON PRODUCT WHETHER ANY PRODUCT HAVING INVALID PRICE

CREATE OR REPLACE TRIGGER check_price BEFORE INSERT OR UPDATE ON PRODUCT

FOR EACH ROW
DECLARE
    p_min constant number(8,2) := 2;
    p_max constant number(8,2) := 500000;

BEGIN
    IF :new.Price> p_max OR :new.Price<p_min then
    RAISE_APPLICATION_ERROR(-20001,'PRICE IS NOT VALID');
    END IF;
END;
/


INSERT INTO PRODUCT VALUES(13,500082,25,'Roast Chicken',1934543231,11380320);




