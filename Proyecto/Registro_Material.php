<!DOCTYPE html>
<?php
    
  //Abrimos la conexion.
    require_once 'conexion/Conexion.php';

    if(isset($_POST['btcGuardar']))
    {
      // Obtenemos los valores que insertaremos
      $idMaterial = $_POST['idMaterial'];
      $cantidad = $_POST['cantidad'];
      $descripccion = $_POST['descripccion'];
      $presentacion = $_POST['presentacion'];
      $unidadMedida = $_POST['marca'];
     
      // Armamos el query que se encragara de insertar en nuestra tabla
 
      $sql="INSERT INTO material VALUES('".$idMaterial."','".$cantidad."','".$descripccion."','".$presentacion."','".$unidadMedida."')";
       
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
    function validacion(){
      if (document.getElementById("idMaterial").value == '') {
        alert('Campo No. Material es obligatorio');
        return false;
      };

      if (document.getElementById("descripccion").value == '') {
        alert('Campo Descripccion es obligatorio');
        return false;
      };

      if (document.getElementById("cantidad").value == '') {
        alert('Campo Cantidad es obligatorio');
        return false;
      };

      if (document.getElementById("presentacion").value == '') {
        alert('Campo Presentacion es obligatorio');
        return false;
      };

      if (document.getElementById("uMedida").value == '') {
        alert('Campo Unidad de Medida es obligatorio');
        return false;
      };

      return true;

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
            <li class="sub-menu">
              <a href="javascript:;">
                <span class="glyphicon glyphicon-compressed icon-menu" aria-hidden="true"></span>
                <span>Producción</span>
              </a>
              <ul class="sub">
                <li>
                 
                </li>
                <li>
                 
                </li>
        
                <li class="sub-menu">
                  <a href="javascript:;" >
                    <span>Cargas de Producción</span>
                  </a>
                  <ul class="sub">
                    <li>
                     
                    </li>
                    <li>
                      
                    </li>
                    <li>
                    
                    </li>
                  </ul>
                </li>
             
                <li class="sub-menu">
                  <a href="javascript:;" >
                    <span>Listados</span>
                  </a>
                  <ul class="sub">
                     <li>
                     
                    </li>
                    <li>
                      
                    </li>
                  </ul>
                </li>
              </ul>
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
                  Registro de Materiales.
                </header>
                <div class="panel-body">
                  <form method="post">
                    <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación del Material:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Material</label>
                        <input name="idMaterial" id="idMaterial" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Descripcción</label>
                        <input name="descripccion" id="descripccion" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Cantidad</label>
                        <input name="cantidad" id="cantidad" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Presentación</label>
                        <input name="presentacion" id="presentacion" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de Medidas:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Unidad de Medida</label>
                        <select class="form-control input-sm" name="uMedida" id="uMedida">
                          <option>-- Seleccione U.de Medida --</option>
                          <option>Kilogramos</option>
                          <option>Mtros Lineales</option>
                        </select>
                      </div>
                      
                      <div class="form-group  pull-right">
                        <input type="submit" name="btcCancel" value="Cancelar" class="btn btn-danger btn-sm">
                      </div>
                      <div class="form-group  pull-right">
                        <input type="submit" name="btcGuardar" value="Crear ticket" class="btn btn-success btn-sm" onclick="return validacion()">
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

