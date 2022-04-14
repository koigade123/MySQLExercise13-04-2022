CREATE TABLE job_history1
( 
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL, 
job_id varchar(10) NOT NULL, 
department_id decimal(4,0) DEFAULT NULL

);
alter table job_history1
add index indx_job_id(job_id);

desc job_history;

alter table job_history1
drop index indx_job_id;