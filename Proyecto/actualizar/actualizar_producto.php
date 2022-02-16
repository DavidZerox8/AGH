<!DOCTYPE html>
<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
require_once '../conexion/Conexion.php';
//echo 'ptm'.$NoReporte;
$idEtiqueta = $_POST["idProducto"];
//echo 'CAMBIA EL VALOR';
//echo $NoReporte;
$Consulta = "SELECT * FROM etiqueta where id_etiq ='" . $idEtiqueta . "'";
$queryMaterial = "SELECT * FROM material ORDER BY id_material";
$resultado = mysql_query($Consulta) or die("<H3>Error en la consulta</H3>");
 

 //duncion que actualizara los datos de la etiqueta seleccionada
 
?>
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
    function validacion(){
      if (document.getElementById("IdProducto").value == '') {
        alert('Campo No, etiqueta es obligatorio');
        return false;
      };

      if (document.getElementById("descripccion").value == '') {
        alert('Campo Descripccion es obligatorio');
        return false;
      };

      if (document.getElementById("presentacion").value == '') {
        alert('Campo Presentacion es obligatorio');
        return false;
      };

      if (document.getElementById("marca").value == '') {
        alert('Campo Marca es obligatorio');
        return false;
      };

      if (document.getElementById("material").value == '') {
        alert('Campo Material es obligatorio');
        return false;
      };

      if (document.getElementById("acabado").value == '') {
        alert('Campo Acabado es obligatorio');
        return false;
      };

      if (document.getElementById("tTrabajo").value == '') {
        alert('Campo Tipo de Trabajo es obligatorio');
        return false;
      };

      if (document.getElementById("cliente").value == '') {
        alert('Campo Cliente de Trabajo es obligatorio');
        return false;
      };

      if (document.getElementById("maquina").value == '') {
        alert('Campo Máquina de Trabajo es obligatorio');
        return false;
      };

      if (document.getElementById("ancho").value == '') {
        alert('Campo Ancho de Trabajo es obligatorio');
        return false;
      };

      if (document.getElementById("alto").value == '') {
        alert('Campo Alto de Trabajo es obligatorio');
        return false;
      };

      return true;

    }

    function obtenerId(celda){
      idEtiqueta = document.getElementById('idProducto');
      idEtiqueta.value = celda.innerHTML;
      document.formActualizarProd.submit();
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
                  <a href="../consultas/consulta_maquina.php">Material</a>
                </li>
                <li>
                  <a href="../consultas/consulta_maquina.php">Proveedor</a>
                </li>
                <li>
                  <a href="../consultas/consulta_maquina.php">Cliente</a>
                </li>
                 <li>
                  <a href="../consultas/consulta_maquina.php">Empleado</a>
                </li>
                <li>
                  <a href="../consultas/consulta_maquina.php">Máquina</a>
                </li>
                <li>
                  <a href="../consultas/consulta_maquina.php">Transporte</a>
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
                  Actualización de Productos.
                </header>
                <div class="panel-body">
                <form action="etiqueta_actualizada.php"  method="post" name="myform">
                 <?php
                    while ($datos = mysql_fetch_array($resultado)) {
                   $numero=$datos [0];
                // echo $numero;
              
         
                ?>
                  <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación del Producto:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Producto</label>
                        <input type="text" name="IdProducto" id="IdProducto" class="form-control input-sm" value="<?php echo $datos[0]; ?>">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Descripcción</label>
                        <input name="descripccion" id="descripccion" type="text" class="form-control input-sm" value="<?php echo $datos[4]; ?>">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Presentación</label>
                        <input name="presentacion" id="presentacion" type="text" class="form-control input-sm" value="<?php echo $datos[11]; ?>">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Marca</label>
                        <input name="marca" id="marca" type="text" class="form-control input-sm" value="<?php echo $datos[5]; ?>">
                      </div>
                      
                    
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de Materiales:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Material</label>
                        <select class="form-control input-sm" name="material" id="material" value="<?php echo $datos[3]; ?>">
                          <?php 
                              while($datosMat=mysql_fetch_array($queryMaterial)) {
                          ?>
                            <option value="<?php echo($datosMat[0]); ?>"><?php echo($datosMat[3]); ?></option>
                          <?php
                              }
                          ?>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Acabado</label>
                        <select class="form-control input-sm" name="acabado" id="acabado" value="<?php echo $datos[9]; ?>">
                          <option>-- Seleccione Acabado--</option>
                          <option value="1">Gepp SA. DE CV</option>
                          <option value="2">Embotelladora Méxicana< s.a de c.v</option>
                          <option value="2">Vinicola de México</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Tipo de Trabajo</label>
                        <select class="form-control input-sm" name="tTrabajo" id="tTrabajo" value="<?php echo $datos[10]; ?>">
                          <option>-- Seleccione Tipo de Trabajo --</option>
                          <option value="1">Flexible</option>
                          <option value="1">Autoadherible</option>
                          <option value="1">Rotograbado</option>
                          <option value="1">Convencional</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Cliente</label>
                        <select class="form-control input-sm" name="cliente" id="cliente" value="<?php echo $datos[2]; ?>">
                          <option value="0">-- Seleccione Cliente--</option>
                          <option value="1">Gepp SA. DE CV</option>
                          <option value="1">Embotelladora Méxicana< s.a de c.v</option>
                          <option value="1">Vinicola de México</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Màquina</label>
                        <select class="form-control input-sm" name="maquina" id="maquina" >
                          <option >-- Seleccione Màquina--</option>
                          <option value="1">DCM</option>
                          <option value="1">CHESNUT</option>
                          <option value="1">NILPITER</option>
                        </select>
                      </div>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de Medidas:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Ancho</label>
                        <input name="ancho" id="ancho" type="text" class="form-control input-sm" value="<?php echo $datos[7]; ?>">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Alto</label>
                        <input name="alto" id="alto" type="text" class="form-control input-sm" value="<?php echo $datos[8]; ?>">
                      </div>
                     
                    </fieldset>
                      <input type="text" name="idEtiquetaMod" id="idEtiquetaMod" value="<?php echo $datos[0]; ?>"/>
                      <div class="form-group  pull-right">
                        <input type="submit" name="btcCancel" value="Cancelar" class="btn btn-danger btn-sm">
                      </div>
                      <div class="form-group  pull-right">
                        <input type="submit" name="btcGuardar" value="Actualizar Producto" class="btn btn-success btn-sm" onclick="return validacion()">
                      </div>
                  </form>
                <?php } ?> 
                </div>
              </section>
            </div>
          </div>
        </section>
      </section>
<!-- /main content end-->
    </section>
  </body>
</html>








