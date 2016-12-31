package servlets;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class reserveTable extends HttpServlet {
    
    Statement st; 
    Connection c;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
        } catch (Exception ex) {
            System.out.println("Something went wrong:\n\n"+ex);
        }

        
        
        
        
                    
request.getRequestDispatcher("reserve-a-table.jsp").forward(request, response);
        
        
    }
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {   
        
        System.out.println("Something went wrong");
        try {
            String name = request.getParameter("name");
            String guests = request.getParameter("guests");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String timestamp = request.getParameter("date") + " " + request.getParameter("time");
            
            st.executeUpdate("insert into reservation values (null, '"+ name +"', '"+ guests +"', '"+ phone +"', '"+ email +"', '"+ timestamp +"')");
            
            request.setAttribute("action", "reserved");
            
            request.getRequestDispatcher("reserve-a-table.jsp").forward(request, response);
            
            
        }catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.print(e.getMessage());
        }
        
        
}

}
