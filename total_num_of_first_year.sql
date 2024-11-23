-- exam_test table
CREATE TABLE exam_test (exam_id int not null, subject_id int not null, exam_year int not null, no_of_student int,
primary key (exam_id,subject_id,exam_year));
INSERT INTO exam_test VALUES (71,201,2017,5146);
INSERT INTO exam_test VALUES (72,202,2017,3651);
INSERT INTO exam_test VALUES (73,202,2018,4501);
INSERT INTO exam_test VALUES (71,202,2018,5945);
INSERT INTO exam_test VALUES (73,201,2018,2647);
INSERT INTO exam_test VALUES (71,201,2018,3545);
INSERT INTO exam_test VALUES (73,201,2019,2647);
INSERT INTO exam_test VALUES (72,201,2018,3500);
INSERT INTO exam_test VALUES (71,203,2017,2500);
INSERT INTO exam_test VALUES (71,202,2019,2500);
INSERT INTO exam_test VALUES (71,202,2017,2701);
INSERT INTO exam_test VALUES (73,201,2017,1000);
-- subject_test table
CREATE TABLE subject_test (subject_id int not null unique, subject_name varchar(255));
INSERT INTO subject_test VALUES (201,'Mathematics');
INSERT INTO subject_test VALUES (202,'Physics');
INSERT INTO subject_test VALUES (203,'Chemistry');
-- students of each exam for the first year
select exam_id , subject_name , exam_year 'first_year' , sum(no_of_student)
from exam_test e join subject_test s
on e.subject_id = s.subject_id
group by e.exam_id , subject_name , exam_year
having exam_year = (select min(exam_year) from exam_test);