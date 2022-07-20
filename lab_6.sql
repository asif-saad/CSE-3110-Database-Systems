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


