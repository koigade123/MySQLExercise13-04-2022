/*1.	Write a SQL statement to create a table named countries including columns country_id, country_name
 and region_id and make sure that the country_id column will be a key field 
 which will not contain any duplicate data at the time of insertion.*/
 
create database abc1;
use abc1;
create table if not exists countries 
( 
country_ID int not null unique auto_increment primary key,
country_name varchar(20) not null,
region_id int not null
);

desc countries;