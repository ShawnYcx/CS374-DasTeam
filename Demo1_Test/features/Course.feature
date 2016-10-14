Feature: Take courses and student names
	Scenario:
		Given that 4 students Ivan,Shawn,Aldo,Nattapat are taking "CS320" which requires "IT210,CS130,CS200"
		Given that the students hava taken "IT210"
		Given that the students hava taken "CS130"
		Given that the students hava taken "CS210"
		Then it is "false" that they is able to take the class

	Scenario:
		Given that a class IT210 is taken by "Ivan,Shawn,Steven"
		Given that the class is taken by "Shawn"
		Given that the class is taken by "Steven"
		Given that the class is taken by "Keith"
		Then it is "true" that one of them isn't in the class