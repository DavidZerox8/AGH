<%@ page import="java.sql.*" %>
<%@include file="conexion.jsp"%>
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
  <link rel="stylesheet" type="text/css" href="../css/micss.css" />
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
                <span>Registros</span>
              </a>
              <ul class="sub">
                <li>
                  <a href="Etiqueta.jsp">Etiquetas</a>
                </li>
                <li>
                  <a href="Material.jsp">Material</a>
                </li>
                <li>
                  <a href="Proveedor.jsp">Proveedor</a>
                </li>
                <li>
                  <a href="Cliente.jsp">Cliente</a>
                </li>
                <li>
                  <a href="Empleado.jsp">Empleado</a>
                </li>
                <li>
                  <a href="Maquina.jsp">Máquina</a>
                </li>
                <li>
                  <a href="Transporte.jsp">Transporte</a>
                </li>
				<li>
                  <a href="PedidoCliente.jsp">Pedido Cliente</a>
                </li>
	<li>
                  <a href="PedidoProveedor.jsp">Pedido Proveedor</a>
                </li>
              </ul>
            </li>
          </ul>
          <!-- sidebar menu end-->
        </div>
      </aside>
      <!--sidebar end-->
      <section id="main-content">
         <section class="wrapper">
          <div class="row">
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                  Registros Proveedor.
                </header>
                <div class="panel-body">
                  <form method="post" action="Material.jsp">
                    <fieldset>
                      <div class="form-group border-bottom-grey margin-bottom-30">
                        <h5>
                          <strong>
                            
                          </strong>  
                        </h5>
                      </div>
                      
                        <%
            Statement statement = con.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from proveedor") ; 
		
        %>

        <TABLE>
            <TR>
                <TH>No_PROVEEDOR</TH>
                <TH>ORGANIZACION</TH>
                <TH>DIRECCION</TH>
		<TH>TELEFONO</TH>
	<TH>E-MAIL</TH>	
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
	<TD> <%= resultset.getString(4) %></TD>
	<TD><%= resultset.getString(5) %></TD>
            </TR>
            <% } %>
		
        </TABLE>

	   <div class="form-group col-lg-6"/>
                      </div>	
                      <div class="form-group  pull-right">
		<br>
                        <input type="button" name="btcCancel" value="Regresar" class="btn btn-danger btn-sm" onClick=" window.location.href='../menu.jsp'">
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
  </body>
</html>








