<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>CLIENTE</title>
</head>
<body>

<H1>CLIENTE</H1>


<%String no=request.getParameter("no_maquina");%>	

<%

Statement statement=con.createStatement();

statement.execute("delete from maquina where no_maquina = '"+no+"'");

response.sendRedirect("../menu.jsp");

%>
    </BODY>