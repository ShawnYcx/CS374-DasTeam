DROP TABLE IF EXISTS cs374_anon;
CREATE TABLE cs374_anon (
Pidm int(10) NOT NULL,
Term_Code int(10) NOT NULL,
Department_Code varchar(40) NOT NULL,
CRN int(10) NOT NULL,
Section_Number varchar(5),
Banner_ID int(10) NOT NULL,
Subject_Code varchar(10),
Course_Number varchar(10),
Instructor varchar(20),
First_Name varchar(40),
Last_Name varchar(40));

LOAD DATA INFILE 'Test.csv' INTO TABLE cs374_anon
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

DROP TABLE IF EXISTS course_Preq;
CREATE TABLE course_Preq(
Subject_Code varchar(10) NOT NULL, 
Course_Number varchar(10) NOT NULL, 
Course_Title varchar(100),
Course_Preq_Title varchar(100));

LOAD DATA INFILE 'preQ.csv' INTO TABLE course_Preq
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

select * from course_Preq limit 10;
select * from cs374_anon limit 10;
