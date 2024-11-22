-- orders table
create table orders(
    order_id int primary key,
    customer_id int,
    item_desc varchar(25)
);
-- adding data
insert into orders
values(101 , 2109 , 'juice'),
    (102 , 2139 , 'chocolate'),
    (103 , 2120 , 'juice'),
    (104 , 2108 , 'cookies'),
    (105 , 2130 , 'juice'),
    (106 , 2103 , 'cake'),
    (107 , 2122 , 'cookies'),
    (108 , 2125 , 'cake'),
    (109 , 2139 , 'cake'),
    (1010 , 2141 , 'cookies'),
    (1011 , 2116 , 'cake'),
    (1012 , 2128 , 'cake'),
    (1013 , 2146 , 'chocolate'),
    (1014 , 2119 , 'cookies'),
    (1015 , 2142 , 'cake');
-- retreive all data
select * from orders;    
-- order for 5 times or more
select item_desc , count(item_desc)
from orders
group by item_desc
having count(item_desc) >= 5;