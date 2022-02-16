<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>ETIQUETA</title>
</head>
<body>

<H1>ETIQUETA</H1>


<%String no=request.getParameter("no_etiqueta");%>	
<%String nombre=request.getParameter("nombre");%>	
<%String no_maquina=request.getParameter("no_maquina");%>	
<%String presentacion=request.getParameter("presentacion");%>
<%String descripcion=request.getParameter("descripcion");%>	
<%String material=request.getParameter("material");%>
<%String acabado=request.getParameter("acabado");%>
<%String tipo_Trabajo=request.getParameter("tipo_Trabajo");%>
<%String cliente=request.getParameter("cliente");%>
<%String marca=request.getParameter("marca");%>
<%String ancho=request.getParameter("ancho");%>
<%String alto=request.getParameter("alto");%>

<%

Statement statement=con.createStatement();

statement.execute("insert into etiqueta (no_etiqueta, nombre, no_maquina, presentacion, descripcion, material, acabado, tipo_Trabajo,cliente,marca,ancho,alto) values ('"+no+"','"+nombre+"','"+no_maquina+"','"+presentacion+"','"+descripcion+"','"+material+"','"+acabado+"','"+tipo_Trabajo+"','"+cliente+"','"+marca+"','"+ancho+"','"+alto+"')");

response.sendRedirect("../a_Etiqueta.jsp");


%>
    </BODY>