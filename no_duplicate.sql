/*return data without duplicated*/
-- student_test table
create table student_test(
    student_id int,
    marks_acheived int,
    constraint id_pk primary key(student_id)
);
-- adding data
insert into student_test
values(1 , 56),
    (2 , 74),
    (3 , 15),
    (4 , 74),
    (5 , 89),
    (6 , 56),
    (7 , 93);
-- retreive data without duplicating
select distinct marks_acheived
from student_test;  
 