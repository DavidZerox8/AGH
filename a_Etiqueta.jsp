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
                  <a href="a_Cliente.jsp">Material</a>
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
                  Registro de Etiquetas.
                </header>
                <div class="panel-body">
                <form method="post" action="jsp/a_Etiqueta.jsp">
                   
                  <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            Identificación de Etiqueta:
                          </strong>  
                        </h5>
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Etiqueta</label>
                        <input type="text" name="no_etiqueta" id="no_etiqueta" class="form-control input-sm">
                      </div>
					   <div class="form-group col-lg-6">
                        <label>Nombre Etiqueta</label>
                        <input type="text" name="nombre" id="nombre" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>No. Maquina</label>
                        <input name="no_maquina" id="no_maquina" type="text" class="form-control input-sm">
                      </div>
						<div class="form-group col-lg-6">
                        <label>Marca</label>
                        <input name="marca" id="marca" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Presentación</label>
                        <input name="presentacion" id="presentacion" type="text" class="form-control input-sm">
                      </div>
					<div class="form-group col-lg-6">
                        <label>Descripción</label>
                        <input name="descripcion" id="descripcion" type="text" class="form-control input-sm">
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
                        <select class="form-control input-sm" name="material" id="material">
                          <option>-- Seleccione Material--</</option>
                          <option value="1">Flexible</option>
                          <option value="1">Autoadherible</option>
                          <option value="1">Rotograbado</option>
                          <option value="1">Convencional</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Acabado</label>
                        <select class="form-control input-sm" name="acabado" id="acabado">
                          <option>-- Seleccione Acabado--</option>
                          <option value="1">Metalizada</option>
                          <option value="1">Golden</option>
                          <option value="1">Digital</option>
                          <option value="1">HD Flexography</option>
                          <option value="1">Rotogravable</option>
                          <option value="1">Premium</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Tipo de Trabajo</label>
                        <select class="form-control input-sm" name="tipo_Trabajo" id="tTrabajo">
                          <option>-- Seleccione Tipo de Trabajo --</option>
                          <option value="1">Flexible</option>
                          <option value="1">Autoadherible</option>
                          <option value="1">Rotograbado</option>
                          <option value="1">Convencional</option>
                        </select>
                      </div>
                      <div class="form-group col-lg-12">
                        <label>Cliente</label>
                        <select class="form-control input-sm" name="cliente" id="cliente">
                          <option value="0">-- Seleccione Cliente--</option>
                          <option value="1">Gepp SA. DE CV</option>
                          <option value="1">Embotelladora Méxicana s.a de c.v</option>
                          <option value="1">Vinicola de México</option>
                          <option value="1">Coca cola</option>
                          <option value="1">HEB</option>
                          <option value="1">heinz</option>
                          <option value="1">Nestle
                          </option>
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
                        <input name="ancho" id="ancho" type="text" class="form-control input-sm">
                      </div>
                      <div class="form-group col-lg-6">
                        <label>Alto</label>
                        <input name="alto" id="alto" type="text" class="form-control input-sm">
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
<!-- /main content end-->
    </section>
  </body>
</html>








