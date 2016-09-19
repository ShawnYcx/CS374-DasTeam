package implementation;
import java.util.Vector;
import CSV_Parser.CSVParse;

public class GetStudents {

	private Vector<String> studentNames = new Vector<String>(10,2);
	CSVParse reader = new CSVParse();

	public void takeCourse(String aCourse){
		studentNames = reader.notInClass(aCourse);
	}

	public void notInClass(){
		String a = studentNames.elementAt(1);
	}	

}