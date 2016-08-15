package olexam;




import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class delque extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
         String subject =request.getParameter("Subject");
        String qid=request.getParameter("qid");
         
        try {
             Connection con=dbconnection1.emergencycon();
             
             if(subject.equalsIgnoreCase("java"))
             {
               PreparedStatement st2 = (PreparedStatement) con.prepareStatement("select * from java where qid=?");
            st2.setString(1, qid);
            


            ResultSet rs = st2.executeQuery();
            if (rs.next()) {
                PreparedStatement st1 = (PreparedStatement) con.prepareStatement("delete  from java where qid=?");
                st1.setString(1,qid);
                
                

                st1.executeUpdate();
               out.println("Java question is deleted");
          

            } else {
                out.println("question not found");
            }
                out.close();
             }
           if(subject.equalsIgnoreCase("c"))
             {
               PreparedStatement st2 = (PreparedStatement) con.prepareStatement("select * from clang where qid=?");
            st2.setString(1, qid);
            


            ResultSet rs = st2.executeQuery();
            if (rs.next()) {
                PreparedStatement st1 = (PreparedStatement) con.prepareStatement("delete  from clang where qid=?");
                st1.setString(1,qid);
                
                

                st1.executeUpdate();
               out.println("C - question is deleted");
          

            } else {
                out.println("Question not found");
            }
                out.close();
             }
           
            if(subject.equalsIgnoreCase("cplus"))
             {
               PreparedStatement st2 = (PreparedStatement) con.prepareStatement("select * from cplus where qid=?");
            st2.setString(1, qid);
            


            ResultSet rs = st2.executeQuery();
            if (rs.next()) {
                PreparedStatement st1 = (PreparedStatement) con.prepareStatement("delete  from cplus where qid=?");
                st1.setString(1,qid);
                
                

                st1.executeUpdate();
               out.println("c++ question is deleted");
          

            } else {
                out.println("Question not found");
            }
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
    public String getServletInfo() 
    {
        return "Short description";
    }
}

