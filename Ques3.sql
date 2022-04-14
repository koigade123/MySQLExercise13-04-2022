/*3.	Write a SQL statement to create a table countries including columns country_id, country_name and region_id 
and make sure that the combination of columns country_id and region_id will be unique.*/

create database mayu1;
use mayu1;
create table if not exists countries
(
country_id varchar(20) not null unique default'',
country_name varchar(40) default null,
region_id int not null,
primary key (country_id,region_id)

);
desc countries;