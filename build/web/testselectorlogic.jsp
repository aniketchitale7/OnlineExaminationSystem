

<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>


<%


     
              
                 String sub=request.getParameter("Subject");
                 HttpSession  sess=request.getSession(true);
                 sess.setAttribute("subject", sub);
                 if(sub.equalsIgnoreCase("java"))
                                         {
                    response.sendRedirect("ansuser.jsp");
                                         }
                  if(sub.equalsIgnoreCase("c++"))
                                         {
                     response.sendRedirect("ansusercplus.jsp");
                                         }
                  if(sub.equalsIgnoreCase("c"))
                                         {
                     response.sendRedirect("ansuserclang.jsp");
                                         }

                   %>  
                     
                