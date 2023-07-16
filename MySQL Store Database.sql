create database Store;

use Store;

create table SalesPeople(
Snum int(10) Primary Key,
Sname varchar(20) unique,
City varchar(20),
Comm int(10)
);

insert into SalesPeople values (1001, 'Peel.','London',12);
insert into SalesPeople values (1002, 'Serres','Sanjose',13);
insert into SalesPeople values (1004, 'Motika','London',11);
insert into SalesPeople values (1007, 'Rifkin','Barcelona',15);
insert into SalesPeople values (1003, 'Axelrod','Newyork',10);

select * from SalesPeople;

Update SalesPeople 
set Sname = 'Peel'
where Snum = 1001 ;

create table Customers(
Cnum int Primary Key,
Cname varchar(20),
City varchar(20) not null,
Snum int(10),
foreign key (Snum) references SalesPeople(Snum)  
);

insert into Customers values (2001, 'Hoffman', 'London', 1001);
insert into Customers values (2002, 'Giovanni', 'Rome', 1003);
insert into Customers values (2003, 'Liu', 'Sanjose', 1002);
insert into Customers values (2004, 'Grass', 'Berlin', 1002);
insert into Customers values (2006, 'Clemens', 'London', 1001);
insert into Customers values (2008, 'Cisneros', 'Sanjose', 1007);
insert into Customers values (2007, 'Pereira', 'Rome', 1004);

select * from Customers;

create table Orders(
Onum int Primary key,
Amt decimal(20,5),
Odate date,
Cnum int,
foreign key (Cnum) references Customers(Cnum),
Snum int(10),
foreign key (Snum) references SalesPeople(Snum)
);

insert into Orders values (3001, 18.69, '1990-10-3', 2008, 1007);
insert into Orders values (3003, 767.19, '1990-10-3', 2001, 1001);
insert into Orders values (3002, 1900.10, '1990-10-3', 2007, 1004);
insert into Orders values (3005, 5160.45, '1990-10-3', 2003, 1002);
insert into Orders values (3006, 1098.16, '1990-10-3', 2008, 1007);
insert into Orders values (3009, 1713.23, '1990-10-4', 2002, 1003);
insert into Orders values (3007, 75.75, '1990-10-4', 2004, 1002);
insert into Orders values (3008, 4273.00, '1990-10-5', 2006, 1001);
insert into Orders values (3010, 1309.95, '1990-10-6', 2004, 1002);
insert into Orders values (3011, 9891.88, '1990-10-6', 2006, 1001);

select * from Orders;