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

	@Given("^that Student\"([^\"]*)\" wants to take the course \"([^\"]*)\" with preq\"([^\"]*)\"$")
	public void thatStudentWantsToTakeTheCourse(String student_name, String course_title, String course_preq) throws Throwable {
	    getStudent.checkCourse(course_title,course_preq,3);
	    if (getStudent.getApproval() == "True" )
	    {
	    	getStudent.addTakenCourses(course_title);
	    }
	}

	@When("^the Course_history satisfy course_preq ##course history will just be the vector$")
	public void theCourse_historySatisfyCourse_preqCourseHistoryWillJustBeTheVector() throws Throwable {

	}

	@Then("^It is result\"([^\"]*)\" that Student<Student> is able to take the course$")
	public void itIsResultThatStudentStudentIsAbleToTakeTheCourse(String result) throws Throwable {
		result.equals(getStudent.getApproval());
	}
}
