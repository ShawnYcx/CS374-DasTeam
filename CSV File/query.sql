show databases;
use cs375;

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
Last_Name varchar(40),
Constraint student_course PRIMARY KEY  (`Pidm`,`Term_Code`,`Department_Code`,`CRN`,`Section_Number`,`Banner_ID`));


LOAD DATA INFILE 'Test.csv' INTO TABLE cs374_anon
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
--if not exists (select * from cs374_anon c where c.Pidm=@pdim and c.Term_Code=@Term_Code and c.Department_Code=@Department_Code and c.CRN=@CRN and c.Section_Number=@Section_Number and c.Banner_ID=@Banner_ID)
--INSERT INTO Delegates ([Pidm],[Term_Code],[Department_Code],[CRN],[Subject_Code],[Course_Number],[Section_Number],[Instructor],[Banner_ID],[First_Name],[Last_Name]) 
--values (@Pidm,@Term_Code,@Department_Code,@CRN,@Subject_Code,@Course_Number,@Section_Number,@Instructor,@Banner_ID,@First_Name,@Last_Name)
IGNORE 1 LINES;