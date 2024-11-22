-- salemate table 
create table salemate(
    saleperson_id int primary key,
    order_id int
);
-- adding data
insert into salemate
values(5001 , 1001),
    (5002 , 1002),
    (5003 , 1002),
    (5004 , 1002),
    (5005 , 1003),
    (5006 , 1004),
    (5007 , 1004),
    (5008 , 1004);
-- retreive all data
select * from salemate;    
-- retreive order_id with max use
select order_id
from salemate
group by order_id
having count(order_id) = (
    select count(order_id)
    from salemate
    group by order_id
    order by count(order_id) desc
    limit 1
)
order by order_id;
 