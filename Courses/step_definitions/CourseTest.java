package step_definitions;
import implementation.GetStudents;

import static org.junit.Assert.*;

import cucumber.api.java.en.*;
import cucumber.api.PendingException;

public class CourseTest {

	GetStudents students = new GetStudents();

	@Given("^the class is \"([^\"]*)\"$")
	public void theClassIs(String courseName) throws Throwable {
	    students.takeCourse(courseName);
	}

	@Then("^the student \"([^\"]*)\" should not be in that class$")
	public void theStudentShouldNotBeInThatClass(String studentName) throws Throwable {
	    students.getNotInCourse(studentName);
	}

}
