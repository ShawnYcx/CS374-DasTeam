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
		getStudent.getPreReqData();
	}

	@Given("^a professor wants to find a student \"([^\"]*)\" \"([^\"]*)\" and the total number of classes he has taken$")
	public void aProfessorWantsToFindAStudentAndTheTotalNumberOfClassesHeHasTaken(String arg1, String arg2) throws Throwable {
		List<List<String>> students = new ArrayList<List<String>>();
		List<String> internal = new ArrayList<String>();

		internal.add(arg1);
		internal.add(arg2);

		internal.add(arg3);
		internal.add(arg4);

		internal.add(arg5);
		internal.add(arg6);

		students.add(internal);

	    // getStudent.takeStudent(students);
	}

	@Then("^the number of classes (\\d+)$")
	public void theNumberOfClasses(int arg1) throws Throwable {
	    // assertEquals(arg1,getStudent.getCount());
	}
	
	@Given("^a professor wants to find how many students took class (\\d+) section \"([^\"]*)\" class name \"([^\"]*)\"$")
	public void aProfessorWantsToFindHowManyStudentsTookClassSectionClassName(int arg1, String arg2, String arg3) throws Throwable {
	    // getStudent.takeStudent(arg2, arg3);
	}

	@Then("^the number of students (\\d+)$")
	public void theNumberOfStudents(int arg1) throws Throwable {
	    // assertEquals(arg1, arg1);
	}
}
