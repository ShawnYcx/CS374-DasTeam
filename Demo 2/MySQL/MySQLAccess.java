package MySQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

public class MySQLAccess {
private String shawnConnection = "jdbc:mysql://localhost:3306/CS374?user=root&useSSL=false";
private String ivanConnection = "jdbc:mysql://localhost/ent?useSSL=false&"+"user=root&password=Narutokurama12";

private Connection connect = null;
private Statement statement = null;
private PreparedStatement preparedStatement = null;
private ResultSet resultSet = null;

private List<List<String>> listOfLists = new ArrayList<List<String>>();
public List<List<String>> getPreReqData() throws Exception {
         try {
            //This will load the MySQL driver, each DB has its own driver
            Class.forName("com.mysql.jdbc.Driver");
            // Setup the connection with the DB
            connect = DriverManager
                         .getConnection(ivanConnection);
            statement = connect.createStatement();

            //this function counts how many class a student is taking. 
            String setSQL = ("select * from Course_preq");

            resultSet = statement.executeQuery(setSQL);
            writeResultSet(resultSet);

            /*  EXAMPLE
            while (resultSet.next()) {
                List<String> internal = new ArrayList<String>();
                String Subject_Code = resultSet.getString("Column1");
                String Course_Number = resultSet.getString("Column2");
                String Course_Number = resultSet.getString("Column3");

                internal.add(Subject_Code);
                internal.add(Course_Number);
                listOfLists.add(internal);
            }*/

         } catch (Exception e) {
                 throw e;
         } finally {
                 close();
         }

 }

public List<String> getStudentInfo(String firstName, String lastName) {
try {
        // This will load the MySQL driver, each DB has its own driver
        Class.forName("com.mysql.jdbc.Driver");
        // Setup the connection with the DB
        connect = DriverManager
                     .getConnection(shawnConnection);
        statement = connect.createStatement();

        String setFirstName = ("'" + firstName + "'");
        String setLastName = ("'%" + lastName + "%'");
        //this function counts how many class a student is taking. 
        String setSQL = ("SELECT First_Name, Last_Name, Subject_Code, Course_Number from cs374_anon WHERE First_Name="+ setFirstName + " AND Last_Name like "+ setLastName);

        resultSet = statement.executeQuery(setSQL);
        List<String> internal = new ArrayList<String>();
        internal.add(firstName);
        internal.add(lastName);

        while (resultSet.next()) {
            String Subject_Code = resultSet.getString("Subject_Code");
            String Course_Number = resultSet.getString("Course_Number");

            internal.add(Subject_Code);
            internal.add(Course_Number);
        }

      // System.out.println(hm.get("key1"));
                             
     } catch (Exception e) {
             // throw e;
     } finally {
             close();
     }

     return internal;
}

// You need to close the resultSet
private void close() {
     try {
             if (resultSet != null) {
                     resultSet.close();
             }

             if (statement != null) {
                     statement.close();
             }

             if (connect != null) {
                     connect.close();
             }
     } catch (Exception e) {

     }
}
}
