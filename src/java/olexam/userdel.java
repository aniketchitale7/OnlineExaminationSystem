package olexam;





import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class userdel extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
         String email=request.getParameter("email");
        String username=request.getParameter("unm");
        String em,unm;
      

        try {
             Connection con=dbconnection1.emergencycon();
               Boolean flag = null;
             
            //  PreparedStatement st2 = (PreparedStatement) con.prepareStatement("select * login  where name=? and username=?");
            //st2.setString(1, email);
            //st2.setString(2, username);
            Statement s=con.createStatement();

            s.executeQuery("select *from login");

            ResultSet rs=s.getResultSet();

            while(rs.next())

              {
                   em=rs.getString(2);
                   unm=rs.getString(3);
                   
                    if(email.equalsIgnoreCase(em)&&username.equalsIgnoreCase(unm))
                    {
                        flag=true;
                        s.executeUpdate("delete from login where username='"+username+"'");
                        break;
                    }
              }
              if(flag==true)
                out.println(username+" User Data deleted successfully");
              else
                out.println("Sorry "+username+" user data is Not Available");
          //  ResultSet rs = st2.executeQuery();

            //out.println(username);
           /* if (rs.next()) {
                
                PreparedStatement st1 = (PreparedStatement) con.prepareStatement("delete  from login where email=? and username=?");
                st1.setString(1,email);
                st1.setString(2,username);
                 

                st1.executeUpdate();
               out.println("user is deleted");
          

            } else {
                out.println("user not found");
            }*/
                out.close();
          
        } catch(Exception e)
        {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }
}

