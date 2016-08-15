
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*;"%>
<%@page import="javax.servlet.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="com.mysql.jdbc.Statement;"%>
<%@page import="java.util.*;" %>


<%
out.println("hekko");

//HttpSession  sess=request.getSession(true);

//Integer qno= (Integer) sess.getAttribute("quesno");
//int qno =  Integer.parseInt(quesno);
//out.println("hello");
String  mark = request.getParameter("marks");
out.println(""+mark);
int qno=1;
int marks=1;
String ans1 = request.getParameter("answer");


 


        try {
            
        
              Connection con=olexam.dbconnection1.emergencycon();
                
                    PreparedStatement st=(PreparedStatement) con.prepareStatement("select ca from java where qid=?");
   st.setInt(1,qno);
   
                 
                 //Statement st=(Statement) con.createStatement();
                 //String sub=request.getParameter("Subject");
                
                // String fire="select * from java ";
          ResultSet  rs1= st.executeQuery();

  String answer = null;
 
         if(rs1.next())
           {
                   answer = rs1.getString("ca");
         if(answer.equalsIgnoreCase(ans1))
	  {
		marks++; 
	  }
           





%>





<%
                 
                 
         }  
else
{
      out.println("hello");
}         
}catch(Exception e)
                    {
                        e.printStackTrace();
                                               }
                           qno++;
%>
<jsp:forward page="ansuser2.jsp">
<jsp:param name="qs" value="<%=qno%>"/>
<jsp:param name="marks" value="<%=marks%>"/>
</jsp:forward>
                    
