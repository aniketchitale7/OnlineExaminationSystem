<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>


<% HttpSession  sess=request.getSession(true);
String username= (String) sess.getAttribute("username");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="Pawe? 'kilab' Balicki - kilab.pl" />
<title>Exam Portal</title>
<link rel="stylesheet" type="text/css" href="css/style1.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/navi.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.7.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".box .h_title").not(this).next("ul").hide("normal");
	$(".box .h_title").not(this).next("#home").show("normal");
	$(".box").children(".h_title").click( function() { $(this).next("ul").slideToggle(); });
});
</script>
</head>
     <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
      </HEAD>
    <BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload=""> 
<body>
<div class="wrap">
	<div id="header">
		<div id="top">
			<div class="left">
				<p>Welcome, <%=username%>  <a href="logout.jsp"><[logout]</a></p>
			</div>
			<div class="right">
				<div class="align-right">
					
				</div>
			</div>
		</div>
		<div id="nav">
			<ul>
				<li class="upp"><a href="mailto:admin@gmail.com?Subject=My%20BY%20Query">Mail to Admin</a>
					<ul>
						
						
					
					</ul>
				</li>
				<li class="upp"><a href="viewresult.jsp">View Result</a>
					
				</li>
				<li class="upp"><a href="selectcerti.html">Download Certificate</a>
					
				</li>
				<li class="upp"><a href="changepass1.html">Change password</a>
					
				</li>
			</ul>
		</div>
	</div>
	
	<div>
	 
            <form action="testselect.html" method="post">
	  <table width="734" height="285" border="4" align="center">
  <tr>
    <td width="130" height="62"><h1>Subject</h1></td>
    <td width="146"><h1>Duration</h1></td>
    <td width="109"><h1>Min marks</h1> </td>
    <td width="117"><h1>Max Marks </h1></td>
    <td width="192"><h1>Take Test</h1> </td>
  </tr>
  <tr>
    <td height="71"><h3>Java</h3></td>
    <td><h3>20 min </h3></td>
    <td><h3>25</h3></td>
    <td><h3>50</h3></td>
    <td><label>
      <input type="submit" name="Submit" value="Begin"  />
    </label></td>
  </tr>
  <tr>
    <td height="67"><h3>C + + </h3></td>
    <td><h3>20 min </h3></td>
    <td><h3>25</h3></td>
    <td><h3>50</h3></td>
    <td><input type="submit" name="Submit2" value="Begin" /></td>
  </tr>
  <tr>
    <td height="67"><h3>C Language</h3> </td>
    <td><h3>20 min</h3> </td>
    <td><h3>25</h3></td>
    <td><h3>50</h3></td>
    <td><input type="submit" name="Submit3" value="Begin" /></td>
  </tr>
</table>
</form> 
  </div>


</body>
</html>
