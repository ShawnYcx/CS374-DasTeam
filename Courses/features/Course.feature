Feature: Courses and student that are not taking the course 
	Scenario: Check which students on the list are not in a course
	Given the class is "IT110"
	Then the student "Shawn" should not be in that class