package implementation;
import java.util.Vector;

public class GetStudents {

	private Vector<String> requires = new Vector<String>(4,2);// holds requires
	private Vector<String> takenCourses = new Vector<String>(4,2);
	private Vector<String> courseTaking = new Vector<String>(4,2);//holds the current course.
	private int my_Hours = 0;//total hour

	private String my_ClassName = "";
		private String iAMok = "False";
		private String my_Name = "";


	public void checkCourse (String aCourse, String prereq, int hour) {
		String[] part = prereq.split(",");//split course and preq into individual string stored in part. 

		if (prereq != "0"){//add add preq to requires. 
			for (int i = 0; i < part.length; i++) {
				requires.add(part[i]);	
			}
		}
		courseTaking.add(aCourse);//
		my_Hours += hour;
	}

	public void addTakenCourses (String aCourse) {
		takenCourses.add(aCourse);
	}

	public String getApproval () {
		String a = "False";

		if (takenCourses.equals(requires))
			a = "True";

		return a;
	}

	public int getHours () {
		return my_Hours;
	}

	public int getNumberOfCourses (){
		return courseTaking.size();
	}

	public void currentClass(String className)
		{
			//Initial the class student is taking.
			my_ClassName = className;
		}

	public void compare(String class_history, String class_preq)
	{
		if(class_history.equals(class_preq))
		{
			iAMok = "True";
		}
	}

	public void getName(String student_name)
	{
		my_Name = student_name;
	}

	public String getResult( )
	{
		return iAMok;
	}
}