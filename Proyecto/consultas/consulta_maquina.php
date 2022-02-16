<?php
  //Abrimos la conexion.
    require_once '../conexion/Conexion.php';
    //realizamos la consulta a la tabla correspondiente.
     $query = "SELECT * FROM maquina ORDER BY id_maq";

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
      idMaquina = document.getElementById('idMaquina');
      idMaquina.value = celda.innerHTML;
      document.formActualizarMaquina.submit();
    }

    function obtenerIdDelete(celda){
      idmaquinaDelete = document.getElementById('idmaquinaDelete');
      idmaquinaDelete.value = celda.innerHTML;
      
      var resp = confirm("¿Esta seguro de eliminar la máquina?");
      if (resp) {
        document.formDeleteMaq.submit();
      }else{
        return false;
      }
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
                  Consulta de Máquina.
                  <span class="pull-right">
                    <a href="../Maquina.php" class="btn btn-success btn-xs">Crear Etiqueta</a>
                  </span>
                </header>
                <div class="panel-body">
                  <form>
                    <fieldset>
                     <table class="table table-striped table-advance table-hover letter-text-sm">
                       <thead>
                         <tr class="font-bold">
                           <th>Id. Máquina</th>
                           <th>Nombre</th>
                           <th>Micraje</th>
                           <th>Tipo</th>
                           <th>Eliminar</th>
                         </tr>
                       </thead>
                       <tbody>
                        <?php
                          while($datos = mysql_fetch_array($resQuery)) {
                        ?>
                          <tr>
                            <td style="text-decoration:underline; cursor: pointer; font-size:13px;font-family:Arial black, Serif;color:blue; " onclick="obtenerId(this)"><?php echo $datos[0]; ?></td>
                            <td><?php echo $datos[1]; ?></td>
                            <td><?php echo $datos[2]; ?></td>
                            <td><?php echo $datos[3]; ?></td>
                            <td style="text-decoration:underline; cursor: pointer; font-size:13px;font-family:Arial black, Serif;color:blue;" onclick="obtenerIdDelete(this)">
                              <?php echo $datos[0]; ?>  
                            </td>
                          </tr>
                        <?php
                          }
                        ?>  
                       </tbody>
                     </table> 
                     
                    </fieldset>
                  </form>
                  <form action="../actualizar/actualizar_maquina.php" method="post" name="formActualizarMaquina">
                        <input type="hidden" name="idMaquina" id="idMaquina"/>
                  </form>
                  <form action="../eliminados/borrar_maquina.php" method="post" name="formDeleteMaq">
                        <input type="hidden" name="idmaquinaDelete" id="idmaquinaDelete"/>
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








