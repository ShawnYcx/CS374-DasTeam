package implementation;

import MySQL.MySQLAccess;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GetStudents {
	MySQLAccess access;
	// This is a array of pre-requisite of courses
	private List<String> listOfPreReq = new ArrayList<String>();
	//Map<String, List<String>> listOfStudentInfo = new HashMap<String, List<String>>();
	private List<String> listOfStudentInfo = new ArrayList<String>();

	public void takeListOfStudents(String firstName, String lastName){
		access = new MySQLAccess();

		listOfStudentInfo = access.getStudentInfo(firstName, lastName);


	}
 
	public void getPreReqData(String subCode, String cNumber){
		try {
			access = new MySQLAccess();
			listOfPreReq = access.getPreReqData(subCode, cNumber);
		} catch (Exception e) {
                     //throw e;
		} finally {
		     
		}
	}

	public String doCheckings(){

		if (listOfPreReq == null)
			return "T";

		List<String> part = Arrays.asList(listOfPreReq.get(0).split(","));
		List<String> info = new ArrayList<String>();

		for (int i = 0; i < listOfStudentInfo.size(); i+=2) {
			String a = listOfStudentInfo.get(i) + listOfStudentInfo.get(i+1);
			info.add(a);
		}
		
		for (int i = 0; i < part.size(); i++) {
			if (!info.contains(part.get(i))){
				return "F";
			}
		}

		return "T";
	}

	public void printPreReqData(){
		System.out.println(listOfPreReq);
	}
}








