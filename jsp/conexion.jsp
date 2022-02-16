<%@ page import="java.io.*,java.sql.*;"%>
<html>
<head>
<title> JDBC </title>
</head>
<body>
<% Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/agh","root","yaoihard");
	/*if(con!=null)
	{
		out.println("<h1> Conexion exitosa </h1>");
	}*/
}

catch(SQLException e)
{
	out.println("<h1> Error de comunicacion </h1>");
}
catch(ClassNotFoundException e)
{
	out.println("<h5> Error de BD </h5>");	
}
%>

</body>
</html>