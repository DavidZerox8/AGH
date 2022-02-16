<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>PROVEEDOR</title>
</head>
<body>

<H1>PROVEEDOR</H1>


<%String no=request.getParameter("no_proveedor");%>	
<%String direccion=request.getParameter("direccion");%>	
<%String telefono=request.getParameter("telefono");%>	
<%String email=request.getParameter("email");%>
<%String organizacion=request.getParameter("organizacion");%>	



<%

Statement statement=con.createStatement();

statement.execute("update proveedor set direccion = '"+direccion+"', telefono = '"+telefono+"', email = '"+email+"', organizacion = '"+organizacion+"' where no_proveedor = '"+no+"'");

response.sendRedirect("../a_Proveedor.jsp");


%>