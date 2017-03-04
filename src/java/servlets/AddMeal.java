package servlets;

import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class AddMeal extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   Connection c;
    Statement st;

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "");

            st = c.createStatement();
            
            String meal = request.getParameter("meal");
            String cat = request.getParameter("category");
            
            MultipartRequest multipartRequest = new MultipartRequest(request,
                "C:\\Users\\Osama Islam\\Documents\\NetBeansProjects\\Restaurant\\web\\assets\\images\\menu");
            Enumeration<String> file = multipartRequest.getFileNames();
            
            String P = request.getParameter("price");
            //float price = Float.parseFloat(P);
            String desc = request.getParameter("description");
            
            
            st.executeUpdate("insert into food_products (p_name, p_description, p_category, p_image) values "
                    + "( '"+ meal +"', '"+ desc +"', '"+ cat +"', '"+ file +"')");
            
            
            request.getRequestDispatcher("cpanel.jsp").forward(request, response);
            
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println("Something went wrong:\n\n"+ex);
        }
        
            
     }

}
