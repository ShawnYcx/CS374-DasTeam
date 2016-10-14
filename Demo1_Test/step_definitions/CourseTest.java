package step_definitions;

import implementations.GetStudents;
import static org.junit.Assert.*;

import cucumber.api.java.en.*;
import cucumber.api.PendingException;

public class CourseTest {
	GetStudents students;

	@Given("^that (\\d+) students Ivan,Shawn,Aldo,Nattapat are taking \"([^\"]*)\" which requires \"([^\"]*)\"$")
	public void thatStudentsIvanShawnAldoNattapatAreTakingWhichRequires(int num, String c, String required) throws Throwable {
		students = new GetStudents();
		students.checkStudents(num, c, required);
	}

	@Given("^that the students hava taken \"([^\"]*)\"$")
	public void thatTheStudentsHavaTaken(String taken) throws Throwable {
		students.takingCourses(taken);
	}

	@Then("^it is \"([^\"]*)\" that they is able to take the class$")
	public void itIsThatTheyIsAbleToTakeTheClass(String check) throws Throwable {
		assertEquals(students.checkCourses(), check);
	}

	@Given("^that a class IT(\\d+) is taken by \"([^\"]*)\"$")
	public void thatAClassITIsTakenBy(int arg1, String arg2) throws Throwable {
		students = new GetStudents();
		students.checkStudents(arg1, arg2, arg2);
	}

	@Given("^that the class is taken by \"([^\"]*)\"$")
	public void thatTheClassIsTakenBy(String ps) throws Throwable {
		students.checkStudent(ps);
	}

	@Then("^it is \"([^\"]*)\" that one of them isn't in the class$")
	public void itIsThatOneOfThemIsnTInTheClass(String look) throws Throwable {
		assertEquals(students.confirmStudents(), look);
	}
}