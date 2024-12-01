-- order_stat table
CREATE TABLE order_stat (order_id int not null unique, com_name varchar(25), ord_qty int, ord_stat varchar(25), stat_date date);
INSERT INTO order_stat VALUES (151, 'MMS INC'		,500,	'Booked',		'2020-08-15');
INSERT INTO order_stat VALUES (152, 'BCT LTD'		,300,	'Cancelled',	'2020-08-15');
INSERT INTO order_stat VALUES (153, 'MMS INC'		,400,	'Cancelled',	'2020-08-26');
INSERT INTO order_stat VALUES (154, 'XYZ COR'		,500,	'Booked',		'2020-08-15');
INSERT INTO order_stat VALUES (155, 'MMS INC'		,500,	'Cancelled',	'2020-10-11');
INSERT INTO order_stat VALUES (156, 'BWD PRO LTD'	,250,	'Cancelled',	'2020-11-15');
INSERT INTO order_stat VALUES (157, 'BCT LTD'		,600,	'Booked',		'2020-10-07');
INSERT INTO order_stat VALUES (158, 'MMS INC'		,300,	'Booked',		'2020-12-11');
INSERT INTO order_stat VALUES (159, 'XYZ COR'		,300,	'Booked',		'2020-08-26');
INSERT INTO order_stat VALUES (160, 'BCT LTD'		,400,	'Booked',		'2020-11-15');
-- data of booked and data of cancelled
SELECT CONCAT(Year(stat_date) , '-' , Month(stat_date)),
    com_name,
    SUM(CASE WHEN ord_stat = 'Booked' THEN 1
        ELSE 0 END) ,
    SUM(CASE WHEN ord_stat = 'Booked' THEN ord_qty
        ELSE 0 END) ,
    SUM(CASE WHEN ord_stat = 'Cancelled' THEN 1
        ELSE 0 END),
    SUM(CASE WHEN ord_stat = 'Cancelled' THEN ord_qty
        ELSE 0 END) 
FROM order_stat
GROUP BY com_name , CONCAT(Year(stat_date) , '-' , Month(stat_date));            
