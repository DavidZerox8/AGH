<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>PEDIDO</title>
</head>
<body>

<H1>PEDIDO</H1>


<%String no=request.getParameter("no_pedido_cliente");%>	
<%String no_cliente=request.getParameter("no_cliente");%>	
<%String no_etiqueta=request.getParameter("no_etiqueta");%>	
<%String cantidad=request.getParameter("cantidad");%>
<%String fechaEntrega=request.getParameter("fechaEntrega");%>	
<%String horaEntrega=request.getParameter("horaEntrega");%>	
<%String fechaSolicitud=request.getParameter("fechaSolicitud");%>	
<%String horaSolicitud=request.getParameter("horaSolicitud");%>	



<%

Statement statement=con.createStatement();

statement.execute("insert into pedidoCliente (no_pedido_cliente, no_cliente, no_etiqueta, cantidad,fechaEntrega, horaEntrega, fechaSolicitud, horaSolicitud) values ('"+no+"','"+no_cliente+"','"+no_etiqueta+"','"+cantidad+"','"+fechaEntrega+"','"+horaEntrega+"','"+fechaSolicitud+"','"+horaSolicitud+"')");

response.sendRedirect("../a_PedidoCliente.jsp");


%>