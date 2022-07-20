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






