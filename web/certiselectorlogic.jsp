

<%@page import="olexam.dbconnection1"%>
<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>


<%


     try{
              
                 String sub=request.getParameter("Subject");
                 HttpSession  sess=request.getSession(true);
                 sess.setAttribute("subject", sub);
               //  Integer java= (Integer) sess.getAttribute("java");
               //  Integer clang= (Integer) sess.getAttribute("clang");
               //  Integer cplus= (Integer) sess.getAttribute("cplus");
                 String usernm= (String) sess.getAttribute("username");
                 
                int java=0; 
 int cplus=0;  
 int clang=0; 
String status1 ="pass";

Connection con=dbconnection1.emergencycon();
PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from marks where name=?");
   st.setString(1,usernm);
ResultSet rs1=st.executeQuery();
                        if(rs1.next())
                        {
                             java=rs1.getInt(3);
                            cplus=rs1.getInt(4);
                             clang=rs1.getInt(5);
                             //status1=rs1.getString(6);
                             //sess.setAttribute("java", java);
                              //   sess.setAttribute("cplus", cplus);
                                    // sess.setAttribute("clang", clang);
                            
                        }
                 if(sub.equalsIgnoreCase("java")&&java>24)
                                         {
                 response.sendRedirect("finalcerti.jsp");
                                 }
               else  if(sub.equalsIgnoreCase("c++")&&cplus>24)
                                         {
                 response.sendRedirect("finalcerti.jsp");
                                 }
                else if(sub.equalsIgnoreCase("c")&&clang>24)
                                         {
                 response.sendRedirect("finalcerti.jsp");
                                 }
else
       {
                     out.println("you have not passes the test to get a certificate Try again");
}
                                  }catch(Exception e)
                                  {
                                      e.printStackTrace();
                                  }%>  
                     
                