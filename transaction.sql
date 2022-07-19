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
