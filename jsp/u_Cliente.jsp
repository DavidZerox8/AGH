<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>CLIENTE</title>
</head>
<body>

<H1>CLIENTE</H1>


<%String no=request.getParameter("no_cliente");%>	
<%String empresa=request.getParameter("empresa");%>	
<%String rs=request.getParameter("razonSocial");%>	
<%String rfc=request.getParameter("rfc");%>
<%String domicilio=request.getParameter("domicilio");%>	
<%String telefono=request.getParameter("telefono");%>
<%String email=request.getParameter("email");%>
<%String status=request.getParameter("status");%>
<%

Statement statement=con.createStatement();

statement.execute("update cliente set empresa ='"+empresa+"', razonSocial = '"+rs+"', rfc = '"+rfc+"', domicilio = '"+domicilio+"', telefono = '"+telefono+"', email = '"+email+"', status = '"+status+"' where no_cliente = '"+no+"'");

response.sendRedirect("../menu.jsp");

%>
    </BODY>