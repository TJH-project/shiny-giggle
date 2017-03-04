package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Cpanel extends HttpServlet {
    
    Statement st;
    Connection c;

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
            
            ResultSet food_cats = st.executeQuery("select * from food");
            request.setAttribute("foodcats", food_cats);
            
            Statement s = c.createStatement();
            ResultSet beverage_cats = s.executeQuery("select * from beverages");
            request.setAttribute("beveragescats", beverage_cats);
            beverage_cats.close();
            request.getRequestDispatcher("cpanel.jsp").forward(request, response);
              
        } catch (Exception ex) {
            
            out.println("Something went wrong:<br><br>"+ ex);
            ex.printStackTrace();
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   

}
