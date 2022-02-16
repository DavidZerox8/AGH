
<!DOCTYPE html>
<?php
    
  //Abrimos la conexion.
    require_once 'conexion/Conexion.php';

    if(isset($_POST['btcGuardar']))
    {
      // Obtenemos los valores que insertaremos
      $IdMaquina = $_POST['IdMaquina'];
      $nombre = $_POST['nombre'];
      $micraje = $_POST['micraje'];
      $tipo = $_POST['tipo'];
     
       // Armamos el query que se encragara de insertar en nuestra tabla
 
      $sql="INSERT INTO maquina VALUES('".$IdMaquina."','".$nombre."','".$micraje."','".$tipo."')";
       
       mysql_query($sql)or die("<H3>Error en la insercion</H3>". mysql_error());

      // sql query for inserting data into database
 
    }
?>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>.: AGH ONLINE :.</title>

  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="css/bootstrap-reset.css" />
  <link rel="stylesheet" type="text/css" href="css/main.css" />
  <link rel="stylesheet" type="text/css" href="css/multiple-select.css" />
  <link rel="stylesheet" type="text/css" href="css/jquery.editable-select.min.css" />
  <link rel="stylesheet" type="text/css" href="css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="css/chosen.min.css" />
  <!--JavaScript-->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.dcjqaccordion.2.7.js"></script>
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/chosen.jquery.min.js"></script>
  <script src="js/chosen.proto.min.js"></script>
  <script src="js/common-scripts.js"></script>



  
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltips and media queries -->
  <!--[if lt IE 9]>
    {{ HTML::script('js/html5shiv.js') }}
    {{ HTML::script('js/respond.min.js') }}
  <![endif]-->
  <script>
    var publicPath = '{{ URL::to('/') }}';
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
                  <a href="./consultas/consulta_etiqueta.php">Productos</a>
                </li>
                <li>
                  <a href="./consultas/consulta_material.php">Material</a>
                </li>
                <li>
                  <a href="./consultas/consulta_proveedor.php">Proveedor</a>
                </li>
                <li>
                  <a href="./consultas/consulta_cliente.php">Cliente</a>
                </li>
                 <li>
                  <a href="./consultas/consulta_empleado.php">Empleado</a>
                </li>
                <li>
                  <a href="./consultas/consulta_maquina.php">Máquina</a>
                </li>
                <li>
                  <a href="./consultas/consulta_transporte.php">Transporte</a>
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
                  Registro de Máquina.
                </header>
                <div class="panel-body">
                  <form method="post">
                    <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de la Máquina:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Máquina</label>
                        <input name="IdMaquina" id="IdMaquina" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Nombre</label>
                        <input name="nombre" id="nombre" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Micraje</label>
                        <input name="micraje" id="micraje" type="text" class="form-control input-sm">
                      </div>
                      
                      <div class="form-group col-lg-6">
                        <label>Tipo</label>
                        <select class="form-control input-sm" name="tipo" id="tipo">
                          <option>-- Seleccione Tipo--</option>
                          <option>Producción</option>
                          <option>Corte</option>
                        
                        </select>
                      </div>
                      <div class="form-group  pull-right">
                        <input type="submit" name="btcCancel" value="Cancelar" class="btn btn-danger btn-sm">
                      </div>
                       <div class="form-group  pull-right">
                        <input type="submit" name="btcGuardar" value="Guardar" class="btn btn-success btn-sm">
                      </div>
                    </fieldset>
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








