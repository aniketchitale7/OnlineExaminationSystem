/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package olexam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ansuserclang1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        try {
          
           String  mark = request.getParameter("marks");
           int marks=Integer.parseInt(mark);
           String  ques = request.getParameter("ques");
           int qno=Integer.parseInt(ques);
             String  wrong = request.getParameter("wrongans");
           int wrongans=Integer.parseInt(wrong);

String ans1 = request.getParameter("answer");

            Connection con=olexam.dbconnection1.emergencycon();
                
                    PreparedStatement st=(PreparedStatement) con.prepareStatement("select ca from clang where qid=?");
   st.setInt(1,qno);
            ResultSet  rs1= st.executeQuery();

  String answer = null;
 
         if(rs1.next())
           {
                   answer = rs1.getString("ca");
         if(answer.equalsIgnoreCase(ans1))
	  {
		marks++; 
	  }
         else if(ans1==null)
	  {
		
	  }
         else
         {
             wrongans++;
         }
             
         }
            qno++;
            HttpSession  sess=request.getSession(true);
            sess.setAttribute("quesno",new Integer(qno));
            sess.setAttribute("cans",new Integer(marks));
            sess.setAttribute("wans",new Integer(wrongans));
        response.sendRedirect("ansuserclang2.jsp");
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
         System.out.println(   e.getMessage());
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
