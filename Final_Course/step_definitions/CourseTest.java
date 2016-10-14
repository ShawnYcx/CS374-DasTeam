//CS374 DasTeam: Shawn scy12a, Steven sxq13a, Ivan ioa13a.
package step_definitions;
import implementation.GetStudents;

import static org.junit.Assert.*;
import cucumber.api.java.Before;
import cucumber.api.java.en.*;
import cucumber.api.PendingException;
import java.util.ArrayList;
import java.util.List;

public class CourseTest {
		
	GetStudents getStudent;
	
	@Before
	public void setUp()
	{
		getStudent = new GetStudents();
	}

	@Given("^a professor wants to know if a list of Students \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" are capable to take a Class \"([^\"]*)\" \"([^\"]*)\"$")
	public void aProfessorWantsToKnowIfAListOfStudentsAreCapableToTakeAClass(String arg1, String arg2, String arg3, String arg4, String arg5) throws Throwable {
	    getStudent.takeListOfStudents(arg1, arg2);
	    getStudent.getPreReqData(arg4, arg5);
	}

	@When("^the Class has a Preq_list \"([^\"]*)\"$")
	public void theClassHasAPreq_list(String arg1) throws Throwable {
	    
	}

	@When("^a Student has taken these list of Classes \"([^\"]*)\" \"([^\"]*)\"$")
	public void aStudentHasTakenTheseListOfClasses(String arg1, String arg2) throws Throwable {
	    
	}

	@Then("^the should be in this Class \"([^\"]*)\"$")
	public void theShouldBeInThisClass(String arg1) throws Throwable {
	    assertEquals(arg1, getStudent.doCheckings());
	}

}
