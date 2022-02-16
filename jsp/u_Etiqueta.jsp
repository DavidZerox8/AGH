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

statement.execute("update etiqueta set nombre = '"+nombre+"', no_maquina = '"+no_maquina+"', presentacion = '"+presentacion+"', descripcion = '"+descripcion+"', material = '"+material+"', acabado = '"+acabado+"', tipo_Trabajo = '"+tipo_Trabajo+"', cliente = '"+cliente+"', marca = '"+marca+"', ancho = '"+ancho+"', alto = '"+alto+"' where no_etiqueta = '"+no+"'");

response.sendRedirect("../menu.jsp");


%>
    </BODY>