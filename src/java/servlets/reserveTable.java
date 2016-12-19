package servlets;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class reserveTable extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("reserve-a-table.jsp").forward(request, response);
    }

}
