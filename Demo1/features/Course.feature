Feature: Take courses and student names
	Scenario Outline: A student wants to take a course and has to check if the requirement is met
	Given that Student<student_name> wants to take the course <course_title> with preq<course_preq>
	When the Course_history satisfy course_preq ##course history will just be the vector
	Then It is result<result> that Student<Student> is able to take the course

Examples:
|student_name                 | course_title  | course_preq | result |
|"Bernard,Duffy,Bonnie"       |"Canoe,Camping"|""|"True" | 
|"Bernard,Duffy,Bonnie"       |"American,Literature,After,1900"|""|"True" | 
|"Bernard,Duffy,Bonnie"       |"Cost,Accounting,I"|""|"True" |
|"Bernard,Duffy,Bonnie"       |"Fundamentals,of,Auditing"|""|"True" | 
|"Bernard,Duffy,Bonnie"       |"Snow,Skiing"|""|"True" | 
|"Bernard,Duffy,Bonnie"       |"Introduction,to,Psychology"|""|"True" | 
|"Bernard,Duffy,Bonnie"       |"Income,Tax,I"|""|"True" | 
|"Bernard,Duffy,Bonnie"       |"Advanced,Accounting,I"|"Cost,Accounting,I,Income,Tax,I"|"True" | 
|"Bernard,Duffy,Bonnie"       |"Operations,Management"|"Cost,Accounting,I"|"True" | 
|"Bernard,Duffy,Bonnie"       |"Money,and,Banking"|"Cost,Accounting,I"|"True" | 
|"Bernard,Duffy,Bonnie"       |"Religious,Teach.,of,C.S.,Lewis"|"American,Literature,After,1900"|"True" | 
|"Bernard,Duffy,Bonnie"       |"Principles,of,Investment"|"Cost,Accounting,I,Income,Tax,I"|"True" | 
|"Bernard,Duffy,Bonnie"       |"International,Business"|"Operations,Management"|"True" | 
|"Bernard,Duffy,Bonnie"       |"Business,Law,II"|"Money,and,Banking,Cost,Accounting,I"|"True" | 
|"Bernard,Duffy,Bonnie"       |"Strategic,Management"|"Operations,Management"|"True" | 
|"Bernard,Duffy,Bonnie"       |"Accounting,Information,Systems"|"Operations,Management,Strategic,Management" | "True" | 
|"Bernard,Duffy,Bonnie"       |"Financial,Theory&Practice"|"Cost,Accounting,I,Operations,Management"|"True" |  
|"Bernard,Duffy,Bonnie"       |"Business,and,Prof,Writing"|"Business,Law,II,Money,and,Banking,Cost,Accounting,I"|"True" |  