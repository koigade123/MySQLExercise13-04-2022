/*5.	6.	Write a SQL statement to create a table employees including columns employee_id,
 first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id 
 and department_id and make sure that, the employee_id column does not contain any duplicate value at the
 time of insertion, and the foreign key column department_id, reference by the column department_id of departments table, 
 can contain only those values which are exists in the departments table and another foreign key column job_id,
 referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. 
 The InnoDB Engine have been used to create the tables. (you need to create a departments and jobs tables at first).*/
 
create database abc4;
use abc4;
create table if not exists jobs 
( 
job_id varchar(10) NOT NULL UNIQUE, 
job_title varchar(35) NOT NULL DEFAULT ' ', 
min_salary int DEFAULT 8000, 
max_salary int DEFAULT NULL
);

create table if not exists departments
(
department_id int not null unique,
department_name varchar(40) not null,
manager_id varchar(50) not null,
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
MANAGER_ID int DEFAULT NULL, 
department_id int not null, 
foreign key(department_id) references departments(department_id),
foreign key(job_id) references jobs(job_id)
)ENGINE=InnoDB;

desc employees;