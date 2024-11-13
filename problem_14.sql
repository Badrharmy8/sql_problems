-- students table
CREATE TABLE students(
    student_id int, 
    student_name varchar(255),
     marks_achieved int);
-- adding data
INSERT INTO students 
VALUES(1, 'Alex',87),
     (2, 'Jhon',92),
     (3, 'Pain',83),
     (4, 'Danny',87),
     (5, 'Paul',92),
     (6, 'Rex',89),
     (7, 'Philip',87),
     (8, 'Josh',83),
     (9, 'Evan',92),
     (10, 'Larry',87);
-- retreive the highest mark without duplication
select max(marks_achieved)
from students
group by marks_achieved
having count(marks_achieved) = 1;
