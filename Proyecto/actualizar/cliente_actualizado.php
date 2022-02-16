<?php 
  require_once '../conexion/Conexion.php';
    
     // Obtenemos los valores que insertaremos
      $idClienteMod = $_POST["idClienteMod"];
      $empresa = $_POST['empresa'];
      $rZocial = $_POST['rZocial'];
      $rfc = $_POST['rfc'];
      $domicilio = $_POST['domicilio'];
      $telefono = $_POST['telefono'];
      $email = $_POST['email'];
      $estatus = $_POST['estatus'];
     
      // Armamos el query que se encragara de insertar en nuestra tabla
      
      $actualizacion = "UPDATE cliente SET empresa='".$empresa."',razonSocial='".$rZocial."',rfc='".$rfc."',domicilio='".$domicilio."',telefono='".$telefono."',email='".$email."',status='".$estatus."' where id_cliente='".$idClienteMod."' ";
       
       mysql_query($actualizacion)or die("<H3>Error al actualizar</H3>". mysql_error());
    //realizamos la consulta a la tabla correspondiente.
     $query = "SELECT * FROM cliente ORDER BY id_cliente";

     $resQuery = mysql_query($query) or die("Error en la consulta". mysql_error());
      
 ?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>.: AGH ONLINE :.</title>

  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="../css/bootstrap-reset.css" />
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <link rel="stylesheet" type="text/css" href="../css/multiple-select.css" />
  <link rel="stylesheet" type="text/css" href="../css/jquery.editable-select.min.css" />
  <link rel="stylesheet" type="text/css" href="../css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="../css/chosen.min.css" />
  <!--JavaScript-->
  <script src="../js/jquery.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../js/jquery.scrollTo.min.js"></script>
  <script src="../js/chosen.jquery.min.js"></script>
  <script src="../js/chosen.proto.min.js"></script>
  <script src="../js/common-scripts.js"></script>



  
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltips and media queries -->
  <!--[if lt IE 9]>
    {{ HTML::script('js/html5shiv.js') }}
    {{ HTML::script('js/respond.min.js') }}
  <![endif]-->
  <script>
    var publicPath = '{{ URL::to('/') }}';

    function obtenerId(celda){
      idCliente = document.getElementById('idCliente');
      idCliente.value = celda.innerHTML;
      document.formActualizarCliente.submit();
    }

    function obtenerIdDelete(celda){
      idClienteDelete = document.getElementById('idClienteDelete');
      idClienteDelete.value = celda.innerHTML;
      document.formDeleteCliente.submit();
    }
  </script>
  </head>

  <body>
    <section id="container">
      <!--header start-->
      <header class="header white-bg">
        <div class="sidebar-toggle-box">
          <div class="icon-reorder"><span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span></div>
        </div>
        <!--logo start-->
        <a href="#" class="logo">AGH OnLine</a>
        <!--logo end-->
        <div class="top-nav ">
          <ul class="nav pull-right top-menu">
            <!-- user login dropdown start-->
            <li class="dropdown">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">
              <img src="Imagenes/avatar1_small.png"  id="avatar1_small" title="Avatar">
                <span class="username">Usuario</span>
                <b class="caret"></b>
              </a>
              <ul class="dropdown-menu">
                <div class="log-arrow-up"></div>
                <li>{{ link_to('settings', 'Ajustes de perfil') }}</li>
                <li class="divider"></li>
                <li>{{ link_to('/auth/logout', 'Cerrar sesión') }}</li>
              </ul>
            </li>
            <!-- user login dropdown end -->
          </ul>
        </div>
      </header>
      <!--header end-->
      <!--sidebar start-->
      <aside>
        <div id="sidebar"  class="nav-collapse ">
          <!-- sidebar menu start-->
          <ul class="sidebar-menu" id="nav-accordion">
            <li class="sub-menu">
              <a href="javascript:;">
                <span class="glyphicon glyphicon-tag icon-menu"></span>
                <span>Registros</span>
              </a>
              <ul class="sub">
                <li>
                  <a href="../consultas/consulta_etiqueta.php">Productos</a>
                </li>
                <li>
                  <a href="../consultas/consulta_material.php">Material</a>
                </li>
                <li>
                  <a href="../consultas/consulta_proveedor.php">Proveedor</a>
                </li>
                <li>
                  <a href="../consultas/consulta_cliente.php">Cliente</a>
                </li>
                 <li>
                  <a href="../consultas/consulta_empleado.php">Empleado</a>
                </li>
                <li>
                  <a href="../consultas/consulta_maquina.php">Máquina</a>
                </li>
                <li>
                  <a href="../consultas/consulta_transporte.php">Transporte</a>
                </li>
              </ul>
            </li>
           
          </ul>
          <!-- sidebar menu end-->
        </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
         <section class="wrapper">
          <div class="row">
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                  Consulta de Cliente.
                  <span class="pull-right">
                    <a href="../Cliente.php" class="btn btn-success btn-xs">Crear Cliente</a>
                  </span>
                </header>
                <div class="panel-body">
                  <form>
                    <fieldset>
                     <table class="table table-striped table-advance table-hover letter-text-sm">
                       <thead>
                         <tr class="font-bold">
                           <th>Id. Cliente</th>
                           <th>Empresa</th>
                           <th>razonSocial</th>
                           <th>rfc</th>
                           <th>domicilio</th>
                           <th>telefono</th>
                           <th>E-mail</th>
                           <th>Eliminar</th>
                         </tr>
                       </thead>
                       <tbody>
                        <?php
                          while($datos = mysql_fetch_array($resQuery)) {
                        ?>
                          <tr>
                            <td style="text-decoration:underline; cursor: pointer; font-size:13px;font-family:Arial black, Serif;color:blue; " onclick="obtenerId(this)"><?php echo $datos[0]; ?>
                            </td>
                            <td> <?php echo $datos[1] ?></td>
                            <td><?php echo $datos[2]; ?></td>
                            <td><?php echo $datos[3]; ?></td>
                            <td><?php echo $datos[4]; ?></td>
                            <td><?php echo $datos[5]; ?></td>
                            <td><?php echo $datos[6]; ?></td>
                            <td style="text-decoration:underline; cursor: pointer; font-size:13px;font-family:Arial black, Serif;color:blue; " onclick="obtenerIdDelete(this)"><?php echo $datos[0]; ?>
                            </td>
                          </tr>
                        <?php
                          }
                        ?>  
                       </tbody>
                     </table> 
                     
                    </fieldset>
                  </form>
                  <form action="../actualizar/actualizar_cliente.php" method="post" name="formActualizarCliente">
                    <input type="hidden" name="idCliente" id="idCliente"/>
                  </form>
                   <form action="../eliminados/borrar_Cliente.php" method="post" name="formDeleteCliente">
                      <input type="hidden" name="idClienteDelete" id="idClienteDelete"/>
                  </form>
                </div>
              </section>
            </div>
          </div>
         </section>
      </section>



      
      </section>
      <!-- /main content end-->
    </section>
  </body>
</html>








