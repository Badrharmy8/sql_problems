-- managing_body table
CREATE TABLE managing_body (manager_id int NOT NULL UNIQUE, manager_name varchar(255), running_years int);
INSERT INTO managing_body VALUES(51,'James',5);
INSERT INTO managing_body VALUES(52,'Cork',3);
INSERT INTO managing_body VALUES(53,'Paul',4);
INSERT INTO managing_body VALUES(54,'Adam',3);
INSERT INTO managing_body VALUES(55,'Hense',4);
INSERT INTO managing_body VALUES(56,'Peter',2);
-- scheme table
CREATE TABLE scheme (scheme_code int NOT NULL , scheme_manager_id int NOT NULL, 
PRIMARY KEY(scheme_code,scheme_manager_id));
INSERT INTO scheme VALUES(1001,	51);
INSERT INTO scheme VALUES(1001,	53);
INSERT INTO scheme VALUES(1001,	54);
INSERT INTO scheme VALUES(1001,	56);
INSERT INTO scheme VALUES(1002,	51);
INSERT INTO scheme VALUES(1002,	55);
INSERT INTO scheme VALUES(1003,	51);
INSERT INTO scheme VALUES(1004,	52);
-- manager with average experience
select scheme_code , round(avg(running_years),2) 'average_experience_year'
from managing_body m join scheme s
on m.manager_id = s.scheme_manager_id
group by scheme_code;