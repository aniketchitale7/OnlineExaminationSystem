

<%@page import="olexam.dbconnection1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>
<% HttpSession  sess=request.getSession(true);

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
                             status1=rs1.getString(6);
                           //  sess.setAttribute("java", java);
                                 //sess.setAttribute("cplus", cplus);
                                   //  sess.setAttribute("clang", clang);
                            
                        }
%>



<!DOCTYPE html>
<html>
<head>
<title>Exam Portal</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
<style type="text/css">
<!--
.style2 {font-weight: bold}
.style4 {
	font-size: 14px;
	color: #000000;
	font-weight: bold;
}
.style5 {
	font-size: 16px;
	color: #000000;
	font-weight: bold;
}
.style6 {font-size: 18px}
-->
</style></head>
<body>
    
   
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                <a href="userhome.jsp" class="style5 style6" > Home</a>
                <span class="right style2">                        </span>
                <div class="clr"></div>
  </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><span>Online Examination  </span> Result </h1>
            </header>       
      <div  class="form">
          
			<span class="contact style4">Thanks for completing our test .</span><br>
                        <p><h1>your result is <br>  java Score:<%=java%> <br>  C++ Score: <%=cplus%><br>  C language Score : <%=clang%> <br>   <br> </h1>
			<br>
			<br>
    			
    			
                           
   
</div>      
</div>
    
    

</body>
</html>
