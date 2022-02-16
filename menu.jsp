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
                
                <li class="divider"></li>
                <li><form action = "Salir"> <input type="submit" name="btncs" value="Cerrar Sesion"></form></li>
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
                  <a href="jsp/Etiqueta.jsp">Etiquetas</a>
                </li>
                <li>
                  <a href="jsp/Material.jsp">Material</a>
                </li>
                <li>
                  <a href="jsp/Proveedor.jsp">Proveedor</a>
                </li>
                <li>
                  <a href="jsp/Cliente.jsp">Cliente</a>
                </li>
                <li>
                  <a href="jsp/Empleado.jsp">Empleado</a>
                </li>
                <li>
                  <a href="jsp/Maquina.jsp">Máquina</a>
                </li>
                <li>
                  <a href="jsp/Transporte.jsp">Transporte</a>
                </li>
	<li>
                  <a href="jsp/PedidoCliente.jsp">Pedido Cliente</a>
                </li>
	<li>
                  <a href="jsp/PedidoProveedor.jsp">Pedido Proveedor</a>
                </li>
              </ul>
            </li>
            <li class="sub-menu">
              <a href="javascript:;">
                <span class="glyphicon glyphicon-compressed icon-menu" aria-hidden="true"></span>
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
                 <li class="sub-menu">
              <a href="javascript:;">
                <span class="glyphicon glyphicon-compressed icon-menu" aria-hidden="true"></span>
                <span>Bajas </span>
              </a>
              <ul class="sub">
  		<li>
                  <a href="b_Etiqueta.jsp">Etiquetas</a>
                </li>
                <li>
                  <a href="b_Material.jsp">Material</a>
                </li>
                <li>
                  <a href="b_Proveedor.jsp">Proveedor</a>
                </li>
                <li>
                  <a href="b_Cliente.jsp">Cliente</a>
                </li>
                <li>
                  <a href="b_Empleado.jsp">Empleado</a>
                </li>
                <li>
                  <a href="b_Maquina.jsp">Máquina</a>
                </li>
                <li>
                  <a href="b_Transporte.jsp">Transporte</a>
                </li>
	 <li>
                  <a href="b_PedidoCliente.jsp">Pedido Cliente</a>
                </li>
	 <li>
                  <a href="b_PedidoProveedor.jsp">Pedido Proveedor</a>
                </li>
              </ul>
            </li>
	 <li class="sub-menu">
              <a href="javascript:;">
                <span class="glyphicon glyphicon-compressed icon-menu" aria-hidden="true"></span>
                <span>Consultas</span>
              </a>
              <ul class="sub">
                    <li>
                  <a href="c_Etiqueta.jsp">Etiquetas</a>
                </li>
                <li>
                  <a href="c_Material.jsp">Material</a>
                </li>
                <li>
                  <a href="c_Proveedor.jsp">Proveedor</a>
                </li>
                <li>
                  <a href="c_Cliente.jsp">Cliente</a>
                </li>
                <li>
                  <a href="c_Empleado.jsp">Empleado</a>
                </li>
                <li>
                  <a href="c_Maquina.jsp">Máquina</a>
                </li>
                <li>
                  <a href="c_Transporte.jsp">Transporte</a>
                </li>
	 <li>
                  <a href="c_PedidoCliente.jsp">Pedido Cliente</a>
                </li>
	 <li>
                  <a href="jsp/c_PedidoProveedor.jsp">Pedido Proveedor</a>
                </li>
              </ul>
            </li>
 <li class="sub-menu">
              <a href="javascript:;">
                <span class="glyphicon glyphicon-compressed icon-menu" aria-hidden="true"></span>
                <span>Actualizaciones</span>
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
        <!-- Aquí se inserta el contenido -->
        @yield('content')
      </section>
      <!-- /main content end-->
    </section>
  </body>
</html>