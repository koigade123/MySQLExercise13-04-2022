create table if not exists locations1
(
location_id int not null,
street_address varchar(20),
postal_code int ,
city varchar(20),
state_province varchar(20),
country_id int not null

);
alter table locations
drop primary key;
alter table  locations1
add primary key (city,country_id);

desc locations1;