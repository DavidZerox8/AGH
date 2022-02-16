<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>TRANSPORTE</title>
</head>
<body>

<H1>TRANSPORTE</H1>


<%String no=request.getParameter("no_transporte");%>	
<%String marca=request.getParameter("marca");%>	
<%String modelo=request.getParameter("modelo");%>	
<%String serie=request.getParameter("numSerie");%>
<%String placas=request.getParameter("placas");%>	
<%String dias=request.getParameter("diasCircula");%>	
<%String empleado=request.getParameter("no_empleado");%>	
<%String mes1=request.getParameter("mesVerificacion");%>
<%String mes2=request.getParameter("mesTenencia");%>	



<%

Statement statement=con.createStatement();

statement.execute("update transporte set marca = '"+marca+"', modelo = '"+modelo+"', numSerie = '"+serie+"', placas = '"+placas+"', diasCircula = '"+dias+"', no_empleado = '"+empleado+"', mesVerificacion = '"+mes1+"',mesTenencia = '"+mes2+"' where no_transporte = '"+no+"'");

response.sendRedirect("../a_Transporte.jsp");


%>