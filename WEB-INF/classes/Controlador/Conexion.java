package Controlador;

import java.io.*;
import java.sql.*;

public class Conexion 
{
	private Connection con;	

	public Conexion()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/agh","root","yaoihard");
			if (con != null)
			{
				System.out.println(" Correcto ");
			}
		}


		catch(SQLException e)
      	{
	     	System.err.println("Error "+e);
      	}

      	catch(ClassNotFoundException e)
      	{
	    	System.err.println("Error "+e);	
      	}
    }
      	public Connection getConexion()
      	{
      		return con;
      	}

      	public static void main(String [] args) 
      	{
      		Conexion con = new Conexion();		
      	}

}