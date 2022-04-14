/*5.	Write a SQL statement to create a table employees including columns 
employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, 
commission, manager_id and department_id and make sure that, the employee_id column 
does not contain any duplicate value at the time of insertion and the foreign key columns
 combined by department_id and manager_id columns contain only those unique combination values, 
 which combinations are exists in the departments table.*/
 
create database abc5;
use abc5;
create table if not exists departments
(
department_id int not null unique,
department_name varchar(40) not null,
manager_id varchar(50) not null unique,
location_id varchar(60) 
);
create table if not exists employees 
( 
EMPLOYEE_ID int NOT NULL PRIMARY KEY, 
FIRST_NAME varchar(20) DEFAULT NULL, 
LAST_NAME varchar(25) NOT NULL, 
EMAIL varchar(25) NOT NULL, 
PHONE_NUMBER varchar(20) DEFAULT NULL, 
HIRE_DATE date NOT NULL, 
JOB_ID varchar(10) NOT NULL, 
SALARY int  DEFAULT NULL, 
COMMISSION_PCT int DEFAULT NULL, 
manager_id varchar(50) not null,
department_id int not null, 
foreign key(department_id) references departments(department_id),
foreign key(manager_id) references departments(manager_id)
);
desc employees;