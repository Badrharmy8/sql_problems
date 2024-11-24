-- item table
CREATE TABLE item (item_code int not null unique, item_desc varchar(255), cost int);
INSERT INTO item VALUES(101,'mother board',	2700);
INSERT INTO item VALUES(102,'RAM',	800);
INSERT INTO item VALUES(103,'key board',300);
INSERT INTO item VALUES(104,'mouse',300);
-- sales_info table
CREATE TABLE sales_info (distributor_id int, item_code int, retailer_id int, date_of_sell date, quantity int, total_cost int);
INSERT INTO sales_info VALUES(5001,101,1001,'2020-02-12',3,8100);
INSERT INTO sales_info VALUES(5001,103,1002,'2020-03-15',15,4500);
INSERT INTO sales_info VALUES(5002,101,1001,'2019-06-24',2,5400);
INSERT INTO sales_info VALUES(5001,104,1003,'2019-09-11',8,2400);
INSERT INTO sales_info VALUES(5003,101,1003,'2020-10-21',5,13500);
INSERT INTO sales_info VALUES(5003,104,1002,'2020-12-27',10,3000);
INSERT INTO sales_info VALUES(5002,102,1001,'2019-05-18',12,9600);
INSERT INTO sales_info VALUES(5002,103,1004,'2020-06-17',8,2400);
INSERT INTO sales_info VALUES(5003,103,1001,'2020-04-12',3,900);
-- best seller
SELECT distributor_id 
FROM sales_info
GROUP BY distributor_id
HAVING sum(total_cost) = (
    SELECT sum(total_cost) 
    FROM sales_info
    GROUP BY distributor_id
    ORDER BY sum(total_cost) DESC
    LIMIT 1
);