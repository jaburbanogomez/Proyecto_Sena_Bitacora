<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conexion_bd.Conexion_bd"%>
<%@page import="conexion_bd.Email"%>
<%@page import="conexion_bd.Usuario_CRUD"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <link href="lib/bootstrap/css/ocultar_clave.css" rel="stylesheet" type="text/css"/>
        <!-- backgraund -->
        <link href="fondos/css/demo.css" rel="stylesheet" type="text/css"/>
        <link href="fondos/css/style3.css" rel="stylesheet" type="text/css"/>
        <script src="fondos/js/modernizr.custom.86080.js" type="text/javascript"></script>
        <!-- backgraund -->
        <link href="css/ihover.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/ihover.css" rel="stylesheet" type="text/css"/>
        <!-- imagenes desarrolladores -->
        <meta charset="utf-8">
        <title>Asignar Clave</title>
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
        <!-- =======================================================
          Theme Name: Flexor
          Theme URL: https://bootstrapmade.com/flexor-free-multipurpose-bootstrap-template/
          Author: BootstrapMade.com
          Author URL: https://bootstrapmade.com
        ======================================================= -->
        <script type="text/javascript">
            function validarCampos() {
                var clave = document.getElementById("clave").value;
                var confirmar_clave = document.getElementById("confirmar_clave").value;
                if (clave === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR NUEVA CLAVE ";
                } else if (confirmar_clave === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE CONFIRMAR SU NUEVA CLAVE ";
                } else if (clave !== confirmar_clave) {
                    document.getElementById("mensajeScript").innerHTML = "LAS CLAVES NO COINCIDEN ";
                } else {
                    // var d=document.getElementById("actualiza").value;
                    enviardate();
                    // setTimeout(enviardate(), 8100); 
                }
            }
            function enviardate()
            {
                var submitBtn = document.getElementById('enviar');
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
            function showPass()
            {
                var pass = document.getElementById('clave');
                var pass2 = document.getElementById('confirmar_clave');
                if (document.getElementById('check').click)
                {
                    pass.setAttribute('type', 'text');
                    document.getElementById('oculto').style.display = 'none';
                    document.getElementById('oculto1').style.display = 'block';
                } else {

                    pass.setAttribute('type', 'password');
                }
                if (document.getElementById('check').click)
                {
                    pass2.setAttribute('type', 'text');
                    document.getElementById('oculto').style.display = 'none';
                    document.getElementById('oculto1').style.display = 'block';
                } else {

                    pass2.setAttribute('type', 'password');
                }
            }
            function showPass2()
            {
                var pass = document.getElementById('clave');
                var pass2 = document.getElementById('confirmar_clave');
                if (document.getElementById('check2').click)
                {
                    pass.setAttribute('type', 'password');
                    document.getElementById('oculto').style.display = 'block';
                    document.getElementById('oculto1').style.display = 'none';

                } else {

                    pass.setAttribute('type', 'text');
                }
                 if (document.getElementById('check2').click)
                {
                    pass2.setAttribute('type', 'password');
                    document.getElementById('oculto').style.display = 'block';
                    document.getElementById('oculto1').style.display = 'none';

                } else {

                    pass2.setAttribute('type', 'text');
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
        <form action="cambiar_clave.jsp" id="" method="POST">
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
                <%
                    Conexion_bd con = new Conexion_bd();
                    boolean enviar = false;
                    String mensaje = "";
                    String n_clave = request.getParameter("clave");
                    if (request.getParameter("enviar") != null) {
                        enviar = true;
                    }
                    if (enviar) {
                        Email ob = new Email();
                        String correo = ob.LlevarCorreo();
                        String cad = "Update usuarios set clave_usuario='" + n_clave + "' " + "where correo_usuario= '" + correo + " '";
                        Statement st = con.control().createStatement();
                        st.executeUpdate(cad);
                        mensaje = "CLAVE ASIGNADA EXITOSAMENTE";
                    }
                %> 
                <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->
                <div id="background-wrapper" class="benches" data-stellar-background-ratio="0.1">
                    <jsp:include page="cabecera.jsp"/>
                    <!-- ======== @Region: #content ======== -->
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
                            <!--/.navbar-collapse -->
                        </div>
                    </div>
                </div>
                <div class="hero" id="highlighted">
                    <div class="inner"> 
                        <div class="row">
                            <div class="col-sm-6 col-sm-offset-3">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title" onmouseover="showPass2();">
                                            <center>ASIGNAR NUEVA CLAVE</center>
                                        </h3>
                                    </div>
                                    <div class="panel-body">
                                        <form accept-charset="UTF-8" role="form">
                                            <fieldset>
                                                <div class="form-group">
                                                    <div class="input-group input-group-lg">
                                                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                                        <input type="password" name="clave" id="clave" title="Nueva clave" style="cursor:pointer;" onmouseover="limpiar()"  onkeypress="return tabE(this, event)" class="form-control" placeholder="Nueva Clave">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group input-group-lg">
                                                        <span class="input-group-addon"><i class="fa fa-unlock-alt fa-envelope"></i></span>
                                                        <input type="password" name="confirmar_clave" title="Confirmar clave" style="cursor:pointer;" id="confirmar_clave"  class="form-control" onkeypress="return tabE(this, event)" placeholder="Confirmar Clave">
                                                    </div>
                                                </div>
                                                <div>
                                                    <div>   
                                                        <a id='oculto1'  style='display: none'><span  title="Ocultar clave" id="check2" onclick="showPass2();" style="cursor:pointer;" class="icono glyphicon glyphicon-eye-open" ></span></a>                                                       
                                                        <a style="aling:center;" id='oculto' style="cursor:pointer;" onclick="showPass();" style='display: block'> <span style="cursor:pointer;" title="Ver clave" id="check" onclick="showPass();"  class="icono glyphicon glyphicon-eye-close"></span></a>

                                                    </div>
                                                </div>
                                                <center> <div id="mensajeScript" style="color:black"><%=mensaje%></div></center>
                                                <input class="btn btn-lg btn-primary btn-block" type="button" title="Click para asignar" style="cursor:pointer;" onclick="validarCampos()" value="Asignar">
                                                <button  type="submit" id="enviar" name="enviar" style="display:none"></button>
                                            </fieldset>                            
                                    </div>
                                </div>
                            </div>
                        </div>
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
        </form>
    </body>
</html>
