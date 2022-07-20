select sysdate from product;

select current_date from product;

select systimestamp from product;



select BillNo,CName from Bill where current_date-BillDate!=45;


select LAST_DATE(BillDate) from Bill;