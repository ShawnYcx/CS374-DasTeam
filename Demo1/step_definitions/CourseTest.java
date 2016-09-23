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

	@Given("^the class is \"([^\"]*)\"$")
	public void theClassIs(String myclass) throws Throwable 
	{
	    getStudent.currentClass(myclass);
	}

	@Given("^that Ivan wants to take the course \"([^\"]*)\" that requires \"([^\"]*)\"$")
	public void thatIvanWantsToTakeTheCourseThatRequires(String arg1, String arg2) throws Throwable {
	    students = new GetStudents();
	    students.checkCourse(arg1, arg2, 0);
	}

	@Given("^that the student has taken \"([^\"]*)\"$")
	public void thatTheStudentHasTaken(String arg1) throws Throwable {
	    students.addTakenCourses(arg1);
	}

	@Then("^It is \"([^\"]*)\" that Ivan is able to take the course$")
	public void itIsThatIvanIsAbleToTakeTheCourse(String arg1) throws Throwable {
	    assertEquals(students.getApproval(), arg1);
	}

	@Given("^that Ivan is taking \"([^\"]*)\" a (\\d+) hours course$")
	public void thatIvanIsTakingAHoursCourse(String arg1, int arg2) throws Throwable {
	    students = new GetStudents();
	    students.checkCourse(arg1, "0", arg2);
	}

	@Given("^he is taking \"([^\"]*)\" a (\\d+) hours course$")
	public void heIsTakingAHoursCourse(String arg1, int arg2) throws Throwable {
	    students.checkCourse(arg1, "0", arg2);
	}

	@Then("^he is taking (\\d+) courses$")
	public void heIsTakingCourses(int arg1) throws Throwable {
	    students.getNumberOfCourses();
	}

	@Then("^he has a total of (\\d+) hour classes$")
	public void heHasATotalOfHourClasses(int arg1) throws Throwable {
	    students.getHours();
	}

	@When("^the student \"([^\"]*)\" class_history \"([^\"]*)\" is equal to class_preq \"([^\"]*)\"$")
	public void theStudentClass_historyIsEqualToClass_preq(String student_name, String class_history, String class_preq) throws Throwable 
	{
	    
	    getStudent.getName(student_name);
	    getStudent.compare(class_history, class_preq);
	}

	@Then("^the student should be in that class \"([^\"]*)\"$")
	public void theStudentShouldBeInThatClass(String result) throws Throwable 
	{
	    assertEquals(result, getStudent.getResult());
	}
}
