package implementation;

import MySQL.MySQLAccess;
import java.util.ArrayList;
import java.util.List;

public class GetStudents {
	MySQLAccess access;
	private List<List<String>> listOfLists = new ArrayList<List<String>>();
	private int count = 0;

	public void takeStudent(String first, String last){
		access = new MySQLAccess();
		listOfLists = access.getStudentCount(first, last);

		for (int i = 0; i<listOfLists.size(); i++) {
			if (listOfLists.get(i).get(1).equals(first) && listOfLists.get(i).get(2).equals(last)){
				System.out.println("TRUE TRUE");
			}	
		}
		
	}

}