<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <script src="js/shortcut.js" type="text/javascript"></script>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <!-- backgraund -->
        <link href="fondos/css/demo.css" rel="stylesheet" type="text/css"/>
        <link href="fondos/css/style3.css" rel="stylesheet" type="text/css"/>
        <script src="fondos/js/modernizr.custom.86080_1.js" type="text/javascript"></script>       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/ihover.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/ihover.css" rel="stylesheet" type="text/css"/>
        <meta charset="utf-8">
        <title>INICIO</title>
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
            if (top.location !== self.location)top.location = self.location;
        </script>
        <script type="text/javascript">
            shortcut.add("F12", function () {
            });
        </script>
    </head>
    <body id="page" class="page-index has-hero" oncontextmenu="return false">
        <ul class="cb-slideshow">
            <li><span>Image 01</span></li>
            <li><span>Image 02</span></li>
            <li><span>Image 03</span></li>
            <li><span>Image 04</span></li>
            <li><span>Image 05</span></li>
            <li><span>Image 06</span></li>
        </ul>
        <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->
        <div id="background-wrapper" class="buildings" data-stellar-background-ratio="0.1">
            <jsp:include page="cabecera_inicio.jsp"/>
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
            <!--Slideshow-->
            <div id="highlighted-slider" class="container">
                <div class="item-slider" data-toggle="owlcarousel" data-owlcarousel-settings='{"singleItem":true, "navigation":true, "transitionStyle":"fadeUp"}'>
                    <!--Slideshow content-->
                    <!--Slide 1-->
                    <div class="item">
                        <div class="row">
                            <div class="col-md-4 col-md-push-6 item-caption">
                                <h2 class="h1 text-weight-light">
                                    Bienvenido a la <span class="text-primary">Bitacora</span>
                                </h2>
                                <h4>
                                    Diseñado para facilitar tus actividades Sena.
                                </h4>
                                <p>                                   
                                    Aquí podrás realizar acciones como registrar, actualizar y consultar diferente informacion de acuerdo 
                                    a tu rol en la entidad del Sena.
                                </p>
                            </div>
                            <div class="col-md-8 col-md-pull-6 hidden-xs">
                                <img src="img/slides/fondo-colahs.png" alt="Slide 1" class="center-block img-responsive"/>
                            </div>
                        </div>
                    </div>
                    <!--Slide 2-->
                    <div class="item">
                        <div class="row">
                            <div class="col-md-8 text-right-md item-caption">
                                <h2 class="h1 text-weight-light">
                                    <span class="text-primary">Sistematizada</span>
                                </h2>
                                <h4>
                                    Adaptable en un 100%
                                </h4>
                                <p align="rigth"> 
                                Agradable interfaz que le permite interactuar de forma sencilla y eficaz con capacidad de 
                                <br>
                                adaptarse a los diferentes dispositivos electrónicos con conexión a internet. 
                                </p>
                            </div>                               
                            <div class="col-md-4 hidden-xs">
                                <img src="img/slides/responsive-bitacora_f.png" alt="Slide 2" class="center-block img-responsive">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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