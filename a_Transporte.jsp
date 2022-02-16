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
                 <span>Altas </span>
              </a>
              <ul class="sub">
                 <li>
                  <a href="a_Etiqueta.jsp">Etiquetas</a>
                </li>
                <li>
                  <a href="a_Material.jsp">Material</a>
                </li>
                <li>
                  <a href="a_Proveedor.jsp">Proveedor</a>
                </li>
                <li>
                  <a href="a_Cliente.jsp">Cliente</a>
                </li>
                <li>
                  <a href="a_Empleado.jsp">Empleado</a>
                </li>
                <li>
                  <a href="a_Maquina.jsp">Máquina</a>
                </li>
                <li>
                  <a href="a_Transporte.jsp">Transporte</a>
                </li>
				<li>
                  <a href="a_PedidoCliente.jsp">Pedido Cliente</a>
                </li>
				<li>
                  <a href="a_PedidoProveedor.jsp">Pedido Proveedor</a>
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
                  Registro de Transporte.
                </header>
                <div class="panel-body">
                  <form method="post" action="jsp/a_Transporte.jsp">
                    <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación del Transporte:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Transporte</label>
                        <input name="no_transporte" id="IdTransporte" type="text" class="form-control input-sm">
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
                        <input name="numSerie" id="noSerie" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Placas</label>
                        <input name="placas"  id="noPlacas" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Días Circulación</label>
                        <input name="diasCircula" id="dCirculacion"  type="text" class="form-control input-sm">
                      </div>
					  <div class="form-group col-lg-11">
                        <label>No. Empleado</label>
                        <input name="no_empleado" id="dCirculacion"  type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de Tramites:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Mes Verifica</label>
                        <select class="form-control input-sm" value="mesVerificacion" id="mesV">
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
                        <select class="form-control input-sm" value="mesTenencia" id="mesT">
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








