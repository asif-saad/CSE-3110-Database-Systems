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
insert into Bill values(100212,2579732392215259653,'Asif',01991912661,0334567890,'12-JAN-2022',1045.2,'Bkash');
insert into Bill values(100110,21211935258104054070,'Saad',01946728227,0345678901,'14-FEB-2022',876.98,'Cash');
insert into Bill values(100212,16521037165827003655,'Otto',01875043576,0367890123,'23-JUN-2022',2321.76,'Visa Card');
insert into Bill values(100212,11596156378532767219,'Thomas',01991948555,0301234567,'05-JUL-2022',4329.95,'Cash');
insert into Bill values(100110,27234131228344892985,'Mike',01991948235,0312345678,'09-JAN-2022',1875.34,'Cash');




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



