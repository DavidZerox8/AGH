<!DOCTYPE html>
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

      if (document.getElementById("idProveedor").value == '') {
        alert('Campo No. Proveedor es obligatorio');
        return false;
      };

      if (document.getElementById("nombre").value == '') {
        alert('Campo Nombre es obligatorio');
        return false;
      };

      if (document.getElementById("apPterno").value == '') {
        alert('Campo Apellido es obligatorio');
        return false;
      };

      if (document.getElementById("apMaterno").value == '') {
        alert('Campo Apellido es obligatorio');
        return false;
      };

      if (document.getElementById("fNacimiento").value == '') {
        alert('Campo Fecha de Naciemiento de Medida es obligatorio');
        return false;
      };

      if (document.getElementById("nacionalidad").value == '') {
        alert('Campo Nacionalidad de Medida es obligatorio');
        return false;
      };

      if (document.getElementById("telefono").value == '') {
        alert('Campo Telefono de Medida es obligatorio');
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
			  
			  <%
                HttpSession objsesion = request.getSession(false);
                String usuario = (String) objsesion.getAttribute("usuario");
        
                if(usuario.equals(""))
                {
                  response.sendRedirect("Index.html");
                }
        
              %>
			  
			  
                <span class="username"><%=usuario%></span>
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
                 <span>Actualizaciones </span>
              </a>
              <ul class="sub">
                  <li>
                  <a href="u_Etiqueta.jsp">Etiquetas</a>
                </li>
                <li>
                  <a href="u_Material.jsp">Material</a>
                </li>
                <li>
                  <a href="u_Proveedor.jsp">Proveedor</a>
                </li>
                <li>
                  <a href="u_Cliente.jsp">Cliente</a>
                </li>
                <li>
                  <a href="u_Empleado.jsp">Empleado</a>
                </li>
                <li>
                  <a href="u_Maquina.jsp">Máquina</a>
                </li>
                <li>
                  <a href="u_Transporte.jsp">Transporte</a>
                </li>
	 <li>
                  <a href="u_PedidoCliente.jsp">Pedido Cliente</a>
                </li>
	 <li>
                  <a href="u_PedidoProveedor.jsp">Pedido Proveedor</a>
                </li>
              </ul>
            </li>
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
                  Registro de Empleado.
                </header>
                <div class="panel-body">
                  <form method="post" action="jsp/u_Empleado.jsp">
                    <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación del Empleado:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Empleado</label>
                        <input name="no_empleado" id="IdEmp" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Nombre(s)</label>
                        <input name="nombre" id="nombre" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Apellido Paterno</label>
                        <input name="apPaterno" id="apPaterno" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Apellido Mterno</label>
                        <input name="apMaterno" id="apMaterno" type="text" class="form-control input-sm">
                      </div>
                     <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de Residencia:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Fecha de Nacimiento</label>
                        <input name="fNacimiento" id="fNacimiento" type="text" class="form-control input-sm" >
                      </div>

                       <div class="form-group col-lg-12">
                        <label>Genero</label>
                        <select class="form-control input-sm" name="sexo" id="sexo">
                          <option>-- Seleccione Sexo--</option>
                          <option value="M">Masculino</option>
                          <option value="F">Femnino</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Grado de Estudios</label>
                        <select class="form-control input-sm" name="gEstudio" id="gEstudio">
                          <option>-- Seleccione Grado--</option>
                          <option value="1">Primaria</option>
                          <option value="2">Secundaria</option>
                          <option value="3">Preparatoria</option>
                          <option value="4">Universidad</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Departamento</label>
                        <select class="form-control input-sm" name="depto" id="depto">
                          <option>-- Seleccione Departamento--</option>
                          <option value="1">Preprensa Comercial</option>
                          <option value="1">Produccion</option>
                          <option value="1">R.H</option>
                          <option value="1">Sistemas</option>
                        </select>
                      </div>
	

                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de Residencia:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Direccion</label>
                        <input name="nacionalidad" id="nacionalidad" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Telefono</label>
                        <input name="telefono" id="telefono" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group  pull-right">
                        <input type="submit" name="btcCancel" value="Cancelar" class="btn btn-danger btn-sm">
                      </div>
                       <div class="form-group  pull-right">
                        <input type="submit" name="btcGuardar" value="Guardar" class="btn btn-success btn-sm" onclick="return validacion()">
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








