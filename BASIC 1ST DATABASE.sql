
/* this is basic project of creating  database 
  creating table and insert a value in it 
  and the select and where statement etc*/

create  database customers;   -- create database customers

use customers;                -- using customer datbase 

create table customer(        -- create table in customers database
   customerId int primary key,
   customername varchar (25),
   contactName varchar (30),
   address varchar(25),
   city varchar(23),
   postalcode int(10),
   country varchar(15)
);

INSERT ignore into customer    -- insert value in customer table 
(customerId, customername, contactname, address, city, postalcode, country)
values
 ('1','Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'),
 ('2','Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico'),
('3','Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F','05023','Mexico'),
 ('4','Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'),
 ('5','Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden');
 
 
 select*FROM  customer;          -- using select statement for all columns
 
  select distinct country,customerId     -- using select disctict statement
 from customer;
 
 select count(distinct(country))       -- usiing select count distinct statement
 from customer;
 
 select* FROM customer                --  where statement  for country
 where country="mexico";
 
 select* from customer
 where customerId =2;                  -- where statement using oprator =
 
 select* from customer                 -- where statement using oprator < >
 where customerId <5;

select* FROM customer
order by 