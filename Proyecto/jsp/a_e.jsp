<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Datos</title>
</head>
<body>

<H1>Empleado</H1>


<%String id=request.getParameter("id");%>	
<%String nombre=request.getParameter("nombre");%>	
<%String direccion=request.getParameter("direccion");%>	
<%String puesto=request.getParameter("puesto");%>	
<%String salario=request.getParameter("salario");%>
<%

Statement statement=con.createStatement();

statement.execute("insert into empleado (id, nombre, direccion, puesto,salario) values ('"+id+"','"+nombre+"','"+direccion+"','"+puesto+"','"+salario+"')");

%>

<a href="../index.html">REGRESAR</a>
    </BODY>