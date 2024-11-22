-- salemast table
CREATE TABLE salemast(salesman_id int, salesman_name varchar(255), yearly_sale int);
INSERT INTO salemast VALUES (101, 'Adam', 250000);
INSERT INTO salemast VALUES (103, 'Mark', 100000);
INSERT INTO salemast VALUES (104, 'Liam', 200000);
INSERT INTO salemast VALUES (102, 'Evan', 150000);
INSERT INTO salemast VALUES (105, 'Blake', 275000);
INSERT INTO salemast VALUES (106, 'Noah', 50000);
-- commision table
CREATE TABLE commision (salesman_id int, commision_amt int);
INSERT INTO commision VALUES (101, 10000);
INSERT INTO commision VALUES (103, 4000);
INSERT INTO commision VALUES (104, 8000);
INSERT INTO commision VALUES (102, 6000);
INSERT INTO commision VALUES (105, 11000);
-- commision < 10000
select salesman_name , commision_amt
from salemast s join commision c
on s.salesman_id = c.salesman_id
where commision_amt < 10000;