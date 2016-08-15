package olexam;



import java.sql.*;
import java.sql.DriverManager;



public class dbconnection1 {
 
    
    static Connection con=null;
  
        
    
    static
    {
            try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
         } 
        catch(Exception e)
        {
        e.printStackTrace();
        }
    }

    public static Connection emergencycon() throws Exception 
    {
                if(con.isClosed())
                {
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
                   
                }
           return con;
    }

}
