package implementation;
import java.util.Vector;

public class GetStudents {

	private Vector<String> requires = new Vector<String>(4,2);
	private Vector<String> takenCourses = new Vector<String>(4,2);
	private Vector<String> courseTaking = new Vector<String>(4,2);
	private int hours = 0;

	private String my_ClassName = "";
		private String iAMok = "False";
		private String my_Name = "";


	public void checkCourse (String aCourse, String prereq, int hour) {
		String[] part = prereq.split(",");

		if (prereq != "0"){
			for (int i = 0; i < part.length; i++) {
				requires.add(part[i]);	
			}
		}
		courseTaking.add(aCourse);
		hours += hour;
	}

	public void addTakenCourses (String aCourse) {
		takenCourses.add(aCourse);
	}

	public String getApproval () {
		String a = "false";

		if (takenCourses.equals(requires))
			a = "true";

		return a;
	}

	public int getHours () {
		return hours;
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