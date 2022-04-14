/*4.	Write a SQL statement to create a table job_history including columns employee_id, start_date,
 end_date, job_id and department_id and make sure that, the employee_id column does not contain any 
 duplicate value at the time of insertion and the foreign key column job_id contain 
 only those values which are exists in the jobs table.*/
 
create database abc3;
use abc3;
create table if not exists jobs 
( 
job_id varchar(10) NOT NULL UNIQUE, 
job_title varchar(35) NOT NULL DEFAULT ' ', 
min_salary int DEFAULT 8000, 
max_salary int DEFAULT NULL
);

create table job_history 
( 
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL, 
job_id varchar(10) NOT NULL, 
department_id decimal(4,0) DEFAULT NULL, 
foreign key(job_id) REFERENCES jobs(job_id)
);


desc job_history;