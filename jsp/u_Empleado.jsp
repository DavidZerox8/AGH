<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>EMPLEADO</title>
</head>
<body>

<H1>EMPLEADO</H1>


<%String no=request.getParameter("no_empleado");%>	
<%String nombre=request.getParameter("nombre");%>	
<%String paterno=request.getParameter("apPaterno");%>	
<%String materno=request.getParameter("apMaterno");%>
<%String fecha=request.getParameter("fNacimiento");%>	
<%String genero=request.getParameter("sexo");%>
<%String grado=request.getParameter("gEstudio");%>
<%String depto=request.getParameter("depto");%>
<%String direccion=request.getParameter("nacionalidad");%>
<%String telefono=request.getParameter("telefono");%>


<%

Statement statement=con.createStatement();

statement.execute("update empleado set depto = '"+depto+"', apPaterno = '"+paterno+"', apMaterno = '"+materno+"', nombre = '"+nombre+"', sexo = '"+genero+"', fNacimiento = '"+fecha+"', gEstudio = '"+grado+"', telefono = '"+telefono+"', nacionalidad = '"+direccion+"' where no_empleado = '"+no+"'");

response.sendRedirect("../menu.jsp");


%>