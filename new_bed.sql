-- creating the table
CREATE TABLE bed_info(bed_id int, student_name varchar(255));
-- adding data
INSERT INTO bed_info VALUES (101, 'Alex');
INSERT INTO bed_info VALUES (102, 'Jhon');
INSERT INTO bed_info VALUES (103, 'Pain');
INSERT INTO bed_info VALUES (104, 'Danny');
INSERT INTO bed_info VALUES (105, 'Paul');
INSERT INTO bed_info VALUES (106, 'Rex');
INSERT INTO bed_info VALUES (107, 'Philip');
INSERT INTO bed_info VALUES (108, 'Josh');
INSERT INTO bed_info VALUES (109, 'Evan');
INSERT INTO bed_info VALUES (110, 'Green');
-- new beds
select b1.bed_id as original_bed_id,
    b1.student_name as original_student,
    b2.bed_id as new_bed_id,
    b1.student_name as new_student      
from bed_info b1 join bed_info b2
where b2.bed_id = b1.bed_id + 1 and b1.bed_id % 2 != 0
or b2.bed_id = b1.bed_id - 1 and b1.bed_id % 2 = 0
order by b1.bed_id;
