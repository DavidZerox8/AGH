<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>CLIENTE</title>
</head>
<body>

<H1>CLIENTE</H1>


<%String no=request.getParameter("no_transporte");%>	

<%

Statement statement=con.createStatement();

statement.execute("delete from transporte where no_transporte = '"+no+"'");

response.sendRedirect("../menu.jsp");

%>
    </BODY>