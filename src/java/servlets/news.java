package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author Osama Islam
 */
public class news extends HttpServlet {

    Connection c;
    Statement st;

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
            
            ResultSet rs = st.executeQuery("select * from posts order by post_date desc");
            
            request.setAttribute("posts", rs);
            
            request.getRequestDispatcher("news.jsp").forward(request, response);
              
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println("Something went wrong:\n\n"+ex);
        }
        
        
        
        
        
        
    }
    
    

}
