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

statement.execute("insert into empleado (no_empleado, nombre_dept, apellidoP, apellidoM, nombre, genero, fechaNac, gradoEstud,telefono,direccion)values ('"+no+"','"+depto+"','"+paterno+"','"+materno+"','"+nombre+"','"+genero+"','"+fecha+"','"+grado+"','"+telefono+"','"+direccion+"')");

response.sendRedirect("../a_Empleado.jsp");


%>