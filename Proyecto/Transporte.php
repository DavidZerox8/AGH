<!DOCTYPE html>
<?php
    
  //Abrimos la conexion.
    require_once 'conexion/Conexion.php';

    if(isset($_POST['btcGuardar']))
    {
      // Obtenemos los valores que insertaremos
      $IdTransporte = $_POST['IdTransporte'];
      $marca = $_POST['marca'];
      $modelo = $_POST['modelo'];
      $noSerie = $_POST['noSerie'];
      $noPlacas = $_POST['noPlacas'];
      $dCirculacion = $_POST['dCirculacion'];
      $mesV = $_POST['mesV'];
      $mesT = $_POST['mesT'];
     
       // Armamos el query que se encragara de insertar en nuestra tabla
 
      $sql="INSERT INTO transporte VALUES('".$IdTransporte."',1,1,'".$marca."','".$modelo."','".$noSerie."','".$noPlacas."','".$dCirculacion."','".$mesV."','".$mesT."')";
       
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
                  <a href="./consultas/consulta_maquina.php">M??quina</a>
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
                  Registro de Transporte.
                </header>
                <div class="panel-body">
                  <form method="post">
                    <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificaci??n del Transporte:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Transporte</label>
                        <input name="IdTransporte" id="IdTransporte" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Marca</label>
                        <input name="marca" id="marca" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Modelo</label>
                        <input name="modelo" id="modelo" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Serie</label>
                        <input name="noSerie" id="noSerie" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Placas</label>
                        <input name="noPlacas"  id="noPlacas" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>D??as Circulaci??n</label>
                        <input name="dCirculacion" id="dCirculacion"  type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificaci??n de Tramites:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Mes Verifica</label>
                        <select class="form-control input-sm" value="mesV" id="mesV">
                          <option>-- Seleccione Mes--</option>
                          <option>Enero</option>
                          <option>Febrero</option>
                          <option>Marzo</option>
                          <option>Abril</option>
                          <option>Mayo</option>
                          <option>Junio</option>
                          <option>Julio</option>
                          <option>Agosto</option>
                          <option>Septiembre</option>
                          <option>Octubre</option>
                          <option>Noviembre</option>
                          <option>Diciembre</option>
                        </select>
                      </div>
                       <div class="form-group col-lg-12">
                        <label>Mes Tenencia</label>
                        <select class="form-control input-sm" value="mesT" id="mesT">
                           <option>-- Seleccione Mes--</option>
                          <option>Enero</option>
                          <option>Febrero</option>
                          <option>Marzo</option>
                          <option>Abril</option>
                          <option>Mayo</option>
                          <option>Junio</option>
                          <option>Julio</option>
                          <option>Agosto</option>
                          <option>Septiembre</option>
                          <option>Octubre</option>
                          <option>Noviembre</option>
                          <option>Diciembre</option>
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








