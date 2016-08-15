

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>
<% HttpSession  sess=request.getSession(true);
Integer marks= (Integer) sess.getAttribute("cans");
           Integer wrongans= (Integer) sess.getAttribute("wans");

int finalmarks=0;
finalmarks=(marks*5)-(wrongans*2);
String status;

if(finalmarks>24)
       {
    status="pass";
}
else
       {
    status="fail";
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
          <form id="contactform" action="finalcerti.jsp" method="post"> 
			<span class="contact style4">Thanks for completing our test .</span><br>
                        <p><h1>your result is <br>  Correct ans :<%=marks%> <br>  wrong ans : <%=wrongans%><br>  marks :<%=finalmarks%> <br> Status :<%=status%>  <br> </h1>
			<br>
			<br>
    			
    			<% if(status=="pass")
                                                       {
                            %>
                            <input class="buttom" name="submit" id="submit" tabindex="5" value="View Certificate" type="submit">	 <% }%>
   </form> 
</div>      
</div>
    
    

</body>
</html>
