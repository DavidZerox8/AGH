<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>MAQUINA</title>
</head>
<body>

<H1>MAQUINA</H1>


<%String no=request.getParameter("no_maquina");%>	
<%String nombre=request.getParameter("nombre");%>	
<%String micraje=request.getParameter("micraje");%>	
<%String tipo=request.getParameter("tipo");%>


<%

Statement statement=con.createStatement();

statement.execute("update maquina set nombre = '"+nombre+"', micraje = '"+micraje+"', tipo = '"+tipo+"' where no_maquina = '"+no+"'");

response.sendRedirect("../a_Maquina.jsp");


%>
    </BODY>