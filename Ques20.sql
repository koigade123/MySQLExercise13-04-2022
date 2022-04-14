create table if not exists jobs 
( 
job_id varchar(10) NOT NULL UNIQUE, 
job_title varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
);

create table if not exists  job_history 
( 
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL, 
job_id varchar(10) NOT NULL, 
department_id decimal(4,0) DEFAULT NULL
);
alter table  job_history
add foreign key (job_id) references jobs(job_id);

desc job_history;