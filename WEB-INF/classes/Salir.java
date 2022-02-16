import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class Salir extends HttpServlet {  
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("menu.jsp").include(request, response);  
              
            HttpSession objsesion=request.getSession();  
            objsesion.invalidate();  
            objsesion =request.getSession(false); 
              
             
            response.sendRedirect("Index.html"); 
            out.close();  
            
    }  
}  