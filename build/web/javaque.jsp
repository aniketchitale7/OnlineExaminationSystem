

<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>


<%


        try {
              Connection con=olexam.dbconnection1.emergencycon();
                
                   
                   
                 Statement st=(Statement) con.createStatement();
                 String sub=request.getParameter("Subject");
                
                 String fire="select * from java ";
               ResultSet rs= st.executeQuery(fire);
             
             ArrayList list1=new ArrayList();
          ArrayList list2=new ArrayList();
          ArrayList list3=new ArrayList();
           ArrayList list4=new ArrayList();
            ArrayList list5=new ArrayList();
            ArrayList list6=new ArrayList();
            ArrayList list7=new ArrayList();
            
           while(rs.next())
           {
                    list1.add(rs.getString(1));
                       list2.add(rs.getString(2));
                          list3.add(rs.getString(3));
                            list4.add(rs.getString(4));
                              list5.add(rs.getString(5));
                                 list6.add(rs.getString(6));
                                    list7.add(rs.getString(7));
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
                <a href="admin.html" class="style5 style6" > Admin Home</a>
                <span class="right style2">                        </span>
                <div class="clr"></div>
  </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><span>Online Examination Admin page </span>  java Questions </h1>
            </header>
            <table width="1187" border="3" align="center">
              <tr>
                <td width="79" height="40"><div align="left">Que id</div></td>
                <td width="254"><div align="center"></div>Question</td>
                <td width="159"><div align="center"></div>Option1</td>
                <td width="164"><div align="center"></div>Option2</td>
                <td width="141"><div align="center"></div>Option3</td>
                 <td width="141"><div align="center"></div>Option4</td>
                  <td width="141"><div align="center"></div>Correct Ans</td>
                
              </tr>
               <%for(int i=0;i<list1.size();i++) 
                                   {
        
%>
<tr>
      <td><%=list1.get(i)%></td>
      <td><%=list2.get(i)%></td>
      <td><%=list3.get(i)%></td>
      <td><%=list4.get(i)%></td>
      <td><%=list5.get(i)%></td>
      <td><%=list6.get(i)%></td>
      <td><%=list7.get(i)%></td>
      
    </tr>
    <%}%>
            </table>
</div>
</body>
</html>
<%
                 
                 
                 
}catch(Exception e)
                    {
                        e.printStackTrace();
                    }         %>