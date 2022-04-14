create table if not exists locations
(
location_id int not null,
street_address varchar(20),
postal_code int ,
city varchar(20),
state_province varchar(20),
country_id int not null

);
alter table  locations
add region_id1 int after state_province;

desc locations;