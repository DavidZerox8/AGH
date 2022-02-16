<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>CLIENTE</title>
</head>
<body>

<H1>CLIENTE</H1>


<%String no=request.getParameter("no_etiqueta");%>	

<%

Statement statement=con.createStatement();

statement.execute("delete from etiqueta where no_etiqueta = '"+no+"'");

response.sendRedirect("../menu.jsp");

%>
    </BODY>