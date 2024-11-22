-- cutomers table
CREATE TABLE customers (customer_id int, customer_name varchar(255), customer_city varchar(255), avg_profit int);
-- adding data
INSERT INTO customers  VALUES ('101', 'Liam','New York',25000);
INSERT INTO customers  VALUES ('102', 'Josh','Atlanta',22000);
INSERT INTO customers  VALUES ('103', 'Sean','New York',27000);
INSERT INTO customers  VALUES ('104', 'Evan','Toronto',15000);
INSERT INTO customers  VALUES ('105', 'Toby','Dallas',20000);

-- supplier table
CREATE TABLE supplier (supplier_id int, supplier_name varchar(255), supplier_city varchar(255));
-- adding data
INSERT INTO supplier  VALUES ('501', 'ABC INC','Dallas');
INSERT INTO supplier  VALUES ('502', 'DCX LTD','Atlanta');
INSERT INTO supplier  VALUES ('503', 'PUC ENT','New York');
INSERT INTO supplier  VALUES ('504', 'JCR INC','Toronto');
	
-- orders table    
CREATE TABLE orders (order_id int, customer_id int, supplier_id int, order_date Date, order_amount int);
-- adding data
INSERT INTO orders  VALUES (401, 103,501,'2012-03-08','4500');
INSERT INTO orders  VALUES (402, 101,503,'2012-09-15','3650');
INSERT INTO orders  VALUES (403, 102,503,'2012-06-27','4800');
INSERT INTO orders  VALUES (404, 104,502,'2012-06-17','5600');
INSERT INTO orders  VALUES (405, 104,504,'2012-06-22','6000');
INSERT INTO orders  VALUES (406, 105,502,'2012-06-25','5600');

-- cutomers don't make order for DCX LTD supplier
select customer_name from customers
where customer_name not in(
select distinct customer_name
from customers c join orders d on c.customer_id = d.customer_id
join supplier s on s.supplier_id = d.supplier_id
where s.supplier_name = 'DCX LTD');
