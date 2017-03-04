package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author Osama Islam
 */
public class About extends HttpServlet {

    Connection c;
    Statement st;

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String message = request.getParameter("message");
            
            st.executeUpdate("insert into messages (sender, email, phone, message) values"
                    + " ( '"+ name +"', '"+ email +"', '"+ phone +"', '"+ message +"')");
            
            request.setAttribute("sent", "<div class=\"alert alert-success\">\n" +
"  <strong>Success!</strong> Your message has been sent.\n" +
"</div>");
            request.getRequestDispatcher("about.jsp").forward(request, response);
            
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println("Something went wrong:\n\n"+ex);
        }
        
            
     }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("about.jsp").forward(request, response);
    }
    

}
