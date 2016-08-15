

<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>


<%


     
              
                 String sub=request.getParameter("Subject");
                 if(sub.equalsIgnoreCase("java"))
                                         {
                    response.sendRedirect("javaque.jsp");
                                         }
                  if(sub.equalsIgnoreCase("c++"))
                                         {
                     response.sendRedirect("cplus.jsp");
                                         }
                  if(sub.equalsIgnoreCase("c"))
                                         {
                     response.sendRedirect("clang.jsp");
                                         }

                   %>  
                     
                