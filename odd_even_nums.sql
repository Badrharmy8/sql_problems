/* even and odd numbers */
-- tablefortest
create table tablefortest(
    srno int primary key,
    col_val int
);
-- adding data to the table
insert into tablefortest
values(1 , 56),
    (2 , 74),
    (3 , 15),
    (4 , 51),
    (5 , 9),
    (6 , 32);
-- retreive all data
select * from tablefortest;    
-- determine odd and even numbers    
select 
    srno ,
    col_val ,
    if(col_val % 2 = 0 , 'Even' , 'Odd')  as type
from tablefortest; 
   
