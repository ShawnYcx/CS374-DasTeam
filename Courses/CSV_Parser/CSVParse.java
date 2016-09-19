package CSV_Parser;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Vector;
 
public class CSVParse
{
    private Vector<String> studentNames = new Vector<String>(10,2);

    public Vector<String> notInClass(String aCourse)
    {
        //Input file which needs to be parsed
        String fileToParse = "Something.csv";
        BufferedReader fileReader = null;
         
        //Delimiter used in CSV file
        final String DELIMITER = ",";
        try
        {
            String line = "";
            //Create the file reader
            fileReader = new BufferedReader(new FileReader(fileToParse));
             
            //Read the file line by line
            while ((line = fileReader.readLine()) != null) 
            {
                //Get all tokens available in line
                String[] tokens = line.split(DELIMITER);
                        
                if (tokens[2] != aCourse)
                {
                    checkNameInVec(tokens[1]);
                }
                // for(String token : tokens)
                // {
                //     //Print all tokens
                //     System.out.println(token);
                // }
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        } 
        finally
        {
            try {
                fileReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return studentNames;
    }

    private void checkNameInVec(String aName) {
        if (!studentNames.contains(aName))
            studentNames.add(aName);        
    }
}