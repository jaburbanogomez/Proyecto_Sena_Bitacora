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
            response.sendRedirect("../index/index.jsp");//lo devuelve a index y no al menu
//request.getRequestDispatcher("../index/index.jsp").forward(request, response);
        }
    } catch (Exception e) {
        response.sendRedirect("../index/index.jsp");
//request.getRequestDispatcher("../index/index.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <!-- ======== @Region: #navigation ======== -->
        <div id="navigation" class="wrapper">
            <!--Hidden Header Region-->
            <div class="header-hidden collapse">
                <div class="header-hidden-inner container">
                    <div class="row">
                        <div class="col-md-10">                            
                            <h3>
                                Contactenos:
                            </h3>
                            <div class="switcher">
                                <div class="cols">
                                    <strong>Enar David Muñoz</strong><br>                                
                                    <abbr title="Phone"><i class="fa fa-phone"></i></abbr>
                                    322 7714630
                                    <br>
                                    <abbr title="Email"><i class="fa fa-envelope-alt"></i></abbr>
                                    enar7584@gmail.com 
                                </div>
                                <div class="cols">
                                    <strong>Jorge Alberto Burbano</strong><br>                                
                                    <abbr title="Phone"><i class="fa fa-phone"></i></abbr>
                                    312 8294529
                                    <br>
                                    <abbr title="Email"><i class="fa fa-envelope-alt"></i></abbr>
                                    jorgeal.burbano@gmail.com   
                                </div>
                                <div class="cols">
                                    <strong>Cristian David Ruano</strong><br>                                
                                    <abbr title="Phone"><i class="fa fa-phone"></i></abbr>
                                    322 6758278
                                    <br>
                                    <abbr title="Email"><i class="fa fa-envelope-alt"></i></abbr>
                                    enar7584@gmail.com    
                                </div>
                                <div class="cols">
                                    <strong>Jhoan Daniel Cifuentes</strong><br>                                
                                    <abbr title="Phone"><i class="fa fa-phone"></i></abbr>
                                    316 7187322
                                    <br>
                                    <abbr title="Email"><i class="fa fa-envelope-alt"></i></abbr>
                                    jorgeal.burbano@gmail.com     
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <!--Colour & Background Switch for demo - @todo: remove in production-->
                            <h3>
                                Variacion de colores:
                            </h3>
                            <div class="switcher">
                                <a href="#green" class="colour green active" title="Verde">Verde</a> 
                                <a href="#green-c" class="colour green-c " title="Verde Claro">Verde claro</a> 
                                <a href="#naranja" class="colour naranja " title="Naranja">Naranja</a> 
                            </div>
                            <p>
                                <small>NOTA: Selecion no es persistente.</small>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!--Header & navbar-branding region-->
            <div class="header">
                <div class="header-inner container">
                    <div class="row">
                        <div class="col-md-6">
                            <!--navbar-branding/logo - hidden image tag & site name so things like Facebook to pick up, actual logo set via CSS for flexibility -->
                            <a class="navbar-brand" href="index_inicio.jsp" title="Inicio">
                                <h1 class="hidden">
                                    <img src="img/logo_sena2.png" alt=""/>
                                </h1>
                            </a>
                            <div class="navbar-slogan">
                                <h3>Bitacora Version 1.0</h3>
                            </div>
                        </div>
                        <!--header rightside-->
                        <div class="col-md-6">
                            <!--user menu-->
                            <ul class="list-inline user-menu pull-right">
                                <li class="hidden-xs"><i  title="Recuperar Clave" class="fa-2 fa-unlock text-primary"></i> <a title="Recuperar Clave" href="recuperar_clave.jsp" class="text-uppercase">Recuperar clave</a></li>
                                <li class=""><i  title="Iniciar Sesion" class="fa-2 fa-sign-in text-primary"></i> <a title="Iniciar Sesion" href="index.jsp" class="text-uppercase">Iniciar sesion</a></li>
                                <li  title="Abrir"   ><a class="btn btn-primary btn-hh-trigger" role="button" data-toggle="collapse" data-target=".header-hidden">abrir</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
