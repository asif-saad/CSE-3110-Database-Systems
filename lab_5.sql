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






