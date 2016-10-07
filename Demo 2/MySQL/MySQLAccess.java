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
     private Connection connect = null;
     private Statement statement = null;
     private PreparedStatement preparedStatement = null;
     private ResultSet resultSet = null;
    private List<List<String>> listOfLists = new ArrayList<List<String>>();
    private List<String> internal = new ArrayList<String>();
     

     // public void readDataBase() throws Exception {
     //         try {
     //                 // This will load the MySQL driver, each DB has its own driver
     //                 Class.forName("com.mysql.jdbc.Driver");
     //                 // Setup the connection with the DB
     //                 connect = DriverManager
     //                                 .getConnection("jdbc:mysql://localhost:3306/CS374?user=root&useSSL=false");

     //                 // Statements allow to issue SQL queries to the database
     //                 statement = connect.createStatement();
     //                 // Result set get the result of the SQL query
     //                 resultSet = statement
     //                                 .executeQuery("select * from cs374_anon");
     //                 // writeResultSet(resultSet);
     //                                 // writeMetaData(resultSet);

     //         } catch (Exception e) {
     //                 throw e;
     //         } finally {
     //                 close();
     //         }

     // }

     public List<List<String>> getStudentCount(String firstname, String lastname) {
        try {
                // This will load the MySQL driver, each DB has its own driver
                Class.forName("com.mysql.jdbc.Driver");
                // Setup the connection with the DB
                connect = DriverManager
                             .getConnection("jdbc:mysql://localhost:3306/CS374?user=root&useSSL=false");

                //PreparedStatements can use variables and are more efficient
                preparedStatement = connect
                             .prepareStatement("SELECT DISTINCT COUNT(*) AS Count, First, Last from cs374_anon WHERE First=? GROUP BY Last");
                
                // Parameters start with 1
                preparedStatement.setString(1, firstname);
                preparedStatement.executeQuery();

                resultSet = preparedStatement.executeQuery();
                
                while (resultSet.next()) {
                        String Count = resultSet.getString("Count");
                        String First = resultSet.getString("First");
                        String Last = resultSet.getString("Last");

                        internal.add(Count);
                        internal.add(First);
                        internal.add(Last);
                        listOfLists.add(internal);     
              }

                                     
             } catch (Exception e) {
                     // throw e;
             } finally {
                     close();
             }

             return listOfLists;
     }

     private void writeResultSet(ResultSet resultSet) throws SQLException {
             // ResultSet is initially before the first data set
             while (resultSet.next()) {
                      // It is possible to get the columns via name
                      // also possible to get the columns via the column number
                      // which starts at 1
                      // e.g. resultSet.getSTring(2);
                String Count = resultSet.getString("Count");
                String First = resultSet.getString("First");
                String Last = resultSet.getString("Last");
                      // String Department_Code = resultSet.getString("Department_Code");

                System.out.println("Count: " + Count);
                System.out.println("First: " + First);
                System.out.println("Last: " + Last);
                      // System.out.println("Pidm: " + Pidm);
                      // System.out.println("Term_Code: " + Term_Code);
                      // System.out.println("Student_Status: " + Student_Status);
                      // System.out.println("Student_Typedesc: " + Student_Typedesc);
                      // System.out.println("Department_Code: " + Department_Code);
              }
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
