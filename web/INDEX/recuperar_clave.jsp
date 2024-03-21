<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conexion_bd.Conexion_bd"%>
<%@page import="conexion_bd.Email"%>
<%@page import="conexion_bd.Usuario_CRUD"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <!-- backgraund -->
        <link href="fondos/css/demo.css" rel="stylesheet" type="text/css"/>
        <link href="fondos/css/style3.css" rel="stylesheet" type="text/css"/>
        <script src="fondos/js/modernizr.custom.86080.js" type="text/javascript"></script>
        <!-- backgraund -->
        <link href="css/ihover.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/ihover.css" rel="stylesheet" type="text/css"/>
        <!-- imagenes desarrolladores -->
        <meta charset="utf-8">
        <title>Recuperar Clave</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <!-- Facebook Opengraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
        <meta property="og:title" content="">
        <meta property="og:image" content="">
        <meta property="og:url" content="">
        <meta property="og:site_name" content="">
        <meta property="og:description" content="">
        <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
        <meta name="twitter:card" content="summary">
        <meta name="twitter:site" content="">
        <meta name="twitter:title" content="">
        <meta name="twitter:description" content="">
        <meta name="twitter:image" content="">
        <!-- Fav and touch icons -->
        <link rel="Shortcut Icon" type="image/x-icon" href="logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/icons/114x114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/icons/72x72.png">
        <link rel="apple-touch-icon-precomposed" href="img/icons/default.png">
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" rel="stylesheet">
        <!-- Bootstrap CSS File -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Libraries CSS Files -->
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.theme.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.transitions.min.css" rel="stylesheet">
        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">
        <!--Your custom colour override - predefined colours are: colour-blue.css, colour-green.css, colour-lavander.css, orange is default-->
        <link href="#" id="colour-scheme" rel="stylesheet">
         <script type="text/javascript">
        function validarCampos() {
            var correo = document.getElementById("correo").value;
            var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
            if (correo === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR SU CORREO ELECTRONICO";
            } else if (!patron.test(correo)) {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN CORREO VALIDO";
            } else {
                document.getElementById("mensajeScript").innerHTML = "Espere un momento por favor...";
                    setTimeout("enviardate()", 5500);
            }
        }
        function enviardate()
        {
            var submitBtn = document.getElementById('consultar');
            submitBtn.click();
        }
        function limpiar() {
            document.getElementById("mensajeScript").innerHTML = "";
        }
            function tabE(obj, e) {
                var e = (typeof event !== 'undefined') ? window.event : e; // IE : Moz 
                if (e.keyCode === 13) {
                    var ele = document.forms[0].elements;
                    for (var i = 0; i < ele.length; i++) {
                        var q = (i === ele.length - 1) ? 0 : i + 1; // if last element : if any other 
                        if (obj === ele[i]) {
                            ele[q].focus();
                            break
                        }
                    }
                    return false;
                }
            }
    </script>
     <script type="text/javascript">
            if (top.location !== self.location)top.location = self.location;
        </script>
        <script type="text/javascript">
            shortcut.add("F12", function () {
            });

        </script>
    </head>
    <body oncontextmenu="return false">
    <form action="recuperar_clave.jsp" id="" method="POST"> 
        <%
            Email email = new Email();
            String mensaje = "";
            String mensaje1 = "";
            boolean bandera = false;
            Conexion_bd con = new Conexion_bd();
            String cad = "", nombre = "";
            boolean enviar = false;
            String correo = "";

            if (request.getParameter("entrar") != null) {
                enviar = true;
            }

            if (request.getParameter("correo") != null) {
                correo = request.getParameter("correo");
            }

            if (enviar) {
                String sql = "select clave_usuario,nombres_usuario,apellidos_usuario from usuarios where"
                        + " correo_usuario='" + correo + "' ";
                Statement st = con.control().createStatement(); // nos permite definir objeto contra la base de datos.
                ResultSet rs = st.executeQuery(sql); // ejecutamos la instruccion sql
                if (rs.next()) { // significa que si devolvio resultados (que el usuario y la clave eran validas)
                    bandera = true;
                    cad = cad + rs.getString("clave_usuario");
                    nombre = nombre + rs.getString("nombres_usuario") + " " + rs.getString("apellidos_usuario");
                }
                if (bandera == true) {
                    boolean resultado = email.enviarCorreo(correo, cad, nombre);
                    if (resultado) {
                        mensaje = "LINK ENVIADO EXITOSAMENTE";
                        mensaje1 = "Verifique Su Correo Electronico";
                    } else {
                        mensaje = "LINK NO ENVIADO";
                    }
                } else {
                    mensaje = "EL CORREO NO EXISTE";
                }
            }
        %>
        <!-- ======== @Region: body ======== -->
        <body id="page" class="page-index has-hero">
            <ul class="cb-slideshow">
                <li><span>Image 01</span></li>
                <li><span>Image 02</span></li>
                <li><span>Image 03</span></li>
                <li><span>Image 04</span></li>
                <li><span>Image 05</span></li>
                <li><span>Image 06</span></li>
            </ul>
            <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->
            <div id="background-wrapper" class="benches" data-stellar-background-ratio="0.1">
                <jsp:include page="cabecera.jsp"/>
                <!-- ======== @Region: #content formulario recuperar ======== -->
                <div class="container">
                    <div class="navbar ">
                        <!--mobile collapse menu button-->
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <!--social media icons-->
                        <div class="navbar-text social-media social-media-inline pull-right">
                            <!--@todo: replace with company social media details-->
                            <a target="_blank" href="http://oferta.senasofiaplus.edu.co/sofia-oferta/"><i title="Sofia Plus" class="fa fa-fw">Sp</i></a>
                            <a target="_blank" href="https://senaintro.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_547_1"><i title="Blackboard" class="fa fa-fw">Bb</i></a>
                            <a target="_blank" href="http://oferta.senasofiaplus.edu.co/sofia-oferta/"><i title="Gmail sena" class="fa fa-fw">G</i></a>
                        </div>                 
                    </div>
                </div>
            </div>
            <div class="hero" id="highlighted">
                <div class="inner">
                    <!--Slideshow-->                   
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        <center>RECUPERAR CLAVE</center>
                                    </h3>
                                </div>
                                <div class="panel-body">
                                    <form accept-charset="UTF-8" role="form">
                                        <fieldset>
                                            <div class="form-group">
                                                <div class="input-group input-group-lg">
                                                    <span class="input-group-addon"><i class="fa fa-fw fa-envelope"></i></span>
                                                    <input title="Digite su correo para enviar link" type="text" autocomplete="off" name="correo" id="correo" style="cursor:pointer;" class="form-control" placeholder="Ingrese correo electronico" onkeypress="return tabE(this, event)">
                                                </div>
                                            </div>
                                            <center> <div id="mensajeScript" style="color:black"><%=mensaje%></div></center>
                                            <input title="Enviar Link" onclick="validarCampos()" class="btn btn-lg btn-primary btn-block" type="button" value="Enviar Link">
                                            <button type="submit"  style="display: none;" name="entrar" id="consultar"></button>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- ======== @Region: #footer ======== -->
                <jsp:include page="pie_pagina_inicio.jsp"/>
            </div> 
            <!-- Required JavaScript Libraries -->
            <script src="lib/jquery/jquery.min.js"></script>
            <script src="lib/bootstrap/js/bootstrap.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/stellar/stellar.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/counterup/counterup.min.js"></script>
            <script src="contactform/contactform.js"></script>
            <!-- Template Specisifc Custom Javascript File -->
            <script src="js/custom.js"></script>
            <!--Custom scripts demo background & colour switcher - OPTIONAL -->
            <script src="js/color-switcher.js"></script>
            <!--Contactform script -->
            <script src="contactform/contactform.js"></script>
            <script>(function (i, s, o, g, r, a, m) {
                                                    i['GoogleAnalyticsObject'] = r;
                                                    i[r] = i[r] || function () {
                                                        (i[r].q = i[r].q || []).push(arguments)
                                                    }, i[r].l = 1 * new Date();
                                                    a = s.createElement(o),
                                                            m = s.getElementsByTagName(o)[0];
                                                    a.async = 1;
                                                    a.src = g;
                                                    m.parentNode.insertBefore(a, m)
                                                })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                                                ga('create', 'UA-55234356-4', 'auto');
                                                ga('send', 'pageview');
            </script>
        </body>
</html>
