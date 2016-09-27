package implementation;
import java.util.Vector;
import CSV_Parser.CSVParse;

public class GetStudents {

	private Vector<String> returnedThings = new Vector<String>();
	CSVParse reader = new CSVParse();

	public void takeCourse(String Pidm){
		returnedThings = reader.notInClass("Pidm");
	}

	public boolean getNotInCourse(String studentName){
		if (returnedThings.contains(studentName))
			return true;
		else
			return false;
		return false;
	}	

}