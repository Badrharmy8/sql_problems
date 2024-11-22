-- student table
create table students(
    student_id int primary key,
    student_name varchar(25),
    teacher_id int
);
-- adding data
insert into students
values(1001 , 'Alex' , 601);
insert into students(student_id , student_name)
values(1002 , 'Jhon');
insert into students(student_id , student_name)
values(1003 , 'Peter' );
insert into students
values(1004 , 'Minto' , 604);
insert into students(student_id , student_name)
values(1005 , 'Crage' );
insert into students
values(1006 , 'Chang' , 601);
insert into students
values(1007 , 'Philip' , 602);
-- return students not with teacher 602
select student_name
from students
where teacher_id <> 602 or teacher_id is null;
