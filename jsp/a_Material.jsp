<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>MATERIAL</title>
</head>
<body>

<H1>MATERIAL</H1>


<%String no=request.getParameter("no_material");%>	
<%String descripcion=request.getParameter("descripcion");%>	
<%String cantidad=request.getParameter("cantidad");%>	
<%String presentacion=request.getParameter("presentacion");%>
<%String unidadMedida=request.getParameter("unidadMedida");%>	



<%

Statement statement=con.createStatement();

statement.execute("insert into material (no_material, descripcion, cantidad, presentacion, unidadMedida)values ('"+no+"','"+descripcion+"','"+cantidad+"','"+presentacion+"','"+unidadMedida+"')");

response.sendRedirect("../a_Material.jsp");


%>