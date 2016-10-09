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

     public List<List<String>> getStudentCount(String firstName, String lastName) {
        try {
                // This will load the MySQL driver, each DB has its own driver
                Class.forName("com.mysql.jdbc.Driver");
                // Setup the connection with the DB
                connect = DriverManager
                             .getConnection("jdbc:mysql://localhost:3306/CS374?user=root&useSSL=false");
                statement = connect.createStatement();

                String setFirstName = ("'" + firstName + "'");
                String setLastName = ("'%" + lastName + "%'");
                String setSQL = ("SELECT Count(*) as Count, First_Name, Last_Name from cs374_anon WHERE First_Name="+ setFirstName + " AND Last_Name like "+ setLastName +" Group by Last_Name");

                //PreparedStatements can use variables and are more efficient
                // preparedStatement = connect
                //              .prepareStatement();

                resultSet = statement.executeQuery(setSQL);
                // writeResultSet(resultSet);
            
                while (resultSet.next()) {
                    List<String> internal = new ArrayList<String>();

                        String Count = resultSet.getString("Count");
                        String First = resultSet.getString("First_Name");
                        String Last = resultSet.getString("Last_Name");

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
             while (resultSet.next()) {
                String Count = resultSet.getString("Count");
                String First = resultSet.getString("First_Name");
                String Last = resultSet.getString("Last_Name");

                System.out.println("Count: " + Count);
                System.out.println("First: " + First);
                System.out.println("Last: " + Last);
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
