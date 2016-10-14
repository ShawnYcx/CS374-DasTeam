//CS374 DasTeam: Shawn scy12a, Steven sxq13a, Ivan ioa13a.
package step_definitions;
import implementation.GetStudents;
import java.util.Scanner;

public class main{
	public static void main(String[] args) {
		GetStudents getStudent = new GetStudents();

		System.out.println("\nType 1 to check if a specific student is qualified to take a class according to the provided data");
		System.out.println("Type 2 to list all the pre-req for a specific class \n");

		Scanner options = new Scanner( System.in );
		String i = options.next();
		
		
		if (i.equals("1")){
			String firstName, lastName, subCode, cNumber;

			System.out.println("This program will check if the student is qualified to take a class according to the provided data.\n");
			Scanner user_input = new Scanner( System.in );
			System.out.println("Input Student's first name: ");
			firstName = user_input.next();

			System.out.println("Input Student's last name: ");
			lastName = user_input.next();

			System.out.println("Input subject code: ");
			subCode = user_input.next();

			System.out.println("Input course number: ");
			cNumber = user_input.next();

			getStudent.takeListOfStudents(firstName, lastName);
            getStudent.getPreReqData(subCode, cNumber);

            if (!getStudent.checkStudentExist()){
                if (getStudent.doCheckings().equals("T")){
			    	System.out.println("The student [" + firstName + ", " + lastName + "] is allowed to be in this class.");
			    } else
			    	System.out.println("The student [" + firstName + ", " + lastName + "] is not allowed to be in this class.");

			    	System.out.println("\nThe prereqs are: ");
			    getStudent.printPreReqData(subCode, cNumber);
            }else {
                System.out.println("The student [" + firstName + ", " + lastName + "] does not exist in the database.");
            }

		}

		if (i.equals("2")) {
			System.out.println("This program will list all the pre-req for a specific class.\n");

				Scanner user_input = new Scanner( System.in );
				String subCode, cNumber;

				System.out.println("Input subject code: ");
				subCode = user_input.next();

				System.out.println("Input course number: ");
				cNumber = user_input.next();

				System.out.println("The prereqs are for this class is(are): ");
			    getStudent.printPreReqData(subCode, cNumber);	    
		}

	    
	    
	}
}
