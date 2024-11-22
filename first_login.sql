-- creating the table 
CREATE TABLE bank_trans(trans_id int, customer_id int, login_date date);
-- adding some data
INSERT INTO bank_trans VALUES (101, 3002, '2019-09-01');
INSERT INTO bank_trans VALUES (101, 3002, '2019-08-01');
INSERT INTO bank_trans VALUES (102, 3003, '2018-09-13');
INSERT INTO bank_trans VALUES (102, 3002, '2018-07-24');
INSERT INTO bank_trans VALUES (103, 3001, '2019-09-25');
INSERT INTO bank_trans VALUES (102, 3004, '2017-09-05');
-- first login
select customer_id , min(login_date) as first_login
from bank_trans
group by customer_id
order by customer_id;
