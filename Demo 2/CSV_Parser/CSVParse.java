package CSV_Parser;

import com.opencsv.CSVReader;

import java.io.FileReader;
import java.io.IOException;
import java.util.Vector;
import java.util.List;
 
public class CSVParse
{
    private Vector<String> things = new Vector<String>(100,10);

    // The next two lines commented out for future use
    // private Set<Integer> set = new HashSet<Integer>(); // A set to have unique values
    // TreeSet sortedSet = new TreeSet<Integer>(set); // Sorting the set

    public Vector<String> getValuesFromCSV(String first, String last)
    {
        int indexToGet = -1, nextIndexToGet = -1; 
        //Input file which needs to be parsed
        String csvFile = "cs374_anon.csv";
        String student_name = "";
        String course = "";
        CSVReader reader = null;
        try
        {   
            reader = new CSVReader(new FileReader(csvFile));
             String [] nextLine;
             while ((nextLine = reader.readNext()) != null) {
                if (indexToGet ==  -1 || nextIndexToGet == -1){
                    for (int i = 0; i < nextLine.length; i++) {
                        if (nextLine[i].equals("First Name"))
                            indexToGet = i;
                        if (nextLine[i].equals("Last Name"))
                            nextIndexToGet = i;

                        if (indexToGet !=  -1 && nextIndexToGet != -1){
                            break;
                        }
                    } 
                }
                student_name += (nextLine[indexToGet] +nextLine[nextIndexToGet]);
                
                if (student_name .equals (first+last)){
                    course += (nextLine[41]+nextLine[43]);
                    things.add(course);
                }
            }
            // System.out.print(things);
        } 
        catch (Exception e) {}
        return things;
    }
}