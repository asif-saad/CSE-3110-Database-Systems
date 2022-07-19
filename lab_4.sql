SELECT DISTINCT(SupplierName) FROM Supplier;







SELECT (Salary/94) AS Salary_in_USD FROM Employee;





SELECT name,EmployeeId FROM Employee WHERE Salary BETWEEN 30000 AND 70000;





SELECT PName,Quantity from product where price in (210,900,45);





select SupplierName from supplier where SupplierName LIKE '%k%';




-- multiple column ordering

select Cname, CPhoneNumber, Billdate, Eid, Amount from Bill order by Eid, Amount;





-- usuage of group by clause

select DepartmentId from employee group by DepartmentId;





-- having clause

select Eid from bill group by Eid having max(Amount)>100;






