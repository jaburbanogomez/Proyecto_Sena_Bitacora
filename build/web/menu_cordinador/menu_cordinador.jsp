<%@page import="conexion_bd.Usuario_CRUD"%>
<%@page session="true"%>
<%
    HttpSession obsesion = request.getSession();
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-control", "must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);
    try {
        if (session.getAttribute("usuari") == null) {
            response.sendRedirect("../INDEX/index.jsp");//lo devuelve a index y no al menu
//request.getRequestDispatcher("../INDEX/index.jsp").forward(request, response);
        }
    } catch (Exception e) {
        response.sendRedirect("../INDEX/index.jsp");
//request.getRequestDispatcher("../index/index.jsp").forward(request, response);
    }
%> 
<head>
    <title>Inicio</title>
    <script src="js/shortcut.js" type="text/javascript"></script>
    <script>
        function rotar_imagen() {
            var tiempo = 5000;//tiempo en milisegundos
            var arrImagenes = ['images/1.jpg', 'images/2.jpg', 'images/3.jpg', 'images/4.jpg', 'images/5.jpg'];
            _img = document.getElementById('rotativo');
            //cargar la 1er imagen
            _img.src = arrImagenes[0];
            var i = 1;
            setInterval(function () {
                _img.src = arrImagenes[i];
                i = (i === arrImagenes.length - 1) ? 0 : (i + 1);
            }, tiempo);
        }
    </script>
    <link href="css/fontello.css" rel="stylesheet" type="text/css"/>
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    <link href="css/sweet-alert.css" rel="stylesheet" type="text/css"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
    <script src="js/sweet-alert.min.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="css/sweet-alert.css" charset="UTF-8">
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css" charset="UTF-8">
    <link rel="stylesheet" href="css/normalize.css" charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css" charset="UTF-8">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css" charset="UTF-8">
    <link rel="stylesheet" href="css/style.css" charset="UTF-8">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" charset="UTF-8"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/modernizr.js" charset="UTF-8"></script>
    <script src="js/bootstrap.min.js" charset="UTF-8"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js" charset="UTF-8"></script>
    <script src="js/main.js" charset="UTF-8"></script>
    <link href="../bootstrap/assets/table/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>   
    <link href="css/buttons.dataTables.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- scrips fucionalidad de tabla dinamica -->
    <script src="../bootstrap/assets/table/jquery.dataTables.min.js"   type="text/javascript"></script>
    <script src="../bootstrap/assets/table/jquery.dataTables.js" type="text/javascript"></script>
    <script src="../bootstrap/assets/table/dataTables.buttons.min.js"  type="text/javascript"></script>
    <script src="../bootstrap/assets/table/jszip.min.js"               type="text/javascript"></script>
    <script src="../bootstrap/assets/table/pdfmake.min.js"             type="text/javascript"></script>
    <script src="../bootstrap/assets/table/vfs_fonts.js"               type="text/javascript"></script>
    <script src="../bootstrap/assets/table/buttons.html5.min.js"       type="text/javascript"></script>
    <script src="../bootstrap/assets/table/buttons.print.min.js" type="text/javascript"></script>
    <script src="../bootstrap/assets/table/buttons.flash.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        if (top.location !== self.location)
            top.location = self.location;
    </script>
    <script type="text/javascript">
        shortcut.add("F12", function () {
        });

    </script>
</head>
<%
    Usuario_CRUD ob = new Usuario_CRUD();
    String mo = "";
    mo = ob.mostrarNombreUsuario();
    String rol = "";
    rol = ob.mostrarNombreRol();
%>
<body oncontextmenu="" >
    <nav class="navbar-user-top full-reset">    
        <img aling="center" class="logo_2" src="assets/img/logo_sena2.png" alt="user-picture"  class="img-responsive img-circle center-box">
        <ul class="list-unstyled full-reset">
            <li  class="tooltips-general exit-system-button" data-href="cerrar_sesion.jsp" data-placement="bottom" title="Salir del sistema" >
                <i class="zmdi zmdi-power"></i>
            </li>
            <figure>
                <img src="assets/img/user05.png" alt="user-picture" class="img-responsive img-circle center-box">
            </figure>
            <li2 style="color:#fff; cursor:default;">
                <div style="color:#ffcf00" FACE="impact" class="all-tittles"> <%=rol%></div>
                <div style="border-top: 2px solid #fc7323" class="all-tittles"><%=mo%> </div>
            </li2>
            <li class="mobile-menu-button visible-xs" style="float: left !important;">
                <i class="zmdi zmdi-menu"></i>
            </li>
        </ul>
    </nav>
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile custom-scroll-containers">
            <div class="full-reset" style="background: rgba(209,209,209,1);
                 background: -moz-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);
                 background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(209,209,209,1)), color-stop(21%, rgba(209,209,209,1)), color-stop(42%, rgba(255,255,255,1)), color-stop(55%, rgba(255,255,255,1)), color-stop(78%, rgba(214,214,214,1)), color-stop(100%, rgba(214,214,214,1)));
                 background: -webkit-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);
                 background: -o-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);
                 background: -ms-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);
                 background: linear-gradient(to bottom, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);
                 filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d1d1d1', endColorstr='#d6d6d6', GradientType=0 );">
                <figure>  
                    <img src="assets/logo_bitacora/logo_bitacora.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
            </div>
            <div class="full-reset nav-lateral-list-menu">
                <nav class="navbar-user-top1 full-reset">
                </nav>
                <ul class="list-unstyled">
                    <li>
                        <a href="menu_cordinador.jsp"><i class="zmdi fa fa-home zmdi-hc-fw"></i>&nbsp;&nbsp; INICIO</a>
                    </li>                 
                    <li>
                        <div class="dropdown-menu-button"><i class="zmdi fa fa-search zmdi-hc-fw"></i>&nbsp;&nbsp; CONSULTAR ... <i class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw"></i></div>
                        <ul class="list-unstyled">
                            <li><a href="Consulta_Bitacora_Cordinador.jsp"><i class="zmdi fa fa-share-square-o zmdi-hc-fw"></i>Bitacora</a></li>
                            <li><a href="Consultar_Inasistencias_Cordinador.jsp"><i class="zmdi fa fa-share-square-o zmdi-hc-fw"></i>Inasistencias</a></li>                           
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <div class="container-fluid">
            <div class="container-flat-form1">
                <div class="title-flat-form1 title-flat-blue">Bienvenido a la Bitacora</div>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active"> 
                            <a target="_blank" href="http://oferta.senasofiaplus.edu.co/sofia-oferta/">
                                <img src="images/sofia_plus.jpg" style="width:100%;">
                            </a>
                        </div>

                        <div class="item">   
                            <a target="_blank" href="https://senaintro.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_547_1">
                                <img src="images/blackboard.png" style="width:100%;" alt=""/>
                            </a>
                        </div>

                        <div class="item">
                            <a target="_blank" href="http://caprendizaje.sena.edu.co/SGVA_Diseno/pag/login.aspx">
                                <img src="images/sgva.png" style="width:100%;" alt=""/>
                            </a>
                        </div>
                        <div class="item">
                            <a target="_blank" href="http://centroagropecuarioregionalcau.blogspot.com.co/">
                                <img src="images/blog-sena.png" style="width:100%;" alt=""/>
                            </a>
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>           
        </div>    
        <jsp:include page="pie_pagina.jsp" />
    </div>
</body>










