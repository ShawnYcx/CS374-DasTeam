package step_definitions;
import implementation.GetStudents;

import static org.junit.Assert.*;
import cucumber.api.java.Before;
import cucumber.api.java.en.*;
import cucumber.api.PendingException;

public class CourseTest {
		
	GetStudents getStudent;
	
	@Before 
	public void setUp()
	{
		getStudent = new GetStudents();
	}

	@Given("^a professor wants to find a student \"([^\"]*)\" \"([^\"]*)\" and the total number of classes he has taken$")
	public void aProfessorWantsToFindAStudentAndTheTotalNumberOfClassesHeHasTaken(String arg1, String arg2) throws Throwable {
	    getStudent.addTakenCourses(arg1, arg2);
	}

	@Then("^the number of classes (\\d+)$")
	public void theNumberOfClasses(int arg1) throws Throwable {
	    assertEquals(arg1, getStudent.getNumberOfCourses());
	}
}
