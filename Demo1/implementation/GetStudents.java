package implementation;
import java.util.Vector;

public class GetStudents {

	private Vector<String> requires = new Vector<String>(4,2);
	private Vector<String> takenCourses = new Vector<String>(4,2);
	private Vector<String> courseTaking = new Vector<String>(4,2);
	private int hours = 0;

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

}