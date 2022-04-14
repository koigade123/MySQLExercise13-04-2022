CREATE TABLE IF NOT EXISTS countries 
( 
COUNTRY_ID varchar(2) NOT NULL,
COUNTRY_NAME varchar(30) NOT NULL,
REGION_ID decimal(09,0) NOT NULL,
UNIQUE(COUNTRY_ID)
);
desc countries;
alter table countries rename country_new1;
desc country_new1;