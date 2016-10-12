package implementation;

import MySQL.MySQLAccess;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GetStudents {
	MySQLAccess access;
	// This is a 2D array of student names
	private List<List<String>> listOfStudents = new ArrayList<List<String>>();
	// This is a 2D array of pre-requisite of courses
	private List<List<String>> listOfPreReq = new ArrayList<List<String>>();
	// This is a Dictionary of Student names and class information
	Map<String, List<String>> listOfStudentInfo = new HashMap<String, List<String>>();

	public void takeListOfStudents(List<List<String>> students){
		access = new MySQLAccess();
		listOfStudents = students;
		List<String> internal = new ArrayList<String>();

		for (int i; i < listOfStudents.size(); i+=2) {
			internal = access.getStudentInfo(listOfStudents.get(0).get(i), listOfStudents.get(0).get(i+1));
			dictionary.put(i, internal);
		}
		// System.out.println(hm.get("key1"));
	}

	public void getPreReqData(){
		try {
			access = new MySQLAccess();
			listOfPreReq = access.getPreReqData();	
		} catch (Exception e) {
                     //throw e;
		} finally {
		     
		}
	}
}