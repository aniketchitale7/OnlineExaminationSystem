
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>


<%


HttpSession  sess=request.getSession(true);
           Integer qno= (Integer) sess.getAttribute("quesno");
           Integer marks= (Integer) sess.getAttribute("cans");
           Integer wrongans= (Integer) sess.getAttribute("wans");
           String user= (String) sess.getAttribute("username");
//String que = request.getParameter("qno");
  //String mark = request.getParameter("marks");
  //int qno = Integer.parseInt(que);
  //int marks = Integer.parseInt(mark);
 if(qno>5)
    
  { 
     Connection con=olexam.dbconnection1.emergencycon();
      Statement st1=(Statement) con.createStatement();
     
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
            String query="UPDATE marks SET java='"+finalmarks+"', status='"+status+"' WHERE name='"+user+"'";
                st1.executeUpdate(query);
     
     response.sendRedirect("result.jsp");
     %>
	
<%}

  
  ResultSet rs=null;

        try {
            
        
              Connection con=olexam.dbconnection1.emergencycon();
                
                    PreparedStatement st=(PreparedStatement) con.prepareStatement("select qid,que,op1,op2,op3,op4 from java where qid=?");
   st.setInt(1,qno);
   
                   
                 //Statement st=(Statement) con.createStatement();
                 //String sub=request.getParameter("Subject");
                
                // String fire="select * from java ";
            rs= st.executeQuery();


 
         if(rs.next())
           {
                   String q=rs.getString(2);
                       String op1=rs.getString(3);
                       String op2=rs.getString(4);
                       String op3=rs.getString(5);
                       String op4=rs.getString(6);
                                    
           





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



</style>
<script>
  
    
    
    
    
    
    
</script>


</head>

<body>
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                <a href="userhome.jsp" class="style5 style6" > Home</a>
                <span class="right style2">                        </span>
                <div class="clr"></div>
  </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><span>Online Examination </span> Question paper </h1>
            </header>       
  <div  class="form">
      <form action="userans1" method="post"> 
    <table width="470" border="2">
  <tr>
      <td width="458" height="127">Qno: <%=qno%> &nbsp;<%=q%></td>
  </tr>
  <tr>
    <td height="69"><label>
      <input name="answer" type="radio" value="<%=op1%>"><%=op1%>
    </label></td>
  </tr>
  <tr>
    <td height="70"><input name="answer" type="radio" value="<%=op2%>"><%=op2%></td>
  </tr>
  <tr>
    <td height="70"><input name="answer" type="radio" value="<%=op3%>"><%=op3%></td>
  </tr>
  <tr>
    <td height="70"><input name="answer" type="radio" value="<%=op4%>"><%=op4%></td>
  </tr>
  <tr>
    <td height="70"><label>
      <div align="center">
          <input type="submit" name="Submit" value="Next" >
          
          <input type="hidden" value="<%= qno %>" name="ques">
<input type="hidden" name="marks" value="<%=marks%>"> 
<input type="hidden" name="wrongans" value="<%=wrongans%>"> 
        </div>
    </label></td>
  </tr>
</table>

        </form>


  </div>      
</div>

</body>

</html>
<%
                 
                 
         }       
}catch(Exception e)
                    {
                        e.printStackTrace();
                                               }
                           %>
                    
