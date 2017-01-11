package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author Osama Islam
 */
public class cart extends HttpServlet {

    Connection c;
    Statement st;

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();  
        session.setAttribute("customer",request.getRemoteAddr()); 
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
            
            ResultSet cit = st.executeQuery("select * from cart where customer_id = '" + session.getAttribute("customer") + "'");
            request.setAttribute("cart-items", cit);
//            ResultSet C = st.executeQuery("select count(*) from cart where customer_id = '" + session.getAttribute("customer") + "'");
//            String count = C.getString(1);
//            request.setAttribute("cart-count", count);
            
            request.getRequestDispatcher("cart.jsp").forward(request, response);
            
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println("Something went wrong:\n\n"+ex.getMessage());
        }
        
            
     }

}
