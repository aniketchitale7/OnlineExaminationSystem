package olexam;




import java.awt.Checkbox;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;


public class dlogin extends HttpServlet {
    public void userrequest(HttpServletRequest req, HttpServletResponse resp) throws IOException
    {
        try {
            Connection con=dbconnection1.emergencycon();
       HttpSession  sess=req.getSession(true);
      
      
        PrintWriter out=resp.getWriter();
        String usernm=req.getParameter("unm");
        String userpass=req.getParameter("upass");
  PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from login where username=? and password=?");
   st.setString(1,usernm);
   st.setString(2,userpass);
       
      
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
         String name=rs.getString(1);
     sess.setAttribute("username", name);
         String des=rs.getString(7);
         
         Cookie ck=new Cookie("user", usernm);
         ck.setMaxAge(10000);
         if(des.equalsIgnoreCase("admin"))
         {
  resp.sendRedirect("admin.html");
         
         }
         
       else
         {
          int java=0;
                 int clang=0;
                     int cplus=0;
                     String status="fail";
                     
                      PreparedStatement st1=(PreparedStatement) con.prepareStatement("select * from marks where username=?");
                     
                        st1.setString(1,usernm);
                        ResultSet rs1=st1.executeQuery();
                        if(rs1.next())
                        {
                            resp.sendRedirect("userhome.jsp");
                        }
             else
                        {
              String query="insert into marks values('"+name+"','"+usernm+"','"+java+"','"+cplus+"','"+clang+"','"+status+"')";
                st.executeUpdate(query);
      resp.sendRedirect("userhome.jsp");
                        }
         }
     }
     else
     {
   out.println("invalid username password");
     }
      
      
  
        System.out.println("--------------");
         } catch (Exception exp) {
          exp.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         userrequest(req,resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 userrequest(req,resp);
    }
    
}
