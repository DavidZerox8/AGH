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

statement.execute("update pedidoproveedor set no_proveedor = '"+no_proveedor+"', no_material = '"+no_material+"', cantidad = '"+cantidad+"', fechaEntrega = '"+fechaEntrega+"', horaEntrega = '"+horaEntrega+"', fechaSolicitud = '"+fechaSolicitud+"', horaSolicitud = '"+horaSolicitud+"' where no_pedido_proveedor = '"+no+"'");

response.sendRedirect("../a_PedidoProveedor.jsp");


%>