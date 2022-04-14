
create table locations2
(
location_id int not null,
street_address varchar(20),
postal_code int ,
city varchar(20),
state_province varchar(20),
country_id int not null

);
alter table locations2
add primary key (location_id,country_id);

alter table locations2 drop primary key;

desc locations;