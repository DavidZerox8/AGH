package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Controlador.Consultas;

public class InicioSesion extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
		  
		  String usuario = request.getParameter("usuario");
		  String contrasena = request.getParameter("pass");
		  
		  Consultas co =  new Consultas();
		   if(co.autentificacion(usuario, contrasena))
			{
            HttpSession objsesion = request.getSession(true);
            objsesion.setAttribute("usuario",usuario);
				response.sendRedirect("menu.jsp");
			}
			
			else 
			{
				response.sendRedirect("agh.html");
			}
		  
            
            
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
