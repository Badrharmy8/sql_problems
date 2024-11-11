-- fortest table
create table tablefortest(
    srno int,
    pos_neg_val int,
    constraint srno_pk primary key(srno)
);
-- data added to fortest
insert into tablefortest
values(1 , 56),
    (2 , -74),
    (3 , 15),
    (4 , -51),
    (5 , -9),
    (6 , 32);
-- retrieve all data
select * from tablefortest;     
-- convret the signal
-- add new column
alter table tablefortest
add converted_signed_value int; 
-- inserted values 
update tablefortest
set converted_signed_value = pos_neg_val * -1;    
-- retrieve all data
select * from tablefortest;  

