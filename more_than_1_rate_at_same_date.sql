-- topics table
CREATE TABLE topics (topic_id int, writer_id int, rated_by int, date_of_rating date);
INSERT INTO topics VALUES (10001,504,507,'2020-07-17');
INSERT INTO topics VALUES (10003,502,503,'2020-09-22'); 
INSERT INTO topics VALUES (10001,503,507,'2020-12-23'); 
INSERT INTO topics VALUES (10002,501,507,'2020-07-17'); 
INSERT INTO topics VALUES (10002,502,502,'2020-04-10'); 
INSERT INTO topics VALUES (10002,504,502,'2020-11-16'); 
INSERT INTO topics VALUES (10003,501,502,'2020-04-10'); 
INSERT INTO topics VALUES (10001,507,507,'2020-10-23'); 
INSERT INTO topics VALUES (10004,503,501,'2020-08-28'); 
INSERT INTO topics VALUES (10003,505,504,'2020-12-21');
-- writer rates more than one topic at the same date
SELECT rated_by 
FROM topics
GROUP BY rated_by , date_of_rating
HAVING count(topic_id) > 1;
