<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>PEDIDO</title>
</head>
<body>

<H1>PEDIDO</H1>


<%String no=request.getParameter("no_pedido_proveedor");%>	
<%String no_proveedor=request.getParameter("no_proveedor");%>	
<%String no_material=request.getParameter("no_material");%>	
<%String cantidad=request.getParameter("cantidad");%>
<%String fechaEntrega=request.getParameter("fechaEntrega");%>	
<%String horaEntrega=request.getParameter("horaEntrega");%>	
<%String fechaSolicitud=request.getParameter("fechaSolicitud");%>	
<%String horaSolicitud=request.getParameter("horaSolicitud");%>	



<%

Statement statement=con.createStatement();

statement.execute("insert into pedidoProveedor (no_pedido_proveedor, no_proveedor, no_material, cantidad,fechaEntrega, horaEntrega, fechaSolicitud, horaSolicitud) values ('"+no+"','"+no_proveedor+"','"+no_material+"','"+cantidad+"','"+fechaEntrega+"','"+horaEntrega+"','"+fechaSolicitud+"','"+horaSolicitud+"')");

response.sendRedirect("../a_PedidoProveedor.jsp");


%>