package implementations;
import java.util.Vector;

public class GetStudents{
	private Vector<String> required = new Vector<String>(4,2);
	private Vector<String> takenClass = new Vector<String>(4,2);
	private Vector<String> currentClass = new Vector<String>(4,2);
	private Vector<String> currentStudents = new Vector<String>(4,2);
	private Vector<String> presentStudents = new Vector<String>(4,2);
	private String name = new String("");
	private int number = 0;

	public void checkStudents (int student_num, String cClass, String required_classes){
		String[] classes = required_classes.split(",");
		String[] names = required_classes.split(",");

		number = student_num;

		if(required_classes != "0")
		{
			for(int x = 0; x < classes.length; x++)
			{
				required.add(classes[x]);
				
			}
		}
		currentClass.add(cClass);

			if(required_classes != "0")
		{
			for(int x = 0; x < names.length; x++)
			{
				currentStudents.add(names[x]);
				
			}
		}
		System.out.println(currentStudents);

	}

	public void takingCourses (String taken){
		takenClass.add(taken);
	}

	public String checkCourses (){
		String check = "true";

		if(!takenClass.equals(required))
		{
			check = "false";
		}

		return check;
	}

	public void checkStudent (String pStudent)
	{
		presentStudents.add(pStudent);
	}


	public String confirmStudents (){
		String check = "false";

		if(!presentStudents.equals(currentStudents))
		{
			check = "true";
		}

		return check;
	}
}