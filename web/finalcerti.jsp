<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>

<% 
HttpSession  sess=request.getSession(true);
String user= (String) sess.getAttribute("username");
String sub= (String) sess.getAttribute("subject");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="certificate.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
}
.style5 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
.certificate {
	background-image: url(certifinal.jpg);
}

-->
</style>
</head>

<body >
<div class="certificate">

  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p align="center" class="style1"> Certificate of Appreciation </p>
  <p>&nbsp;</p>
  <p align="center"><span class="style5">This is to certify that <strong><%=user%></strong> has successfully completed the Online<strong> <%=sub%></strong> MockTest organized<br />
     by <strong>www.onlineexamportal.com</strong><br />
    with course material provided online</span>.<br />
  </p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>


</body>
</html>
