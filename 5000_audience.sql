-- match_crowd table
CREATE TABLE match_crowd(
    match_no int, 
    match_date date not null unique,
     audience int);
-- adding data     
INSERT INTO match_crowd 
VALUES ( 1,'2016-06-11',  75113 ),
     ( 2,'2016-06-12',  62343 ),
     ( 3,'2016-06-13',  43035 ),
     ( 4,'2016-06-14',  55408 ),
     ( 5,'2016-06-15',  38742 ),
     ( 6,'2016-06-16',  63670 ),
     ( 7,'2016-06-17',  73648 ),
     ( 8,'2016-06-18',  52409 ),
     ( 9,'2016-06-19',  67291 ),
     (10,'2016-06-20',  49752 ),
     (11,'2016-06-21',  28840 ),
     (12,'2016-06-22',  32836 ),
     (13,'2016-06-23',  44268 );
-- retreiv all data
select * from match_crowd;    
-- matches more than 50000 audience
select a.match_no , a.match_date , a.audience
from match_crowd a join match_crowd b
where a.match_no in 
(select match_no from match_crowd where audience > 50000) 
and a.match_no = b.match_no + 4 ;

