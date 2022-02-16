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

statement.execute("update pedidocliente set no_cliente = '"+no_cliente+"', no_etiqueta = '"+no_etiqueta+"', cantidad = '"+cantidad+"',fechaEntrega = '"+fechaEntrega+"',horaEntrega = '"+horaEntrega+"',fechaSolicitud = '"+fechaSolicitud+"', horaSolicitud = '"+horaSolicitud+"'  where no_pedido_cliente = '"+no+"'");

response.sendRedirect("../a_PedidoCliente.jsp");


%>