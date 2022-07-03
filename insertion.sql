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






insert into Department values(13,'Meat',1300000013);
insert into Department values(8,'Health',1300000008);
insert into Department values(2,'Beauty',1300000002);
insert into Department values(19,'Stationery',1300000019);
insert into Department values(196,'Sea food',1300000196);





insert into Product values(13,195,25,'Roast Chicken',1934543231,1318030000);
insert into Product values(19,210,11,'Pen Stand',1934647845,1916190000);
insert into Product values(196,900,16,'Rupchanda Fish',1988778346,1961806000);
insert into Product values(2,45,52,'Sandal Soap',1923456789,0219190000);
insert into Product values(8,180,121,'Anti-viral mask',1923234565,0801221300);





-- for employee id, the first 2 digit is for department, 
-- 2nd 2 digit is 05 if they are employee, and 13 if they are manager, 
-- and the next 2 digit for the order number of their name's first letter
insert into Employee values('Edward',20000.00,0005050000,01881765438,02);
insert into Employee values('Britanny',23874.43,0105020000,01664593289,01);
insert into Employee values('Anthony',26546.41,0105010000,01675433270,01);
insert into Employee values('Michael',54008.32,1300000008,01879453219,13);
insert into Employee values('Larry',61003.43,1300000013,01654876912,13);








insert into Bill values(0105020000,02579732392215259653,'Asif',01991912661,0334567890,'12-JAN-2022',1045.2,'Bkash');
insert into Bill values(0105010000,21211935258104054070,'Saad',01946728227,0345678901,'14-FEB-2022',876.98,'Cash');
insert into Bill values(0105020000,16521037165827003655,'Otto',01875043576,0367890123,'23-JUN-2022',2321.76,'Visa Card');
insert into Bill values(0105010000,11596156378532767219,'Thomas',01991948555,0301234567,'05-JUL-2022',4329.95,'Cash');
insert into Bill values(0105010000,27234131228344892985,'Mike',01991948235,0312345678,'09-JAN-2022',1875.34,'Cash');







