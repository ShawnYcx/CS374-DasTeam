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

	@Given("^the class is \"([^\"]*)\"$")//Qin
	public void theClassIs(String myclass) throws Throwable 
	{
	    getStudent.currentClass(myclass);
	}

	@When("^the student \"([^\"]*)\" class_history \"([^\"]*)\" is equal to class_preq \"([^\"]*)\"$")//Qin
	public void theStudentClass_historyIsEqualToClass_preq(String student_name, String class_history, String class_preq) throws Throwable 
	{
	    
	    getStudent.getName(student_name);
	    getStudent.compare(class_history, class_preq);
	}

	@Then("^the student should be in that class \"([^\"]*)\"$")//Qin
	public void theStudentShouldBeInThatClass(String result) throws Throwable 
	{
	    assertEquals(result, getStudent.getResult());
	}

	@Given("^that Ivan wants to take the course \"([^\"]*)\" that requires \"([^\"]*)\"$")//Yap
	public void thatIvanWantsToTakeTheCourseThatRequires(String myclass, String class_preq) throws Throwable {
	    
	    getStudent.checkCourse(myclass, class_preq, 0);// add preq
	}

	@Given("^that the student has taken \"([^\"]*)\"$")//Yap
	public void thatTheStudentHasTaken(String myclass) throws Throwable {
	    getStudent.addTakenCourses(myclass);
	}

	@Then("^It is \"([^\"]*)\" that Ivan is able to take the course$")//Yap
	public void itIsTgetSatIvanIsAbleToTakeTheCourse(String flag) throws Throwable {
	    assertEquals(getStudent.getApproval(), flag);
	}

	@Given("^that \"([^\"]*)\" is taking \"([^\"]*)\" a (\\d+) hours course$")
	public void thatIsTakingAHoursCourse(String student_name, String myclass, int hours) throws Throwable {
		 getStudent.checkCourse(myclass, "0", hours);//add hour.
	}
	
	/*@Given("^that Ivan is taking \"([^\"]*)\" a (\\d+) hours course$")//Yap
	public void thatIvanIsTakingAHoursCourse(String myclass, int hours) throws Throwable {
	    
	    getStudent.checkCourse(myclass, "0", hours);//add hour.
	}

	@Given("^he is taking \"([^\"]*)\" a (\\d+) hours course$")//Yap
	public void heIsTakingAHoursCourse(String myclass, int hous) throws Throwable {
	    getStudent.checkCourse(myclass, "0", hous);
	}*/

	@Then("^he is taking (\\d+) courses$")//Yap
	public void heIsTakingCourses(int arg1) throws Throwable {
	    getStudent.getNumberOfCourses();
	}

	@Then("^he has a total of (\\d+) hour classes$")//Yap
	public void heHasATotalOfHourClasses(int arg1) throws Throwable {
	    getStudent.getHours();
	}
}
