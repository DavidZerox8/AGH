<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>CLIENTE</title>
</head>
<body>

<H1>CLIENTE</H1>


<%String no=request.getParameter("no_proveedor");%>	

<%

Statement statement=con.createStatement();

statement.execute("delete from proveedor where no_proveedor = '"+no+"'");

response.sendRedirect("../menu.jsp");

%>
    </BODY>