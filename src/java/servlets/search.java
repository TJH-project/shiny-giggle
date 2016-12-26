package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author Osama Islam
 */
public class search extends HttpServlet {

    Connection c;
    Statement st;

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String search = request.getParameter("search");
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
            
            ResultSet rs = st.executeQuery("select * from food_products where p_name "
                    + "like '%"+ search +"%' or p_description like '%"+ search +"%' "
                            + "or p_category like '%"+ search +"%'");
            
            request.setAttribute("results", rs);
            
            request.getRequestDispatcher("menu.jsp").forward(request, response);
            
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println("Something went wrong:\n\n"+ex);
        }
        
            
     }

}
