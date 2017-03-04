package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

public class uploadImage extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        
        MultipartRequest multipartRequest = new MultipartRequest(request,
                "C:\\Users\\Osama Islam\\Documents\\NetBeansProjects\\Restaurant\\web\\assets\\images\\menu");

        request.getRequestDispatcher("ckeditor.jsp").forward(request, response);

    }

   
}
