-- doctor_clinic table
CREATE TABLE dr_clinic (
    visiting_date date primary key,
     availability bool);
-- adding data
INSERT INTO dr_clinic 
VALUES ('2016-06-11','1'),
     ('2016-06-12','1'),
     ('2016-06-13','0'),
     ('2016-06-14','1'),
     ('2016-06-15','0'),
     ('2016-06-16','0'),
     ('2016-06-17','1'),
     ('2016-06-18','1'),
     ('2016-06-19','1'),
     ('2016-06-20','1'),	   
     ('2016-06-21','1');
-- availability of the doctor for consecutive 2 or more days   
select a.visiting_date
from dr_clinic a join dr_clinic b 
where b.availability = '1' and a.availability = '1'
and datediff(a.visiting_date , b.visiting_date) = -1
union
select b.visiting_date
from dr_clinic a join dr_clinic b 
where b.availability = '1' and a.availability = '1'
and datediff(a.visiting_date , b.visiting_date) = -1
order by visiting_date;




