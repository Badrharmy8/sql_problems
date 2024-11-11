-- table for orders
create table Orders(
        order_id int,
        customer_id int,
        item_desc varchar(25),
        order_date date,
        constraint pk_id primary key(order_id)
);
-- data added to orders
insert into Orders
values(101 , 2109 , 'juice' , '2020-03-03'),
    (102 , 2139 , 'chocolate' , '2019-03-18'),
    (103 , 2120 , 'juice' , '2019-03-08'),
    (115 , 2135 , 'cake' , '2020-04-03'),
    (150 , 2115 , 'chocolate' , '2019-04-03'),
    (199 , 2130 , 'juice' , '2019-03-16'),
    (200 , 2117 , 'cake' , '2021-03-10');
insert into Orders
values(201 , 2109 , 'cake' , '2020-03-05');   
-- retreive all data
select * from Orders;
-- retreive an active customer    
select 
    o1.customer_id as 'Active Customer'
from     
    Orders o1 join Orders o2
where
    o1.customer_id = o2.customer_id
and 
    o1.order_date between(o2.order_date + 1) and (o2.order_date + 10);       