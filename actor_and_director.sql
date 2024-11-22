-- actor table
CREATE TABLE actor_test (act_id int not null unique, act_name varchar(255));
INSERT INTO actor_test VALUES( 101,'James Stewart');  
INSERT INTO actor_test VALUES( 102,'Deborah Kerr');  
INSERT INTO actor_test VALUES( 103,'Peter OToole');  
INSERT INTO actor_test VALUES( 104,'Robert De Niro');  
INSERT INTO actor_test VALUES( 105,'F. Murray Abraham');  
INSERT INTO actor_test VALUES( 106,'Harrison Ford');  
INSERT INTO actor_test VALUES( 107,'Bill Paxton');  
INSERT INTO actor_test VALUES( 108,'Stephen Baldwin');  
INSERT INTO actor_test VALUES( 109,'Jack Nicholson');  
INSERT INTO actor_test VALUES( 110,'Mark Wahlberg');
-- director table
CREATE TABLE director_test (dir_id int not null unique, dir_name varchar(255));
INSERT INTO director_test VALUES(201,'Alfred Hitchcock ');
INSERT INTO director_test VALUES(202,'Jack Clayton');
INSERT INTO director_test VALUES(203,'James Cameron');
INSERT INTO director_test VALUES(204,'Michael Cimino');
INSERT INTO director_test VALUES(205,'Milos Forman');
INSERT INTO director_test VALUES(206,'Ridley Scott');
INSERT INTO director_test VALUES(207,'Stanley Kubrick');
INSERT INTO director_test VALUES(208,'Bryan Singer');
INSERT INTO director_test VALUES(209,'Roman Polanski');
-- movie_test table
CREATE TABLE movie_test(mov_id int not null unique, movie_name varchar(255));
INSERT INTO movie_test VALUES(901,'Vertigo');                     
INSERT INTO movie_test VALUES(902,'Aliens');                     
INSERT INTO movie_test VALUES(903,'Lawrence of Arabia');                     
INSERT INTO movie_test VALUES(904,'The Deer Hunter');                     
INSERT INTO movie_test VALUES(905,'True Lies');                     
INSERT INTO movie_test VALUES(906,'Blade Runner');                     
INSERT INTO movie_test VALUES(907,'Eyes Wide Shut');                     
INSERT INTO movie_test VALUES(908,'Titanic');                     
INSERT INTO movie_test VALUES(909,'Chinatown');                     
INSERT INTO movie_test VALUES(910,'Ghosts of the Abyss');
-- mov_direction_test table
CREATE TABLE mov_direction_test (dir_id int, mov_id int, act_id int,
FOREIGN KEY(dir_id) REFERENCES director_test(dir_id),
FOREIGN KEY(act_id) REFERENCES actor_test(act_id),
FOREIGN KEY(mov_id) REFERENCES movie_test(mov_id)
);
INSERT INTO mov_direction_test VALUES(201,901,101);
INSERT INTO mov_direction_test VALUES(203,902,107);
INSERT INTO mov_direction_test VALUES(204,904,104);
INSERT INTO mov_direction_test VALUES(203,905,107);
INSERT INTO mov_direction_test VALUES(206,906,106);
INSERT INTO mov_direction_test VALUES(203,908,107);
INSERT INTO mov_direction_test VALUES(209,909,109);
INSERT INTO mov_direction_test VALUES(203,910,107);
-- actor and director work together for 3 or more times
select act_name as actor_name , dir_name as director_name
from actor_test a join mov_direction_test mdt
on a.act_id = mdt.act_id
join director_test d
on d.dir_id = mdt.dir_id
join movie_test m
on m.mov_id = mdt.mov_id
group by mdt.act_id , mdt.dir_id
having count(mdt.mov_id) > 2;