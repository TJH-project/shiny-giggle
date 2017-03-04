package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class AddPost extends HttpServlet {
    
    Connection c;
    Statement st;

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
            
            
            String title = request.getParameter("news-title");
        
            String contents = request.getParameter("news-contents");
            
            st.executeUpdate("insert into posts (post_title, post_contents) values ( '"+ title +"', '"+ contents +"')");
            
            request.getRequestDispatcher("cpanel.jsp").forward(request, response);
              
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println("Something went wrong:\n\n"+ex);
        }
        
        
        
        
    }

}
