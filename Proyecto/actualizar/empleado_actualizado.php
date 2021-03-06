<?php
  //Abrimos la conexion.
    require_once '../conexion/Conexion.php';

    $idEmpleadoMod = $_POST['idEmpleadoMod'];
    $idDepto = $_POST['depto'];
    $apPaterno = $_POST['apPaterno'];
    $apMaterno = $_POST['apMaterno'];
    $nombre = $_POST['nombre'];
    $genero = $_POST['sexo'];
    $fechaNac = $_POST['fNacimiento'];
    $gEstudio = $_POST['gEstudio'];
    $telefono = $_POST['telefono'];
    $celular = $_POST['celular'];
    $pais = $_POST['nacionalidad'];
    $estado = $_POST['estado'];
    $municipio = $_POST['minucipio'];
    $colonia = $_POST['colonia'];
    $calle = $_POST['calle'];
    $numero = $_POST['numero'];



    $actualizacion = "UPDATE empleado SET id_depto='".$idDepto."',apellidoP='".$apPaterno."',apellidoM='".$apMaterno."',nombre='".$nombre."',genero='".$genero."',fechaNac='".$fechaNac."',gradoEstud='".$gEstudio."',telefono='".$telefono."',celular='".$celular."',pais='".$pais."',estado='".$estado."',municipio='".$municipio."',colonia='".$colonia."',calle='".$calle."',numero='".$numero."' where id_cliente='".$idClienteMod."' ";
       
    mysql_query($actualizacion)or die("<H3>Error al actualizar</H3>". mysql_error());
    //realizamos la consulta a la tabla correspondiente.
    $query = "SELECT * FROM empleado ORDER BY id_emp";
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
      idEmp = document.getElementById('idEmp');
      idEmp.value = celda.innerHTML;
      document.formActualizarEmp.submit();
    }

    function obtenerIdDelete(celda){
      idEmpleadoDelete = document.getElementById('idEmpleadoDelete');
      idEmpleadoDelete.value = celda.innerHTML;

      var resp = confirm("??Esta seguro de eliminar el Empleado?");
      if (resp) {
        document.formDeleteEmpleado.submit();
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
                <li>{{ link_to('/auth/logout', 'Cerrar sesi??n') }}</li>
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
                  <a href="../consultas/consulta_maquina.php">M??quina</a>
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
                  Consulta de Empleado.
                  <span class="pull-right">
                    <a href="../Empleado.php" class="btn btn-success btn-xs">Crear Empleado</a>
                  </span>
                </header>
                <div class="panel-body">
                  <form>
                    <fieldset>
                     <table class="table table-striped table-advance table-hover letter-text-sm">
                       <thead>
                         <tr class="font-bold">
                           <th>Id. Empleado</th>
                           <th>Id. Depto</th>
                           <th>Nombre</th>
                           <th>Apellido Paterno</th>
                           <th>Apellido Materno</th>
                           <th>Genero</th>
                           <th>Empleado</th>
                         </tr>
                       </thead>
                       <tbody>
                        <?php
                          while($datos = mysql_fetch_array($resQuery)) {
                        ?>
                          <tr>
                            <td style="text-decoration:underline; cursor: pointer; font-size:13px;font-family:Arial black, Serif;color:blue; " onclick="obtenerId(this)"><?php echo $datos[0]; ?>
                            </td>
                            <td>
                              <?php echo $datos[1]?>
                            </td>
                            <td><?php echo $datos[4]; ?></td>
                            <td><?php echo $datos[2]; ?></td>
                            <td><?php echo $datos[3]; ?></td>
                            <td><?php echo $datos[5]; ?></td>
                            <td style="text-decoration:underline; cursor: pointer; font-size:13px;font-family:Arial black, Serif;color:blue; " onclick="obtenerId(this)"><?php echo $datos[0]; ?>
                            </td>
                          </tr>
                        <?php
                          }
                        ?>  
                       </tbody>
                     </table> 
                     
                    </fieldset>
                  </form>
                  <form action="../actualizar/actualizar_empleado.php" method="post" name="formActualizarEmp">
                      <input type="hidden" name="idEmp" id="idEmp"/>
                  </form>
                  <form action="../eliminados/borrar_empleado.php" method="post" name="formDeleteEmpleado">
                      <input type="hidden" name="idEmpleadoDelete" id="idEmpleadoDelete"/>
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








