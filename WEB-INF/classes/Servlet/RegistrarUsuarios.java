package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Controlador.Consultas;

public class RegistrarUsuarios extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
		  
		  
		 String nombre = request.getParameter("nombre");
		 String apellido = request.getParameter("apellido");
		 String usuario = request.getParameter("usuario");
		 String contrasena = request.getParameter("pass");
		 
		 Consultas co = new Consultas();
		 if(co.registrar(nombre,apellido,usuario,contrasena))
		 {
		 	response.sendRedirect("agh.html");
		 }
		 
		 else
		 {
		 	response.sendRedirect("registrar.jsp");
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
