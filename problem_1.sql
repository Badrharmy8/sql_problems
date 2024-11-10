-- Active: 1731101247513@@127.0.0.1@3306@leetcode
-- table for sales
create table Sales(
    transaction_id int,
    salesman_id int,
    sale_amount decimal(7,2),
    constraint id_pk primary key(transaction_id),
    constraint s_id_fk foreign key(salesman_id)
    references salesman(salesman_id)
);
-- table for persons
create table salesman(
    salesman_id int,
    salesman_name varchar(50),
    constraint s_id_pk primary key(salesman_id)
);
-- data added to sales
insert into Sales
values(501,59,5200.00),
    (502,59,5566.00),
    (503,11,8400.00),
    (599,13,16745.00),
    (600,12,14900.00);
-- data added to persons 
insert into salesman
values(11,'Jonathan Goodwin'),
    (12,'AAdam Hughes'),
    (13,'Mark Davenport'),
    (59,'Cleveland Hart'),
    (60,'Marion Gregory');
-- retrieve all data 
select * from Sales;
select * from salesman;
-- retrieve persons that made the highest sales
select 
    salesman_name as 'Sales_Man',
    sum(sale_amount) as 'Total_Amount'
from
    salesman  sm join sales s
on
    sm.salesman_id = s.salesman_id
group by s.salesman_id
order by sum(sale_amount) desc
limit 3; 