-- cities_test table
create table cities_test(
    city_name varchar(50),
    country varchar(30),
    city_population int,
    city_area int
);
-- adding data
insert into cities_test
values('Tokyo' , 'Japan' , 13515271 , 2191),
    ('Delhi' , 'Indian' , 16753235 , 1484),
    ('Shanghai' ,'China'  , 24870895 , 6341),
    ('Sao Paulo' ,  'Brazil' ,  12252023 , 1521),
    ('Mexico City' ,'Mexico' ,  9209944 , 1485),
    ('Cairo' , 'Egypt'  ,  9500000 , 3085),
    ('Mumbai' ,'India' , 12478447 , 603),
    ('Beijing' , 'China' , 21893095 , 16411),
    ('Osaka' , 'Japan' , 2725006 , 225),
    ('New York' , 'United States' , 8398748 , 786),
    ('Buenos Aires' , 'Argentina' , 3054300 , 203),
    ('Chongqing' , 'China' , 32054159 , 82403),
    ('Istanbul' , 'Turkey' , 15519267 , 5196),
    ('Kolkata' , 'India' , 4496694 , 205),
    ('Manila' , 'Philippines' ,  1780148 , 43);
-- read big cities
select city_name , city_population , city_area
from cities_test
where city_area > 50000 or city_population > 15000000;
