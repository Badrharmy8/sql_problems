-- tablefortest 
create table tablefortest(
    ID int primary key,
    date_of_birth date
);
-- adding data
insert into tablefortest
values(1, '1907-08-15'),
    (2 , '1883-06-27'),
    (3 ,  '1900-01-01'),
    (4 , '1901-01-01'),
    (5 , '2005-09-01'),
    (6 , '1775-11-23'),
    ( 7 , '1800-01-01');
-- retreive all data    
select * from tablefortest;
-- calculate the century
select 
    ID ,
    date_of_birth , 
    ceil(year(date_of_birth) / 100) as 'Century'
from tablefortest;    
