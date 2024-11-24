-- purchase table
CREATE TABLE purchase (customer_id int not null, item_code int not null, purch_qty int not null);
INSERT INTO purchase VALUES (101,504,25 );
INSERT INTO purchase VALUES (101,503,50 );
INSERT INTO purchase VALUES (102,502,40 );
INSERT INTO purchase VALUES (102,503,25 );
INSERT INTO purchase VALUES (102,501,45 );
INSERT INTO purchase VALUES (103,505,30 );
INSERT INTO purchase VALUES (103,503,25 );
INSERT INTO purchase VALUES (104,505,40 );
INSERT INTO purchase VALUES (101,502,25 );
INSERT INTO purchase VALUES (102,504,40 );
INSERT INTO purchase VALUES (102,505,50 );
INSERT INTO purchase VALUES (103,502,25 );
INSERT INTO purchase VALUES (104,504,40 );
INSERT INTO purchase VALUES (103,501,35 );
-- retreive highest purchase for each customer
SELECT customer_id , max(purch_qty)
FROM purchase
GROUP BY customer_id;