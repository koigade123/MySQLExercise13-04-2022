/*1.	Write a SQL statement to create a table named countries including columns country_id, country_name 
and region_id and make sure that the country_id column will be a 
key field which will not contain any duplicate data at the time of insertion.*/

create database abc;
use abc;
create table if not exists countries 
( 
country_id varchar(2)  not null unique,
country_name varchar(30) not null,
region_id decimal(09,0) not null

);
desc countries;

