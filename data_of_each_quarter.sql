-- sale table
CREATE TABLE sale (product_id int not null, sale_qty int, qtr_no varchar(25) not null,
PRIMARY KEY(product_id,qtr_no));
INSERT INTO sale VALUES (3,20000,'qtr1');
INSERT INTO sale VALUES (2,12000,'qtr2');
INSERT INTO sale VALUES (3,23000,'qtr3');
INSERT INTO sale VALUES (1,10000,'qtr2');
INSERT INTO sale VALUES (3,15000,'qtr2');
INSERT INTO sale VALUES (1,15000,'qtr1');
INSERT INTO sale VALUES (4,25000,'qtr2');
INSERT INTO sale VALUES (2,20000,'qtr1');
INSERT INTO sale VALUES (4,18000,'qtr4');
INSERT INTO sale VALUES (3,22000,'qtr4');
-- data of each quarter
SELECT product_id , 
    MIN(if(qtr_no = 'qtr1' , sale_qty , null)) as sale_qrt1,
    MIN(if(qtr_no = 'qtr2' , sale_qty , null)) as sale_qrt2,
    MIN(if(qtr_no = 'qtr3' , sale_qty , null)) as sale_qrt3,
    MIN(if(qtr_no = 'qtr4' , sale_qty , null)) as sale_qrt4
FROM sale
GROUP BY product_id;    
