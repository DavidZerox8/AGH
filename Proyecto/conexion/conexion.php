<?php
   $Servidor="localhost";
    
   $Usuario="root";
    
   $Password="rootmysql";
    
   $BD="agh";

    
   $Conexion = mysql_connect($Servidor,$Usuario,$Password);
 
   
   mysql_select_db($BD,$Conexion) or die('Imposible conectar a base de datos'. mysql_error());
?>