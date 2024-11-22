-- items table
CREATE TABLE items (item_code int not null unique, item_name varchar(255));
INSERT INTO items VALUES (10091,'juice');
INSERT INTO items VALUES (10092,'chocolate');
INSERT INTO items VALUES (10093,'cookies');
INSERT INTO items VALUES (10094,'cake');
-- orders table
CREATE TABLE orders (order_id int, distributor_id int, item_ordered int, item_quantity int,
foreign key(item_ordered) references items(item_code));
INSERT INTO orders VALUES (1,501,10091,250);
INSERT INTO orders VALUES (2,502,10093,100);
INSERT INTO orders VALUES (3,503,10091,200);
INSERT INTO orders VALUES (4,502,10091,150);
INSERT INTO orders VALUES (5,502,10092,300);
INSERT INTO orders VALUES (6,504,10094,200);
INSERT INTO orders VALUES (7,503,10093,250);
INSERT INTO orders VALUES (8,503,10092,250);
INSERT INTO orders VALUES (9,501,10094,180);
INSERT INTO orders VALUES (10,503,10094,350);
-- distributor of all items
select distributor_id 
from items join orders
on items.item_code = orders.item_ordered
group by distributor_id
having count(item_ordered) = (select count(item_code) from items);