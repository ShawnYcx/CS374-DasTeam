Feature: Take courses and student names
	Scenario: A student wants to take a course and has to check if the requirement is met
		Given that Ivan wants to take the course "CS374" that requires "IT110,IT120,IT220"
		Given that the student has taken "IT110"
		Given that the student has taken "IT120"
		Given that the student has taken "IT220"
		Then It is "true" that Ivan is able to take the course

	Scenario: Count the number of classes, hours that Ivan is taking
		Given that Ivan is taking "IT110" a 3 hours course
		And he is taking "CS110" a 3 hours course
		And he is taking "COMS211" a 3 hours course
		Then he is taking 3 courses
		Then he has a total of 9 hour classes