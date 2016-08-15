/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package olexam;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author aniket chitale
 */
public class changepassword extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String username=request.getParameter("username");
        String cpass=request.getParameter("oldpass");
         String npass=request.getParameter("newpass");
         String n1pass=request.getParameter("newpass1");
        try {
           Connection con=(Connection) olexam.dbconnection1.emergencycon();
           PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from login where username=? and password=?");
   st.setString(1,username);
   st.setString(2,cpass);
       
      
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
       if(npass.equals(n1pass))
       {
          String que="UPDATE login SET password='"+npass+"' WHERE username='"+username+"'";
          st.executeUpdate(que);
          out.println("your password is changed");
         
       }
       else
       {
            out.println("password do not match");
       } 
     }
     else
     {
     out.println("invalid username/password");
     }
      
    
                con.close();
    
        } catch(Exception e)
        {
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
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
