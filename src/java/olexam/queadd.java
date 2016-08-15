package olexam;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aniket chitale
 */
public class queadd extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    PrintWriter out = response.getWriter();
     String sub=request.getParameter("Subject");
       String qid=request.getParameter("qid");
        String que=request.getParameter("que");
         
          String op1=request.getParameter("op1");
           String op2=request.getParameter("op2");
            String op3=request.getParameter("op3");
              String op4=request.getParameter("op4");
                String ca=request.getParameter("ca");
                 
                
                    
                      try {
             Connection con=(Connection)dbconnection1.emergencycon();
             Statement st=(Statement) con.createStatement();
             if(sub.equalsIgnoreCase("java"))
             {
             
                String query="insert into java values('"+qid+"','"+que+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+ca+"')";
                st.executeUpdate(query);
            out.println("java que submitted");
                out.close();
             }
          
              if(sub.equalsIgnoreCase("cplus"))
             {
             
                String query="insert into cplus values('"+qid+"','"+que+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+ca+"')";
                st.executeUpdate(query);
            out.println("c++ que submitted");
                out.close();
             }
              
               if(sub.equalsIgnoreCase("c"))
             {
             
                String query="insert into clang values('"+qid+"','"+que+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+ca+"')";
                st.executeUpdate(query);
            out.println("c que submitted");
                out.close();
             }
        } catch(Exception e)
        {
            e.printStackTrace();
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
