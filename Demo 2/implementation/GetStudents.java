package implementation;

import MySQL.MySQLAccess;
import java.util.ArrayList;
import java.util.List;

public class GetStudents {
	MySQLAccess access;
	private List<List<String>> listOfLists = new ArrayList<List<String>>();
	private int count = 0;

	public void takeStudent(String first, String last) throws Exception{
		try {
		access = new MySQLAccess();
		//listOfLists = access.getStudentCount(first, last);
		access.readDataBase();
		} catch (Exception e) {
                     //throw e;
             } finally {
                     //close();
             }
	}
	
	public int getCount() {
		count = Integer.parseInt(listOfLists.get(0).get(0));
		return count;
	}
}