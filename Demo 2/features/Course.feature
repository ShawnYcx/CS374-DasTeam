Feature: Take courses and student names
Scenario Outline: An advisor wants to know if a student is capable to take a class
		Given a professor wants to know if a list of Students "<first_Name>" "<last_Name>" "<Banner_ID>" are capable to take a Class "<Subject_Code>" "<Course_Number>"
		When the Class has a Preq_list "<Preq_list>"
		And a Student has taken these list of Classes "<Subject_Code_List>" "<Course_Number_List>"
		Then the should be in this Class "<Result>"

Examples:
|first_Name|last_Name|Banner_ID|Subject_Code|Course_Number|Preq_list|Subject_Code_List|Course_Number_List|Result|
|Joanna|Crase|493562|CS|130||CS|120|T|
