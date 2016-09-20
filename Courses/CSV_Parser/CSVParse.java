package CSV_Parser;

import com.opencsv.CSVReader;

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
        String csvFile = "Something.csv";
        
        CSVReader reader = null;
        try
        {
            reader = new CSVReader(new FileReader(csvFile));
            String[] line;
            while ((line = reader.readNext()) != null) {
                if (line[2] != aCourse)
                {
                    checkNameInVec(line[1]);
                }
            }
        
        } 
        catch (Exception e) {
            // e.printStackTrace();
        } 
        // finally
        // {
        //     try {
        //         reader.close();
        //     } catch (IOException e) {
        //         e.printStackTrace();
        //     }
        // }

        return studentNames;
    }

    private void checkNameInVec(String aName) {
        if (!studentNames.contains(aName))
            studentNames.add(aName);        
    }
}