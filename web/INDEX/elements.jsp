<%-- 
    Document   : elements
    Created on : 28/09/2017, 06:00:46 PM
    Author     : jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Elements - Flexor Bootstrap Theme</title>
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
    <link rel="shortcut icon" href="img/icons/favicon.png">
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
  </head>
  
  <!-- ======== @Region: body ======== -->
  <body class="page-elements">
    <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->
    <div id="background-wrapper" class="benches" data-stellar-background-ratio="0.8">
      
      <!-- ======== @Region: #navigation ======== -->
      <div id="navigation" class="wrapper">
        <!--Hidden Header Region-->
        <div class="header-hidden collapse">
          <div class="header-hidden-inner container">
            <div class="row">
              <div class="col-md-3">
                <h3>
                  About Us
                </h3>
                <p>Flexor is a super flexible responsive theme with a modest design touch.</p>
                <a href="about.html" class="btn btn-more"><i class="fa fa-plus"></i> Learn more</a>
              </div>
              <div class="col-md-3">
                <!--@todo: replace with company contact details-->
                <h3>
                  Contact Us
                </h3>
                <address>
                  <strong>Flexor Bootstrap Theme Inc</strong> 
                  <abbr title="Address"><i class="fa fa-pushpin"></i></abbr>
                  Sunshine House, Sunville. SUN12 8LU.
                  <br>
                  <abbr title="Phone"><i class="fa fa-phone"></i></abbr>
                  019223 8092344
                  <br>
                  <abbr title="Email"><i class="fa fa-envelope-alt"></i></abbr>
                  info@flexorinc.com 
                </address>
              </div>
              <div class="col-md-6">
                <!--Colour & Background Switch for demo - @todo: remove in production-->
                <h3>
                  Theme Variations 
                </h3>
                <div class="switcher">
                  <div class="cols">
                    Backgrounds:
                    <br>
                    <a href="#benches" class="background benches active" title="Benches">Benches</a> <a href="#boots" class="background boots " title="Boots">Boots</a> <a href="#buildings" class="background buildings " title="Buildings">Buildings</a> <a href="#city" class="background city " title="City">City</a> <a href="#metro" class="background metro " title="Metro">Metro</a> 
                  </div>
                  <div class="cols">
                    Colours:
                    <br>
                    <a href="#orange" class="colour orange active" title="Orange">Orange</a> <a href="#green" class="colour green " title="Green">Green</a> <a href="#blue" class="colour blue " title="Blue">Blue</a> <a href="#lavender" class="colour lavender " title="Lavender">Lavender</a> 
                  </div>
                </div>
                <p>
                  <small>Selection is not persistent.</small>
                </p>
              </div>
            </div>
          </div>
        </div>
        <!--Header & navbar-branding region-->
        <div class="header">
          <div class="header-inner container">
            <div class="row">
              <div class="col-md-8">
                <!--navbar-branding/logo - hidden image tag & site name so things like Facebook to pick up, actual logo set via CSS for flexibility -->
                <a class="navbar-brand" href="index.html" title="Home">
                  <h1 class="hidden">
                    <img src="img/logo.png" alt="Flexor Logo">
                    Flexor
                  </h1>
                </a>
                <div class="navbar-slogan">
                  Responsive HTML Theme
                  <br>
                  By BootstrapMade.com
                </div>
              </div>
              <!--header rightside-->
              <div class="col-md-4">
                <!--user menu-->
                <ul class="list-inline user-menu pull-right">
                  <li class="hidden-xs"><i class="fa fa-edit text-primary"></i> <a href="register.html" class="text-uppercase">Register</a></li>
                  <li class="hidden-xs"><i class="fa fa-sign-in text-primary"></i> <a href="login.html" class="text-uppercase">Login</a></li>
                  <li><a class="btn btn-primary btn-hh-trigger" role="button" data-toggle="collapse" data-target=".header-hidden">Open</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="navbar navbar-default">
            <!--mobile collapse menu button-->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <!--social media icons-->
            <div class="navbar-text social-media social-media-inline pull-right">
              <!--@todo: replace with company social media details-->
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-google-plus"></i></a>
            </div>
            <!--everything within this div is collapsed on mobile-->
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav" id="main-menu">
                <li class="icon-link">
                  <a href="index.html"><i class="fa fa-home"></i></a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages<b class="caret"></b></a>
                  <!-- Dropdown Menu -->
                  <ul class="dropdown-menu">
                    <li class="dropdown-header">Flexor Lite Version Pages</li>
                    <li><a href="elements.html" tabindex="-1" class="menu-item">Elements</a></li>
                    <li><a href="about.html" tabindex="-1" class="menu-item">About / Inner Page</a></li>
                    <li><a href="login.html" tabindex="-1" class="menu-item">Login</a></li>
                    <li><a href="register.html" tabindex="-1" class="menu-item">Sign-Up</a></li>
                    <li class="dropdown-footer">Dropdown footer</li>
                  </ul>
                </li>
                <li><a href="#">Menu Link</a></li>
                <li class="dropdown dropdown-mm">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Mega Menu<b class="caret"></b></a>
                  <!-- Dropdown Menu -->
                  <ul class="dropdown-menu dropdown-menu-mm dropdown-menu-persist">
                    <li class="row">
                      <ul class="col-md-6">
                        <li class="dropdown-header">Websites and Apps</li>
                        <li><a href="#">Analysis and Planning</a></li>
                        <li><a href="#">User Experience / Information Architecture</a></li>
                        <li><a href="#">User Interface Design / UI Design</a></li>
                        <li><a href="#">Code &amp; Development / Implementation &amp; Support</a></li>
                      </ul>
                      <ul class="col-md-6">
                        <li class="dropdown-header">Enterprise solutions</li>
                        <li><a href="#">Business Analysis</a></li>
                        <li><a href="#">Custom UX Consulting</a></li>
                        <li><a href="#">Quality Assurance</a></li>
                      </ul>
                    </li>
                    <li class="dropdown-footer">
                      <div class="row">
                        <div class="col-md-7">Like the lite version? <strong>Get the extended version of Flexor.</strong></div>
                        <div class="col-md-5">
                          <a href="https://bootstrapmade.com" class="btn btn-more btn-lg pull-right"><i class="fa fa-cloud-download"></i> Get It Now</a>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
            <!--/.navbar-collapse -->
          </div>
        </div>
      </div>
    </div>
    
    <!-- ======== @Region: #content ======== -->
    <div id="content">
      <div class="container">
        <h2>
          Theme Elements
        </h2>
        <!--Intro-->
        <p>Flexor contains <a href="http://getbootstrap.com/">all the standard Bootstrap goodies</a> and more, here's a quick overview of some of the key elements which aren't obvious throughout the template.</p>
        <div class="block block-border-bottom">
          <!--buttons-->
          <h3 class="block-title text-weight-strong text-uppercase">
            Buttons
          </h3>
          <h4>
            More Link (.btn-more)
          </h4>
          <h5>
            Normal
          </h5>
          <a href="https://bootstrapmade.com" class="btn btn-more"><i class="fa fa-plus"></i> More</a>
          <a href="https://bootstrapmade.com" class="btn btn-more i-right">More Right <i class="fa fa-plus"></i></a>
          <a href="https://bootstrapmade.com" class="btn btn-more"><i class="fa fa-comment"></i> Comments (20)</a>
          <hr>
          <h5>
            Large
          </h5>
          <a href="https://bootstrapmade.com" class="btn btn-more large"><i class="fa fa-plus"></i> More</a>
          <a href="https://bootstrapmade.com" class="btn btn-more large i-right">More Right <i class="fa fa-plus"></i></a>
          <a href="https://bootstrapmade.com" class="btn btn-more large"><i class="fa fa-comment"></i> Comments (20)</a>
          <hr>
          <h4>
            Mini
          </h4>
          <button type="button" class="btn btn-default btn-xs">Default</button>
          <button type="button" class="btn btn-xs btn-primary">Primary</button>
          <button type="button" class="btn btn-xs btn-info">Info</button>
          <button type="button" class="btn btn-xs btn-success">Success</button>
          <button type="button" class="btn btn-xs btn-warning">Warning</button>
          <button type="button" class="btn btn-xs btn-danger">Danger</button>
          <button type="button" class="btn btn-xs btn-inverse">Inverse</button>
          <hr>
          <h4 class="margin-top-medium">
            Small
          </h4>
          <button type="button" class="btn btn-default btn-sm">Default</button>
          <button type="button" class="btn btn-sm btn-primary">Primary</button>
          <button type="button" class="btn btn-sm btn-info">Info</button>
          <button type="button" class="btn btn-sm btn-success">Success</button>
          <button type="button" class="btn btn-sm btn-warning">Warning</button>
          <button type="button" class="btn btn-sm btn-danger">Danger</button>
          <button type="button" class="btn btn-sm btn-inverse">Inverse</button>
          <hr>
          <h4 class="margin-top-medium">
            Default
          </h4>
          <button type="button" class="btn btn-default">Default</button>
          <button type="button" class="btn btn-primary">Primary</button>
          <button type="button" class="btn btn-info">Info</button>
          <button type="button" class="btn btn-success">Success</button>
          <button type="button" class="btn btn-warning">Warning</button>
          <button type="button" class="btn btn-danger">Danger</button>
          <button type="button" class="btn btn-inverse">Inverse</button>
          <hr>
          <h4 class="margin-top-medium">
            Large
          </h4>
          <button type="button" class="btn btn-default btn-lg">Default</button>
          <button type="button" class="btn btn-lg btn-primary">Primary</button>
          <button type="button" class="btn btn-lg btn-info">Info</button>
          <button type="button" class="btn btn-lg btn-success">Success</button>
          <button type="button" class="btn btn-lg btn-warning">Warning</button>
          <button type="button" class="btn btn-lg btn-danger">Danger</button>
          <button type="button" class="btn btn-lg btn-inverse">Inverse</button>
        </div>
        <div class="block block-border-bottom">
          <!--Alerts-->
          <h3 class="block-title text-weight-strong text-uppercase">
            Alerts
          </h3>
          <div class="alert alert-info">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <h4>
              Nothing much happening!
            </h4>
            Just saying...... 
          </div>
          <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <h4>
              Looking good!
            </h4>
            All systems are go!! 
          </div>
          <div class="alert alert-warning">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <h4>
              Warning!
            </h4>
            Danger, High voltage!! 
          </div>
          <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <h4>
              Error!
            </h4>
            Server meltdown pending!!! 
          </div>
        </div>
        <div class="block block-border-bottom">
          <!--Type elements-->
          <h3 class="block-title text-weight-strong text-uppercase">
            Typography
          </h3>
          <h4 class="block-title">
            Quotes
          </h4>
          <blockquote>
            <p>Our productivity &amp; sales are up! Customers are happy &amp; we couldn't be happier with this product!</p>
            <img src="img/misc/charles-quote.png" alt="Charles Spencer Chaplin">
            <small>
              <strong>Charles Chaplin</strong>
              <br>
              British comic actor
            </small>
          </blockquote>
          <hr>
          <h4 class="block-title">
            Jumbotron (.jumbotron)
          </h4>
          <div class="jumbotron">
            <h1>
              Oi! Look at me!!
            </h1>
            <p>Integer. Tortor enim, phasellus aliquam! Turpis urna egestas et rhoncus elementum habitasse, quis! Auctor dolor et, tortor ridiculus facilisis integer integer! A odio pellentesque, velit placerat cras ultricies elementum lundium.</p>
            <p><a class="btn btn-primary btn-lg">Learn more</a></p>
          </div>
          <hr>
          <h4 class="block-title">
            Tables
          </h4>
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>#</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Username</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td rowcol-md-="2">1</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
              </tr>
              <tr>
                <td>Mark</td>
                <td>Otto</td>
                <td>@TwBootstrap</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
              </tr>
              <tr>
                <td>3</td>
                <td colcol-md-="2">Larry the Bird</td>
                <td>@twitter</td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- Icons -->
        <div class="block block-border-bottom">
          <h3 class="block-title text-weight-strong text-uppercase">
            Icons
          </h3>
          <!--Icon Set: Font Awesome-->
          <h4>
            Font Awesome 
            <small>(585 icons)</small>
          </h4>
          <ul class="list-group row-fluid clearfix">
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-500px"></i> - .fa-500px </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-adjust"></i> - .fa-adjust </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-adn"></i> - .fa-adn </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-align-center"></i> - .fa-align-center </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-align-justify"></i> - .fa-align-justify </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-align-left"></i> - .fa-align-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-align-right"></i> - .fa-align-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-amazon"></i> - .fa-amazon </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ambulance"></i> - .fa-ambulance </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-anchor"></i> - .fa-anchor </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-android"></i> - .fa-android </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angellist"></i> - .fa-angellist </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-double-down"></i> - .fa-angle-double-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-double-left"></i> - .fa-angle-double-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-double-right"></i> - .fa-angle-double-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-double-up"></i> - .fa-angle-double-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-down"></i> - .fa-angle-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-left"></i> - .fa-angle-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-right"></i> - .fa-angle-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-angle-up"></i> - .fa-angle-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-apple"></i> - .fa-apple </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-archive"></i> - .fa-archive </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-area-chart"></i> - .fa-area-chart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-down"></i> - .fa-arrow-circle-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-left"></i> - .fa-arrow-circle-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-o-down"></i> - .fa-arrow-circle-o-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-o-left"></i> - .fa-arrow-circle-o-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-o-right"></i> - .fa-arrow-circle-o-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-o-up"></i> - .fa-arrow-circle-o-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-right"></i> - .fa-arrow-circle-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-circle-up"></i> - .fa-arrow-circle-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-down"></i> - .fa-arrow-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-left"></i> - .fa-arrow-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-right"></i> - .fa-arrow-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrow-up"></i> - .fa-arrow-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrows"></i> - .fa-arrows </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrows-alt"></i> - .fa-arrows-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrows-h"></i> - .fa-arrows-h </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-arrows-v"></i> - .fa-arrows-v </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-asterisk"></i> - .fa-asterisk </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-at"></i> - .fa-at </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-backward"></i> - .fa-backward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-balance-scale"></i> - .fa-balance-scale </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ban"></i> - .fa-ban </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bar-chart"></i> - .fa-bar-chart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-barcode"></i> - .fa-barcode </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bars"></i> - .fa-bars </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-battery-empty"></i> - .fa-battery-empty </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-battery-full"></i> - .fa-battery-full </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-battery-half"></i> - .fa-battery-half </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-battery-quarter"></i> - .fa-battery-quarter </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-battery-three-quarters"></i> - .fa-battery-three-quarters </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bed"></i> - .fa-bed </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-beer"></i> - .fa-beer </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-behance"></i> - .fa-behance </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-behance-square"></i> - .fa-behance-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bell"></i> - .fa-bell </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bell-o"></i> - .fa-bell-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bell-slash"></i> - .fa-bell-slash </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bell-slash-o"></i> - .fa-bell-slash-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bicycle"></i> - .fa-bicycle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-binoculars"></i> - .fa-binoculars </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-birthday-cake"></i> - .fa-birthday-cake </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bitbucket"></i> - .fa-bitbucket </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bitbucket-square"></i> - .fa-bitbucket-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-black-tie"></i> - .fa-black-tie </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bold"></i> - .fa-bold </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bolt"></i> - .fa-bolt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bomb"></i> - .fa-bomb </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-book"></i> - .fa-book </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bookmark"></i> - .fa-bookmark </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bookmark-o"></i> - .fa-bookmark-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-briefcase"></i> - .fa-briefcase </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-btc"></i> - .fa-btc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bug"></i> - .fa-bug </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-building"></i> - .fa-building </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-building-o"></i> - .fa-building-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bullhorn"></i> - .fa-bullhorn </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bullseye"></i> - .fa-bullseye </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-bus"></i> - .fa-bus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-buysellads"></i> - .fa-buysellads </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-calculator"></i> - .fa-calculator </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-calendar"></i> - .fa-calendar </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-calendar-check-o"></i> - .fa-calendar-check-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-calendar-minus-o"></i> - .fa-calendar-minus-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-calendar-o"></i> - .fa-calendar-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-calendar-plus-o"></i> - .fa-calendar-plus-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-calendar-times-o"></i> - .fa-calendar-times-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-camera"></i> - .fa-camera </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-camera-retro"></i> - .fa-camera-retro </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-car"></i> - .fa-car </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-down"></i> - .fa-caret-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-left"></i> - .fa-caret-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-right"></i> - .fa-caret-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-square-o-down"></i> - .fa-caret-square-o-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-square-o-left"></i> - .fa-caret-square-o-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-square-o-right"></i> - .fa-caret-square-o-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-square-o-up"></i> - .fa-caret-square-o-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-caret-up"></i> - .fa-caret-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cart-arrow-down"></i> - .fa-cart-arrow-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cart-plus"></i> - .fa-cart-plus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc"></i> - .fa-cc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-amex"></i> - .fa-cc-amex </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-diners-club"></i> - .fa-cc-diners-club </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-discover"></i> - .fa-cc-discover </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-jcb"></i> - .fa-cc-jcb </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-mastercard"></i> - .fa-cc-mastercard </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-paypal"></i> - .fa-cc-paypal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-stripe"></i> - .fa-cc-stripe </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cc-visa"></i> - .fa-cc-visa </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-certificate"></i> - .fa-certificate </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chain-broken"></i> - .fa-chain-broken </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-check"></i> - .fa-check </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-check-circle"></i> - .fa-check-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-check-circle-o"></i> - .fa-check-circle-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-check-square"></i> - .fa-check-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-check-square-o"></i> - .fa-check-square-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-circle-down"></i> - .fa-chevron-circle-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-circle-left"></i> - .fa-chevron-circle-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-circle-right"></i> - .fa-chevron-circle-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-circle-up"></i> - .fa-chevron-circle-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-down"></i> - .fa-chevron-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-left"></i> - .fa-chevron-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-right"></i> - .fa-chevron-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chevron-up"></i> - .fa-chevron-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-child"></i> - .fa-child </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-chrome"></i> - .fa-chrome </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-circle"></i> - .fa-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-circle-o"></i> - .fa-circle-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-circle-o-notch"></i> - .fa-circle-o-notch </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-circle-thin"></i> - .fa-circle-thin </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-clipboard"></i> - .fa-clipboard </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-clock-o"></i> - .fa-clock-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-clone"></i> - .fa-clone </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cloud"></i> - .fa-cloud </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cloud-download"></i> - .fa-cloud-download </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cloud-upload"></i> - .fa-cloud-upload </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-code"></i> - .fa-code </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-code-fork"></i> - .fa-code-fork </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-codepen"></i> - .fa-codepen </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-coffee"></i> - .fa-coffee </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cog"></i> - .fa-cog </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cogs"></i> - .fa-cogs </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-columns"></i> - .fa-columns </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-comment"></i> - .fa-comment </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-comment-o"></i> - .fa-comment-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-commenting"></i> - .fa-commenting </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-commenting-o"></i> - .fa-commenting-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-comments"></i> - .fa-comments </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-comments-o"></i> - .fa-comments-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-compass"></i> - .fa-compass </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-compress"></i> - .fa-compress </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-connectdevelop"></i> - .fa-connectdevelop </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-contao"></i> - .fa-contao </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-copyright"></i> - .fa-copyright </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-creative-commons"></i> - .fa-creative-commons </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-credit-card"></i> - .fa-credit-card </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-crop"></i> - .fa-crop </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-crosshairs"></i> - .fa-crosshairs </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-css3"></i> - .fa-css3 </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cube"></i> - .fa-cube </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cubes"></i> - .fa-cubes </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-cutlery"></i> - .fa-cutlery </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-dashcube"></i> - .fa-dashcube </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-database"></i> - .fa-database </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-delicious"></i> - .fa-delicious </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-desktop"></i> - .fa-desktop </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-deviantart"></i> - .fa-deviantart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-diamond"></i> - .fa-diamond </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-digg"></i> - .fa-digg </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-dot-circle-o"></i> - .fa-dot-circle-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-download"></i> - .fa-download </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-dribbble"></i> - .fa-dribbble </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-dropbox"></i> - .fa-dropbox </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-drupal"></i> - .fa-drupal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-eject"></i> - .fa-eject </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ellipsis-h"></i> - .fa-ellipsis-h </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ellipsis-v"></i> - .fa-ellipsis-v </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-empire"></i> - .fa-empire </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-envelope"></i> - .fa-envelope </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-envelope-o"></i> - .fa-envelope-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-envelope-square"></i> - .fa-envelope-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-eraser"></i> - .fa-eraser </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-eur"></i> - .fa-eur </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-exchange"></i> - .fa-exchange </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-exclamation"></i> - .fa-exclamation </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-exclamation-circle"></i> - .fa-exclamation-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-exclamation-triangle"></i> - .fa-exclamation-triangle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-expand"></i> - .fa-expand </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-expeditedssl"></i> - .fa-expeditedssl </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-external-link"></i> - .fa-external-link </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-external-link-square"></i> - .fa-external-link-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-eye"></i> - .fa-eye </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-eye-slash"></i> - .fa-eye-slash </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-eyedropper"></i> - .fa-eyedropper </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-facebook"></i> - .fa-facebook </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-facebook-official"></i> - .fa-facebook-official </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-facebook-square"></i> - .fa-facebook-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-fast-backward"></i> - .fa-fast-backward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-fast-forward"></i> - .fa-fast-forward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-fax"></i> - .fa-fax </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-female"></i> - .fa-female </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-fighter-jet"></i> - .fa-fighter-jet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file"></i> - .fa-file </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-archive-o"></i> - .fa-file-archive-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-audio-o"></i> - .fa-file-audio-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-code-o"></i> - .fa-file-code-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-excel-o"></i> - .fa-file-excel-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-image-o"></i> - .fa-file-image-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-o"></i> - .fa-file-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-pdf-o"></i> - .fa-file-pdf-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-powerpoint-o"></i> - .fa-file-powerpoint-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-text"></i> - .fa-file-text </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-text-o"></i> - .fa-file-text-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-video-o"></i> - .fa-file-video-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-file-word-o"></i> - .fa-file-word-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-files-o"></i> - .fa-files-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-film"></i> - .fa-film </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-filter"></i> - .fa-filter </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-fire"></i> - .fa-fire </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-fire-extinguisher"></i> - .fa-fire-extinguisher </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-firefox"></i> - .fa-firefox </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-flag"></i> - .fa-flag </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-flag-checkered"></i> - .fa-flag-checkered </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-flag-o"></i> - .fa-flag-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-flask"></i> - .fa-flask </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-flickr"></i> - .fa-flickr </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-floppy-o"></i> - .fa-floppy-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-folder"></i> - .fa-folder </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-folder-o"></i> - .fa-folder-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-folder-open"></i> - .fa-folder-open </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-folder-open-o"></i> - .fa-folder-open-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-font"></i> - .fa-font </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-fonticons"></i> - .fa-fonticons </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-forumbee"></i> - .fa-forumbee </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-forward"></i> - .fa-forward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-foursquare"></i> - .fa-foursquare </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-frown-o"></i> - .fa-frown-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-futbol-o"></i> - .fa-futbol-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-gamepad"></i> - .fa-gamepad </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-gavel"></i> - .fa-gavel </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-gbp"></i> - .fa-gbp </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-genderless"></i> - .fa-genderless </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-get-pocket"></i> - .fa-get-pocket </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-gg"></i> - .fa-gg </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-gg-circle"></i> - .fa-gg-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-gift"></i> - .fa-gift </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-git"></i> - .fa-git </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-git-square"></i> - .fa-git-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-github"></i> - .fa-github </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-github-alt"></i> - .fa-github-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-github-square"></i> - .fa-github-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-glass"></i> - .fa-glass </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-globe"></i> - .fa-globe </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-google"></i> - .fa-google </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-google-plus"></i> - .fa-google-plus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-google-plus-square"></i> - .fa-google-plus-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-google-wallet"></i> - .fa-google-wallet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-graduation-cap"></i> - .fa-graduation-cap </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-gratipay"></i> - .fa-gratipay </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-h-square"></i> - .fa-h-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hacker-news"></i> - .fa-hacker-news </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-lizard-o"></i> - .fa-hand-lizard-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-o-down"></i> - .fa-hand-o-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-o-left"></i> - .fa-hand-o-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-o-right"></i> - .fa-hand-o-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-o-up"></i> - .fa-hand-o-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-paper-o"></i> - .fa-hand-paper-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-peace-o"></i> - .fa-hand-peace-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-pointer-o"></i> - .fa-hand-pointer-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-rock-o"></i> - .fa-hand-rock-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-scissors-o"></i> - .fa-hand-scissors-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hand-spock-o"></i> - .fa-hand-spock-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hdd-o"></i> - .fa-hdd-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-header"></i> - .fa-header </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-headphones"></i> - .fa-headphones </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-heart"></i> - .fa-heart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-heart-o"></i> - .fa-heart-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-heartbeat"></i> - .fa-heartbeat </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-history"></i> - .fa-history </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-home"></i> - .fa-home </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hospital-o"></i> - .fa-hospital-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hourglass"></i> - .fa-hourglass </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hourglass-end"></i> - .fa-hourglass-end </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hourglass-half"></i> - .fa-hourglass-half </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hourglass-o"></i> - .fa-hourglass-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-hourglass-start"></i> - .fa-hourglass-start </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-houzz"></i> - .fa-houzz </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-html5"></i> - .fa-html5 </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-i-cursor"></i> - .fa-i-cursor </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ils"></i> - .fa-ils </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-inbox"></i> - .fa-inbox </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-indent"></i> - .fa-indent </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-industry"></i> - .fa-industry </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-info"></i> - .fa-info </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-info-circle"></i> - .fa-info-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-inr"></i> - .fa-inr </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-instagram"></i> - .fa-instagram </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-internet-explorer"></i> - .fa-internet-explorer </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ioxhost"></i> - .fa-ioxhost </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-italic"></i> - .fa-italic </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-joomla"></i> - .fa-joomla </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-jpy"></i> - .fa-jpy </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-jsfiddle"></i> - .fa-jsfiddle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-key"></i> - .fa-key </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-keyboard-o"></i> - .fa-keyboard-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-krw"></i> - .fa-krw </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-language"></i> - .fa-language </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-laptop"></i> - .fa-laptop </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-lastfm"></i> - .fa-lastfm </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-lastfm-square"></i> - .fa-lastfm-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-leaf"></i> - .fa-leaf </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-leanpub"></i> - .fa-leanpub </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-lemon-o"></i> - .fa-lemon-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-level-down"></i> - .fa-level-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-level-up"></i> - .fa-level-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-life-ring"></i> - .fa-life-ring </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-lightbulb-o"></i> - .fa-lightbulb-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-line-chart"></i> - .fa-line-chart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-link"></i> - .fa-link </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-linkedin"></i> - .fa-linkedin </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-linkedin-square"></i> - .fa-linkedin-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-linux"></i> - .fa-linux </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-list"></i> - .fa-list </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-list-alt"></i> - .fa-list-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-list-ol"></i> - .fa-list-ol </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-list-ul"></i> - .fa-list-ul </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-location-arrow"></i> - .fa-location-arrow </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-lock"></i> - .fa-lock </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-long-arrow-down"></i> - .fa-long-arrow-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-long-arrow-left"></i> - .fa-long-arrow-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-long-arrow-right"></i> - .fa-long-arrow-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-long-arrow-up"></i> - .fa-long-arrow-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-magic"></i> - .fa-magic </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-magnet"></i> - .fa-magnet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-male"></i> - .fa-male </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-map"></i> - .fa-map </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-map-marker"></i> - .fa-map-marker </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-map-o"></i> - .fa-map-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-map-pin"></i> - .fa-map-pin </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-map-signs"></i> - .fa-map-signs </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mars"></i> - .fa-mars </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mars-double"></i> - .fa-mars-double </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mars-stroke"></i> - .fa-mars-stroke </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mars-stroke-h"></i> - .fa-mars-stroke-h </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mars-stroke-v"></i> - .fa-mars-stroke-v </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-maxcdn"></i> - .fa-maxcdn </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-meanpath"></i> - .fa-meanpath </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-medium"></i> - .fa-medium </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-medkit"></i> - .fa-medkit </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-meh-o"></i> - .fa-meh-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mercury"></i> - .fa-mercury </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-microphone"></i> - .fa-microphone </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-microphone-slash"></i> - .fa-microphone-slash </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-minus"></i> - .fa-minus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-minus-circle"></i> - .fa-minus-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-minus-square"></i> - .fa-minus-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-minus-square-o"></i> - .fa-minus-square-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mobile"></i> - .fa-mobile </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-money"></i> - .fa-money </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-moon-o"></i> - .fa-moon-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-motorcycle"></i> - .fa-motorcycle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-mouse-pointer"></i> - .fa-mouse-pointer </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-music"></i> - .fa-music </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-neuter"></i> - .fa-neuter </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-newspaper-o"></i> - .fa-newspaper-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-object-group"></i> - .fa-object-group </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-object-ungroup"></i> - .fa-object-ungroup </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-odnoklassniki"></i> - .fa-odnoklassniki </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-odnoklassniki-square"></i> - .fa-odnoklassniki-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-opencart"></i> - .fa-opencart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-openid"></i> - .fa-openid </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-opera"></i> - .fa-opera </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-optin-monster"></i> - .fa-optin-monster </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-outdent"></i> - .fa-outdent </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pagelines"></i> - .fa-pagelines </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-paint-brush"></i> - .fa-paint-brush </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-paper-plane"></i> - .fa-paper-plane </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-paper-plane-o"></i> - .fa-paper-plane-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-paperclip"></i> - .fa-paperclip </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-paragraph"></i> - .fa-paragraph </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pause"></i> - .fa-pause </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-paw"></i> - .fa-paw </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-paypal"></i> - .fa-paypal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pencil"></i> - .fa-pencil </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pencil-square"></i> - .fa-pencil-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pencil-square-o"></i> - .fa-pencil-square-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-phone"></i> - .fa-phone </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-phone-square"></i> - .fa-phone-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-picture-o"></i> - .fa-picture-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pie-chart"></i> - .fa-pie-chart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pied-piper"></i> - .fa-pied-piper </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pied-piper-alt"></i> - .fa-pied-piper-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pinterest"></i> - .fa-pinterest </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pinterest-p"></i> - .fa-pinterest-p </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-pinterest-square"></i> - .fa-pinterest-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-plane"></i> - .fa-plane </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-play"></i> - .fa-play </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-play-circle"></i> - .fa-play-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-play-circle-o"></i> - .fa-play-circle-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-plug"></i> - .fa-plug </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-plus"></i> - .fa-plus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-plus-circle"></i> - .fa-plus-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-plus-square"></i> - .fa-plus-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-plus-square-o"></i> - .fa-plus-square-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-power-off"></i> - .fa-power-off </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-print"></i> - .fa-print </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-puzzle-piece"></i> - .fa-puzzle-piece </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-qq"></i> - .fa-qq </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-qrcode"></i> - .fa-qrcode </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-question"></i> - .fa-question </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-question-circle"></i> - .fa-question-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-quote-left"></i> - .fa-quote-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-quote-right"></i> - .fa-quote-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-random"></i> - .fa-random </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-rebel"></i> - .fa-rebel </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-recycle"></i> - .fa-recycle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-reddit"></i> - .fa-reddit </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-reddit-square"></i> - .fa-reddit-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-refresh"></i> - .fa-refresh </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-registered"></i> - .fa-registered </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-renren"></i> - .fa-renren </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-repeat"></i> - .fa-repeat </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-reply"></i> - .fa-reply </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-reply-all"></i> - .fa-reply-all </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-retweet"></i> - .fa-retweet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-road"></i> - .fa-road </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-rocket"></i> - .fa-rocket </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-rss"></i> - .fa-rss </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-rss-square"></i> - .fa-rss-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-rub"></i> - .fa-rub </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-safari"></i> - .fa-safari </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-scissors"></i> - .fa-scissors </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-search"></i> - .fa-search </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-search-minus"></i> - .fa-search-minus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-search-plus"></i> - .fa-search-plus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sellsy"></i> - .fa-sellsy </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-server"></i> - .fa-server </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-share"></i> - .fa-share </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-share-alt"></i> - .fa-share-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-share-alt-square"></i> - .fa-share-alt-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-share-square"></i> - .fa-share-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-share-square-o"></i> - .fa-share-square-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-shield"></i> - .fa-shield </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ship"></i> - .fa-ship </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-shirtsinbulk"></i> - .fa-shirtsinbulk </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-shopping-cart"></i> - .fa-shopping-cart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sign-in"></i> - .fa-sign-in </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sign-out"></i> - .fa-sign-out </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-signal"></i> - .fa-signal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-simplybuilt"></i> - .fa-simplybuilt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sitemap"></i> - .fa-sitemap </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-skyatlas"></i> - .fa-skyatlas </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-skype"></i> - .fa-skype </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-slack"></i> - .fa-slack </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sliders"></i> - .fa-sliders </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-slideshare"></i> - .fa-slideshare </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-smile-o"></i> - .fa-smile-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort"></i> - .fa-sort </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-alpha-asc"></i> - .fa-sort-alpha-asc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-alpha-desc"></i> - .fa-sort-alpha-desc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-amount-asc"></i> - .fa-sort-amount-asc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-amount-desc"></i> - .fa-sort-amount-desc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-asc"></i> - .fa-sort-asc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-desc"></i> - .fa-sort-desc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-numeric-asc"></i> - .fa-sort-numeric-asc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sort-numeric-desc"></i> - .fa-sort-numeric-desc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-soundcloud"></i> - .fa-soundcloud </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-space-shuttle"></i> - .fa-space-shuttle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-spinner"></i> - .fa-spinner </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-spoon"></i> - .fa-spoon </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-spotify"></i> - .fa-spotify </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-square"></i> - .fa-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-square-o"></i> - .fa-square-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-stack-exchange"></i> - .fa-stack-exchange </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-stack-overflow"></i> - .fa-stack-overflow </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-star"></i> - .fa-star </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-star-half"></i> - .fa-star-half </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-star-half-o"></i> - .fa-star-half-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-star-o"></i> - .fa-star-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-steam"></i> - .fa-steam </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-steam-square"></i> - .fa-steam-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-step-backward"></i> - .fa-step-backward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-step-forward"></i> - .fa-step-forward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-stethoscope"></i> - .fa-stethoscope </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sticky-note"></i> - .fa-sticky-note </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sticky-note-o"></i> - .fa-sticky-note-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-stop"></i> - .fa-stop </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-street-view"></i> - .fa-street-view </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-strikethrough"></i> - .fa-strikethrough </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-stumbleupon"></i> - .fa-stumbleupon </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-stumbleupon-circle"></i> - .fa-stumbleupon-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-subscript"></i> - .fa-subscript </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-subway"></i> - .fa-subway </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-suitcase"></i> - .fa-suitcase </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-sun-o"></i> - .fa-sun-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-superscript"></i> - .fa-superscript </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-table"></i> - .fa-table </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tablet"></i> - .fa-tablet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tachometer"></i> - .fa-tachometer </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tag"></i> - .fa-tag </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tags"></i> - .fa-tags </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tasks"></i> - .fa-tasks </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-taxi"></i> - .fa-taxi </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-television"></i> - .fa-television </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tencent-weibo"></i> - .fa-tencent-weibo </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-terminal"></i> - .fa-terminal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-text-height"></i> - .fa-text-height </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-text-width"></i> - .fa-text-width </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-th"></i> - .fa-th </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-th-large"></i> - .fa-th-large </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-th-list"></i> - .fa-th-list </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-thumb-tack"></i> - .fa-thumb-tack </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-thumbs-down"></i> - .fa-thumbs-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-thumbs-o-down"></i> - .fa-thumbs-o-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-thumbs-o-up"></i> - .fa-thumbs-o-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-thumbs-up"></i> - .fa-thumbs-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-ticket"></i> - .fa-ticket </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-times"></i> - .fa-times </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-times-circle"></i> - .fa-times-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-times-circle-o"></i> - .fa-times-circle-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tint"></i> - .fa-tint </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-toggle-off"></i> - .fa-toggle-off </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-toggle-on"></i> - .fa-toggle-on </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-trademark"></i> - .fa-trademark </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-train"></i> - .fa-train </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-transgender"></i> - .fa-transgender </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-transgender-alt"></i> - .fa-transgender-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-trash"></i> - .fa-trash </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-trash-o"></i> - .fa-trash-o </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tree"></i> - .fa-tree </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-trello"></i> - .fa-trello </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tripadvisor"></i> - .fa-tripadvisor </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-trophy"></i> - .fa-trophy </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-truck"></i> - .fa-truck </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-try"></i> - .fa-try </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tty"></i> - .fa-tty </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tumblr"></i> - .fa-tumblr </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-tumblr-square"></i> - .fa-tumblr-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-twitch"></i> - .fa-twitch </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-twitter"></i> - .fa-twitter </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-twitter-square"></i> - .fa-twitter-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-umbrella"></i> - .fa-umbrella </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-underline"></i> - .fa-underline </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-undo"></i> - .fa-undo </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-university"></i> - .fa-university </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-unlock"></i> - .fa-unlock </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-unlock-alt"></i> - .fa-unlock-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-upload"></i> - .fa-upload </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-usd"></i> - .fa-usd </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-user"></i> - .fa-user </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-user-md"></i> - .fa-user-md </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-user-plus"></i> - .fa-user-plus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-user-secret"></i> - .fa-user-secret </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-user-times"></i> - .fa-user-times </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-users"></i> - .fa-users </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-venus"></i> - .fa-venus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-venus-double"></i> - .fa-venus-double </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-venus-mars"></i> - .fa-venus-mars </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-viacoin"></i> - .fa-viacoin </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-video-camera"></i> - .fa-video-camera </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-vimeo"></i> - .fa-vimeo </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-vimeo-square"></i> - .fa-vimeo-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-vine"></i> - .fa-vine </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-vk"></i> - .fa-vk </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-volume-down"></i> - .fa-volume-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-volume-off"></i> - .fa-volume-off </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-volume-up"></i> - .fa-volume-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-weibo"></i> - .fa-weibo </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-weixin"></i> - .fa-weixin </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-whatsapp"></i> - .fa-whatsapp </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-wheelchair"></i> - .fa-wheelchair </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-wifi"></i> - .fa-wifi </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-wikipedia-w"></i> - .fa-wikipedia-w </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-windows"></i> - .fa-windows </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-wordpress"></i> - .fa-wordpress </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-wrench"></i> - .fa-wrench </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-xing"></i> - .fa-xing </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-xing-square"></i> - .fa-xing-square </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-y-combinator"></i> - .fa-y-combinator </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-yahoo"></i> - .fa-yahoo </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-yelp"></i> - .fa-yelp </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-youtube"></i> - .fa-youtube </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-youtube-play"></i> - .fa-youtube-play </li>
            <li class="list-group-item col-sm-4 col-md-3"> <i class="fa fa-fw fa-youtube-square"></i> - .fa-youtube-square </li>
          </ul>
          <hr>
          <!--Icon Set: Glyphicon Halflings-->
          <h4>
            Glyphicon Halflings 
            <small>(262 icons)</small>
          </h4>
          <ul class="list-group row-fluid clearfix">
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-adjust" aria-hidden="true"></span> - .glyphicon-adjust </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-alert" aria-hidden="true"></span> - .glyphicon-alert </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-align-center" aria-hidden="true"></span> - .glyphicon-align-center </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span> - .glyphicon-align-justify </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span> - .glyphicon-align-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-align-right" aria-hidden="true"></span> - .glyphicon-align-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-apple" aria-hidden="true"></span> - .glyphicon-apple </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span> - .glyphicon-arrow-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> - .glyphicon-arrow-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span> - .glyphicon-arrow-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span> - .glyphicon-arrow-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span> - .glyphicon-asterisk </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-baby-formula" aria-hidden="true"></span> - .glyphicon-baby-formula </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-backward" aria-hidden="true"></span> - .glyphicon-backward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span> - .glyphicon-ban-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-barcode" aria-hidden="true"></span> - .glyphicon-barcode </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-bed" aria-hidden="true"></span> - .glyphicon-bed </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-bell" aria-hidden="true"></span> - .glyphicon-bell </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-bishop" aria-hidden="true"></span> - .glyphicon-bishop </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-bitcoin" aria-hidden="true"></span> - .glyphicon-bitcoin </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span> - .glyphicon-blackboard </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-bold" aria-hidden="true"></span> - .glyphicon-bold </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-book" aria-hidden="true"></span> - .glyphicon-book </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span> - .glyphicon-bookmark </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> - .glyphicon-briefcase </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-btc" aria-hidden="true"></span> - .glyphicon-btc </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-bullhorn" aria-hidden="true"></span> - .glyphicon-bullhorn </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> - .glyphicon-calendar </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-camera" aria-hidden="true"></span> - .glyphicon-camera </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-cd" aria-hidden="true"></span> - .glyphicon-cd </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-certificate" aria-hidden="true"></span> - .glyphicon-certificate </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-check" aria-hidden="true"></span> - .glyphicon-check </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span> - .glyphicon-chevron-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> - .glyphicon-chevron-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> - .glyphicon-chevron-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span> - .glyphicon-chevron-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-circle-arrow-down" aria-hidden="true"></span> - .glyphicon-circle-arrow-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-circle-arrow-left" aria-hidden="true"></span> - .glyphicon-circle-arrow-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span> - .glyphicon-circle-arrow-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-circle-arrow-up" aria-hidden="true"></span> - .glyphicon-circle-arrow-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-cloud" aria-hidden="true"></span> - .glyphicon-cloud </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-cloud-download" aria-hidden="true"></span> - .glyphicon-cloud-download </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-cloud-upload" aria-hidden="true"></span> - .glyphicon-cloud-upload </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> - .glyphicon-cog </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-collapse-down" aria-hidden="true"></span> - .glyphicon-collapse-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-collapse-up" aria-hidden="true"></span> - .glyphicon-collapse-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-comment" aria-hidden="true"></span> - .glyphicon-comment </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-compressed" aria-hidden="true"></span> - .glyphicon-compressed </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-console" aria-hidden="true"></span> - .glyphicon-console </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-copy" aria-hidden="true"></span> - .glyphicon-copy </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-copyright-mark" aria-hidden="true"></span> - .glyphicon-copyright-mark </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> - .glyphicon-credit-card </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span> - .glyphicon-cutlery </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-dashboard" aria-hidden="true"></span> - .glyphicon-dashboard </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-download" aria-hidden="true"></span> - .glyphicon-download </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> - .glyphicon-download-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span> - .glyphicon-duplicate </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> - .glyphicon-earphone </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> - .glyphicon-edit </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-education" aria-hidden="true"></span> - .glyphicon-education </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-eject" aria-hidden="true"></span> - .glyphicon-eject </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> - .glyphicon-envelope </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-equalizer" aria-hidden="true"></span> - .glyphicon-equalizer </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-erase" aria-hidden="true"></span> - .glyphicon-erase </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-eur" aria-hidden="true"></span> - .glyphicon-eur </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span> - .glyphicon-exclamation-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-expand" aria-hidden="true"></span> - .glyphicon-expand </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-export" aria-hidden="true"></span> - .glyphicon-export </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span> - .glyphicon-eye-close </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> - .glyphicon-eye-open </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span> - .glyphicon-facetime-video </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-fast-backward" aria-hidden="true"></span> - .glyphicon-fast-backward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-fast-forward" aria-hidden="true"></span> - .glyphicon-fast-forward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-file" aria-hidden="true"></span> - .glyphicon-file </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span> - .glyphicon-film </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-filter" aria-hidden="true"></span> - .glyphicon-filter </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-fire" aria-hidden="true"></span> - .glyphicon-fire </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-flag" aria-hidden="true"></span> - .glyphicon-flag </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-flash" aria-hidden="true"></span> - .glyphicon-flash </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> - .glyphicon-floppy-disk </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-floppy-open" aria-hidden="true"></span> - .glyphicon-floppy-open </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-floppy-remove" aria-hidden="true"></span> - .glyphicon-floppy-remove </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> - .glyphicon-floppy-save </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-floppy-saved" aria-hidden="true"></span> - .glyphicon-floppy-saved </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span> - .glyphicon-folder-close </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> - .glyphicon-folder-open </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-font" aria-hidden="true"></span> - .glyphicon-font </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-forward" aria-hidden="true"></span> - .glyphicon-forward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span> - .glyphicon-fullscreen </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-gbp" aria-hidden="true"></span> - .glyphicon-gbp </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-gift" aria-hidden="true"></span> - .glyphicon-gift </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-glass" aria-hidden="true"></span> - .glyphicon-glass </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-globe" aria-hidden="true"></span> - .glyphicon-globe </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-grain" aria-hidden="true"></span> - .glyphicon-grain </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-hand-down" aria-hidden="true"></span> - .glyphicon-hand-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-hand-left" aria-hidden="true"></span> - .glyphicon-hand-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span> - .glyphicon-hand-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-hand-up" aria-hidden="true"></span> - .glyphicon-hand-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-hd-video" aria-hidden="true"></span> - .glyphicon-hd-video </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-hdd" aria-hidden="true"></span> - .glyphicon-hdd </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-header" aria-hidden="true"></span> - .glyphicon-header </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-headphones" aria-hidden="true"></span> - .glyphicon-headphones </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> - .glyphicon-heart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span> - .glyphicon-heart-empty </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-home" aria-hidden="true"></span> - .glyphicon-home </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-hourglass" aria-hidden="true"></span> - .glyphicon-hourglass </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-ice-lolly" aria-hidden="true"></span> - .glyphicon-ice-lolly </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-ice-lolly-tasted" aria-hidden="true"></span> - .glyphicon-ice-lolly-tasted </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-import" aria-hidden="true"></span> - .glyphicon-import </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-inbox" aria-hidden="true"></span> - .glyphicon-inbox </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-indent-left" aria-hidden="true"></span> - .glyphicon-indent-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-indent-right" aria-hidden="true"></span> - .glyphicon-indent-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> - .glyphicon-info-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-italic" aria-hidden="true"></span> - .glyphicon-italic </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-jpy" aria-hidden="true"></span> - .glyphicon-jpy </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-king" aria-hidden="true"></span> - .glyphicon-king </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-knight" aria-hidden="true"></span> - .glyphicon-knight </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-lamp" aria-hidden="true"></span> - .glyphicon-lamp </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-leaf" aria-hidden="true"></span> - .glyphicon-leaf </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-level-up" aria-hidden="true"></span> - .glyphicon-level-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-link" aria-hidden="true"></span> - .glyphicon-link </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-list" aria-hidden="true"></span> - .glyphicon-list </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> - .glyphicon-list-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-lock" aria-hidden="true"></span> - .glyphicon-lock </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> - .glyphicon-log-in </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> - .glyphicon-log-out </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-magnet" aria-hidden="true"></span> - .glyphicon-magnet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> - .glyphicon-map-marker </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span> - .glyphicon-menu-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span> - .glyphicon-menu-hamburger </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span> - .glyphicon-menu-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span> - .glyphicon-menu-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-menu-up" aria-hidden="true"></span> - .glyphicon-menu-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> - .glyphicon-minus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span> - .glyphicon-minus-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-modal-window" aria-hidden="true"></span> - .glyphicon-modal-window </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-move" aria-hidden="true"></span> - .glyphicon-move </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-music" aria-hidden="true"></span> - .glyphicon-music </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-new-window" aria-hidden="true"></span> - .glyphicon-new-window </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-object-align-bottom" aria-hidden="true"></span> - .glyphicon-object-align-bottom </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-object-align-horizontal" aria-hidden="true"></span> - .glyphicon-object-align-horizontal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-object-align-left" aria-hidden="true"></span> - .glyphicon-object-align-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-object-align-right" aria-hidden="true"></span> - .glyphicon-object-align-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-object-align-top" aria-hidden="true"></span> - .glyphicon-object-align-top </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-object-align-vertical" aria-hidden="true"></span> - .glyphicon-object-align-vertical </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-off" aria-hidden="true"></span> - .glyphicon-off </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-oil" aria-hidden="true"></span> - .glyphicon-oil </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> - .glyphicon-ok </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span> - .glyphicon-ok-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span> - .glyphicon-ok-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-open" aria-hidden="true"></span> - .glyphicon-open </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-open-file" aria-hidden="true"></span> - .glyphicon-open-file </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span> - .glyphicon-option-horizontal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-option-vertical" aria-hidden="true"></span> - .glyphicon-option-vertical </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span> - .glyphicon-paperclip </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-paste" aria-hidden="true"></span> - .glyphicon-paste </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-pause" aria-hidden="true"></span> - .glyphicon-pause </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-pawn" aria-hidden="true"></span> - .glyphicon-pawn </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> - .glyphicon-pencil </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-phone" aria-hidden="true"></span> - .glyphicon-phone </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> - .glyphicon-phone-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-picture" aria-hidden="true"></span> - .glyphicon-picture </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span> - .glyphicon-piggy-bank </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-plane" aria-hidden="true"></span> - .glyphicon-plane </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-play" aria-hidden="true"></span> - .glyphicon-play </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span> - .glyphicon-play-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> - .glyphicon-plus </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> - .glyphicon-plus-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-print" aria-hidden="true"></span> - .glyphicon-print </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-pushpin" aria-hidden="true"></span> - .glyphicon-pushpin </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-qrcode" aria-hidden="true"></span> - .glyphicon-qrcode </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-queen" aria-hidden="true"></span> - .glyphicon-queen </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span> - .glyphicon-question-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-random" aria-hidden="true"></span> - .glyphicon-random </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-record" aria-hidden="true"></span> - .glyphicon-record </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span> - .glyphicon-refresh </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span> - .glyphicon-registration-mark </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> - .glyphicon-remove </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span> - .glyphicon-remove-circle </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span> - .glyphicon-remove-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span> - .glyphicon-repeat </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-resize-full" aria-hidden="true"></span> - .glyphicon-resize-full </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-resize-horizontal" aria-hidden="true"></span> - .glyphicon-resize-horizontal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-resize-small" aria-hidden="true"></span> - .glyphicon-resize-small </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-resize-vertical" aria-hidden="true"></span> - .glyphicon-resize-vertical </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-retweet" aria-hidden="true"></span> - .glyphicon-retweet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-road" aria-hidden="true"></span> - .glyphicon-road </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-rub" aria-hidden="true"></span> - .glyphicon-rub </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-ruble" aria-hidden="true"></span> - .glyphicon-ruble </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-save" aria-hidden="true"></span> - .glyphicon-save </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-save-file" aria-hidden="true"></span> - .glyphicon-save-file </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-saved" aria-hidden="true"></span> - .glyphicon-saved </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-scale" aria-hidden="true"></span> - .glyphicon-scale </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-scissors" aria-hidden="true"></span> - .glyphicon-scissors </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-screenshot" aria-hidden="true"></span> - .glyphicon-screenshot </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sd-video" aria-hidden="true"></span> - .glyphicon-sd-video </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-search" aria-hidden="true"></span> - .glyphicon-search </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-send" aria-hidden="true"></span> - .glyphicon-send </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-share" aria-hidden="true"></span> - .glyphicon-share </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> - .glyphicon-share-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> - .glyphicon-shopping-cart </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-signal" aria-hidden="true"></span> - .glyphicon-signal </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sort" aria-hidden="true"></span> - .glyphicon-sort </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sort-by-alphabet" aria-hidden="true"></span> - .glyphicon-sort-by-alphabet </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sort-by-alphabet-alt" aria-hidden="true"></span> - .glyphicon-sort-by-alphabet-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sort-by-attributes" aria-hidden="true"></span> - .glyphicon-sort-by-attributes </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true"></span> - .glyphicon-sort-by-attributes-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sort-by-order" aria-hidden="true"></span> - .glyphicon-sort-by-order </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sort-by-order-alt" aria-hidden="true"></span> - .glyphicon-sort-by-order-alt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sound-5-1" aria-hidden="true"></span> - .glyphicon-sound-5-1 </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sound-6-1" aria-hidden="true"></span> - .glyphicon-sound-6-1 </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sound-7-1" aria-hidden="true"></span> - .glyphicon-sound-7-1 </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sound-dolby" aria-hidden="true"></span> - .glyphicon-sound-dolby </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sound-stereo" aria-hidden="true"></span> - .glyphicon-sound-stereo </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> - .glyphicon-star </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span> - .glyphicon-star-empty </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-stats" aria-hidden="true"></span> - .glyphicon-stats </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span> - .glyphicon-step-backward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-step-forward" aria-hidden="true"></span> - .glyphicon-step-forward </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-stop" aria-hidden="true"></span> - .glyphicon-stop </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-subscript" aria-hidden="true"></span> - .glyphicon-subscript </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-subtitles" aria-hidden="true"></span> - .glyphicon-subtitles </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span> - .glyphicon-sunglasses </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-superscript" aria-hidden="true"></span> - .glyphicon-superscript </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> - .glyphicon-tag </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tags" aria-hidden="true"></span> - .glyphicon-tags </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> - .glyphicon-tasks </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tent" aria-hidden="true"></span> - .glyphicon-tent </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-text-background" aria-hidden="true"></span> - .glyphicon-text-background </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-text-color" aria-hidden="true"></span> - .glyphicon-text-color </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-text-height" aria-hidden="true"></span> - .glyphicon-text-height </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-text-size" aria-hidden="true"></span> - .glyphicon-text-size </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-text-width" aria-hidden="true"></span> - .glyphicon-text-width </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-th" aria-hidden="true"></span> - .glyphicon-th </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span> - .glyphicon-th-large </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> - .glyphicon-th-list </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span> - .glyphicon-thumbs-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> - .glyphicon-thumbs-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-time" aria-hidden="true"></span> - .glyphicon-time </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tint" aria-hidden="true"></span> - .glyphicon-tint </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tower" aria-hidden="true"></span> - .glyphicon-tower </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-transfer" aria-hidden="true"></span> - .glyphicon-transfer </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> - .glyphicon-trash </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span> - .glyphicon-tree-conifer </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-tree-deciduous" aria-hidden="true"></span> - .glyphicon-tree-deciduous </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span> - .glyphicon-triangle-bottom </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-triangle-left" aria-hidden="true"></span> - .glyphicon-triangle-left </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span> - .glyphicon-triangle-right </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-triangle-top" aria-hidden="true"></span> - .glyphicon-triangle-top </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span> - .glyphicon-unchecked </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-upload" aria-hidden="true"></span> - .glyphicon-upload </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-usd" aria-hidden="true"></span> - .glyphicon-usd </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> - .glyphicon-user </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-volume-down" aria-hidden="true"></span> - .glyphicon-volume-down </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-volume-off" aria-hidden="true"></span> - .glyphicon-volume-off </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span> - .glyphicon-volume-up </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-warning-sign" aria-hidden="true"></span> - .glyphicon-warning-sign </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span> - .glyphicon-wrench </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-xbt" aria-hidden="true"></span> - .glyphicon-xbt </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-yen" aria-hidden="true"></span> - .glyphicon-yen </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span> - .glyphicon-zoom-in </li>
            <li class="list-group-item col-sm-4 col-md-3"> <span class="glyphicon glyphicon-zoom-out" aria-hidden="true"></span> - .glyphicon-zoom-out </li>
          </ul>
        </div>
        <!--Tools-->
        <div class="block">
          <h3 class="block-title text-weight-strong text-uppercase">
            Useful tools
          </h3>
          <h4 class="block-title">
            Horizontal Tabs
          </h4>
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1" data-toggle="tab">Tab 1</a></li>
            <li><a href="#tab2" data-toggle="tab">Tab 2</a></li>
            <li><a href="#tab3" data-toggle="tab">Tab 3</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane fade in active" id="tab1">
              <p>Dignissim tincidunt mattis lorem, sagittis nisi, amet ut pulvinar lectus cursus ac! Enim turpis odio dis. Non ut vel, nisi dapibus? Velit augue tortor, ut ac ac nec tortor nec, mauris massa.</p>
            </div>
            <div class="tab-pane fade" id="tab2">
              <p>Aliquet risus, penatibus, ac integer ultricies ultricies elementum augue proin habitasse placerat. Nunc habitasse duis, elementum, porttitor porta? Purus, ac odio. Habitasse, egestas vut.</p>
            </div>
            <div class="tab-pane fade" id="tab3">
              <p>Turpis elit, egestas nec etiam! Porta parturient amet! Eros aenean sit lacus sagittis massa? Massa a nunc! Nisi vut! Lundium, dictumst, nunc enim, natoque, cras nec, dictumst et rhoncus!</p>
            </div>
          </div>
          <hr>
          <h4 class="block-title">
            Vertical Tabs
          </h4>
          <div class="row">
            <div class="col-xs-3">
              <ul class="nav nav-tabs nav-tabs-left">
                <li class="active"><a href="#vtab1" data-toggle="tab">Tab 1</a></li>
                <li><a href="#vtab2" data-toggle="tab">Tab 2</a></li>
                <li><a href="#vtab3" data-toggle="tab">Tab 3</a></li>
              </ul>
            </div>
            <div class="col-xs-9">
              <div class="tab-content">
                <div class="tab-pane fade in active" id="vtab1">
                  <p>Dignissim tincidunt mattis lorem, sagittis nisi, amet ut pulvinar lectus cursus ac! Enim turpis odio dis. Non ut vel, nisi dapibus? Velit augue tortor, ut ac ac nec tortor nec, mauris massa.</p>
                </div>
                <div class="tab-pane fade" id="vtab2">
                  <p>Aliquet risus, penatibus, ac integer ultricies ultricies elementum augue proin habitasse placerat. Nunc habitasse duis, elementum, porttitor porta? Purus, ac odio. Habitasse, egestas vut.</p>
                </div>
                <div class="tab-pane fade" id="vtab3">
                  <p>Turpis elit, egestas nec etiam! Porta parturient amet! Eros aenean sit lacus sagittis massa? Massa a nunc! Nisi vut! Lundium, dictumst, nunc enim, natoque, cras nec, dictumst et rhoncus!</p>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <h4 class="block-title">
            Carousel Slider
          </h4>
          <div class="item-carousel" data-toggle="owlcarousel" data-owlcarousel-settings='{"items":4, "pagination":false, "navigation":true, "itemsScaleUp":true}'>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project1.png" alt="Project 1 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 1</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 1</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project2.png" alt="Project 2 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 2</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 2</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project3.png" alt="Project 3 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 3</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 3</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project4.png" alt="Project 4 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 4</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 4</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project5.png" alt="Project 5 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 5</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 5</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project6.png" alt="Project 6 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 6</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 6</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project7.png" alt="Project 7 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 7</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 7</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
            <div class="item">
              <a href="#" class="overlay-wrapper">
                <img src="img/showcase/project8.png" alt="Project 8 image" class="img-responsive underlay">
                <span class="overlay">
                  <span class="overlay-content"> <span class="h4">Project 8</span> </span>
                </span>
              </a>
              <div class="item-details bg-noise">
                <h4 class="item-title">
                  <a href="#">Project 8</a>
                </h4>
                <a href="#" class="btn btn-more"><i class="fa fa-plus"></i>Read more</a>
              </div>
            </div>
          </div>
          <hr>
          <h4 class="block-title">
            Tool Tip
          </h4>
          <p>Tooltip can be really useful, maybe <a href="#" data-toggle="tooltip" data-placement="top" title="Did that help?"> on top</a>, or <a href="#" data-toggle="tooltip" data-placement="bottom" title="Any good?">below</a> or even <a href="#" data-toggle="tooltip" data-placement="left" title="I like left best">left</a> or <a href="#" data-toggle="tooltip" data-placement="right" title="Right you are!">right</a>. </p>
          <hr>
          <h4 class="block-title">
            Popovers
          </h4>
          <p>Popovers are also really useful to explain something when you have a bit more to say, maybe <a href="#" data-toggle="popover" data-trigger="hover" data-placement="top" data-content="Integer. Tortor enim, phasellus aliquam! Turpis urna egestas et rhoncus elementum habitasse, quis!" title="Did that help?"> on top</a>, or <a href="#" data-toggle="popover" data-trigger="hover" data-placement="bottom" data-content="Integer. Tortor enim, phasellus aliquam!" title="Any good?">below</a> or even <a href="#" data-toggle="popover" data-trigger="hover" data-placement="left" data-content="Integer. Tortor enim, phasellus aliquam!" title="I like left best">left</a> or <a href="#" data-toggle="popover" data-trigger="hover" data-placement="right" data-content="Integer. Tortor enim, phasellus aliquam!" title="Right you are!">right</a>. </p>
          <a tabindex="0" class="btn btn-primary" role="button" data-toggle="popover" data-trigger="focus" title="Click trigger popover" data-content="And here's some amazing content. It's very engaging. Right?">Click trigger popover</a> 
          <hr>
          <h4 class="block-title">
            Counters
          </h4>
          <div class="row">
            <div class="col-md-4">
              <div class="stat">
                <span data-counter-up>1000</span>s
                <small>Happpy Customers</small>
              </div>
            </div>
            <div class="col-md-4">
              <div class="stat">
                <span data-counter-up>163</span>+
                <small>GB Transfered</small>
              </div>
            </div>
            <div class="col-md-4">
              <div class="stat">
                <span data-counter-up>214</span>
                <small>Bugs Fixed</small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Call out block -->
    <div class="block block-pd-sm block-bg-primary">
      <div class="container">
        <!--Content Below Region-->
        <div class="row">
          <h3 class="col-md-4">
            Some of our Clients
          </h3>
          <div class="col-md-8">
            <div class="row">
              <!--Client logos should be within a 120px wide by 60px height image canvas-->
              <div class="col-xs-6 col-md-2">
                <a href="https://bootstrapmade.com" title="Client 1">
                  <img src="img/clients/client1.png" alt="Client 1 logo" class="img-responsive">
                </a>
              </div>
              <div class="col-xs-6 col-md-2">
                <a href="https://bootstrapmade.com" title="Client 2">
                  <img src="img/clients/client2.png" alt="Client 2 logo" class="img-responsive">
                </a>
              </div>
              <div class="col-xs-6 col-md-2">
                <a href="https://bootstrapmade.com" title="Client 3">
                  <img src="img/clients/client3.png" alt="Client 3 logo" class="img-responsive">
                </a>
              </div>
              <div class="col-xs-6 col-md-2">
                <a href="https://bootstrapmade.com" title="Client 4">
                  <img src="img/clients/client4.png" alt="Client 4 logo" class="img-responsive">
                </a>
              </div>
              <div class="col-xs-6 col-md-2">
                <a href="https://bootstrapmade.com" title="Client 5">
                  <img src="img/clients/client5.png" alt="Client 5 logo" class="img-responsive">
                </a>
              </div>
              <div class="col-xs-6 col-md-2">
                <a href="https://bootstrapmade.com" title="Client 6">
                  <img src="img/clients/client6.png" alt="Client 6 logo" class="img-responsive">
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- ======== @Region: #footer ======== -->
    <footer id="footer" class="block block-bg-grey-dark" data-block-bg-img="img/bg_footer-map.png" data-stellar-background-ratio="0.4">
      <div class="container">
        <a href="#top" class="scrolltop">Top</a> 
        <div class="row" id="contact">
          
          <div class="col-md-3">
            <address>
              <strong>Flexor Bootstrap Theme Inc</strong>
              <br>
              <i class="fa fa-map-pin fa-fw text-primary"></i> Sunshine House, Sunville. SUN12
              <br>
              <i class="fa fa-phone fa-fw text-primary"></i> 019223 8092344
              <br>
              <i class="fa fa-envelope-o fa-fw text-primary"></i> info@flexorinc.com
              <br>
            </address>
          </div>
          
          <div class="col-md-6">
            <h4 class="text-uppercase">
              Contact Us
            </h4>
            <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                  <div class="form-group">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group">
                    <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                    <div class="validation"></div>
                  </div>
                  <div class="text-center"><button type="submit">Send Message</button></div>
              </form>
            </div>
          </div>
          
          <div class="col-md-3">
            <h4 class="text-uppercase">
              Follow Us On:
            </h4>
            <!--social media icons-->
            <div class="social-media social-media-stacked">
              <!--@todo: replace with company social media details-->
              <a href="#"><i class="fa fa-twitter fa-fw"></i> Twitter</a>
              <a href="#"><i class="fa fa-facebook fa-fw"></i> Facebook</a>
              <a href="#"><i class="fa fa-linkedin fa-fw"></i> LinkedIn</a>
              <a href="#"><i class="fa fa-google-plus fa-fw"></i> Google+</a>
            </div>
          </div>
          
        </div>
        <div class="row subfooter">
          <!--@todo: replace with company copyright details-->
          <div class="col-md-7">
            <p>Copyright © Flexor Theme</p>
            <div class="credits">
              <!-- 
                All the links in the footer should remain intact. 
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Flexor
              -->
              <a href="https://bootstrapmade.com/">Free Bootstrap Themes</a> by BootstrapMade.com
            </div>
          </div>
          <div class="col-md-5">
            <ul class="list-inline pull-right">
              <li><a href="#">Terms</a></li>
              <li><a href="#">Privacy</a></li>
              <li><a href="#">Contact Us</a></li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
    
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
    <script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      ga('create', 'UA-55234356-4', 'auto');
      ga('send', 'pageview');
    </script>
  </body>
</html>
