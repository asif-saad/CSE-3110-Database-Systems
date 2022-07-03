---- creating all the tables


create table Customer(

    CName VARCHAR2(20),
    PNumber NUMBER(11) NOT NULL,
    CustomerId NUMBER(10),
    PRIMARY KEY (CustomerId)
);



create table Supplier(

    SupplierId NUMBER(10),
    SupplierName VARCHAR2(20),
    PNumber NUMBER(11) NOT NULL,
    PRIMARY KEY (SupplierId)
);



create table Department(

    DepartmentId NUMBER(10),
    DepartmentName VARCHAR2(12),
    ManagerId NUMBER(10),
    PRIMARY KEY(ManagerId,DepartmentId)

);




create table Product(
    DepartmentId NUMBER(10) NOT NULL,
    Price NUMBER(8,2),
    Quantity NUMBER(5) NOT NULL,
    PName VARCHAR2(20),
    SupplierId NUMBER(10) NOT NULL,
    ProductId NUMBER(10),
    PRIMARY KEY (ProductId),
    foreign KEY (Department) REFERENCES Department(DepartmentId),
    foreign KEY (SupplierId) REFERENCES Supplier(SupplierId)
);
 -- product table has supplierid which is primary key to supplier table



-- add primary keys




create table Employee(

    EName VARCHAR2(20) NOT NULL,
    Salary NUMBER(8,2),
    EId NUMBER(10),
    PNumber NUMBER(11),
    DepartmentId NUMBER(10) NOT NULL,
    PRIMARY KEY (EId),
    foreign KEY (DepartmentId) REFERENCES Department(DepartmentId)

);
-- here EmployeeId is present in other tables as foreign key



create table Bill(

    EId VARCHAR2(10),
    BillNo NUMBER(20),
    CName VARCHAR2(20),
    CPhoneNumber NUMBER(11) NOT NULL,
    CustomerId NUMBER(10),
    BillDate DATE NOT NULL;
    Amount NUMBER(8,2) NOT NULL,
    BillMethod VARCHAR2(10),
    PRIMARY KEY(BillNo),
    foreign KEY (EId) REFERENCES Employee(EId)

);