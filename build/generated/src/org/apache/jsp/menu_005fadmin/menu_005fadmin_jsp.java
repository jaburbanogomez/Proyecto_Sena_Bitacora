package org.apache.jsp.menu_005fadmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import conexion_bd.Usuario_CRUD;

public final class menu_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

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

      out.write(" \n");
      out.write("<head>\n");
      out.write("    <title>Inicio</title>\n");
      out.write("    <script src=\"js/shortcut.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script>\n");
      out.write("        function rotar_imagen() {\n");
      out.write("            var tiempo = 5000;//tiempo en milisegundos\n");
      out.write("            var arrImagenes = ['images/1.jpg', 'images/2.jpg', 'images/3.jpg', 'images/4.jpg', 'images/5.jpg'];\n");
      out.write("            _img = document.getElementById('rotativo');\n");
      out.write("            //cargar la 1er imagen\n");
      out.write("            _img.src = arrImagenes[0];\n");
      out.write("            var i = 1;\n");
      out.write("            setInterval(function () {\n");
      out.write("                _img.src = arrImagenes[i];\n");
      out.write("                i = (i === arrImagenes.length - 1) ? 0 : (i + 1);\n");
      out.write("            }, tiempo);\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <script src=\"js/shortcut.js\" type=\"text/javascript\"></script>\n");
      out.write("    <link href=\"css/fontello.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/sweet-alert.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" charset=\"UTF-8\">\n");
      out.write("    <link rel=\"Shortcut Icon\" type=\"image/x-icon\" href=\"assets/logo_bitacora/logo_bitacora.png\" charset=\"UTF-8\"/>\n");
      out.write("    <script src=\"js/sweet-alert.min.js\" charset=\"UTF-8\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/sweet-alert.css\" charset=\"UTF-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/material-design-iconic-font.min.css\" charset=\"UTF-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/normalize.css\" charset=\"UTF-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" charset=\"UTF-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/jquery.mCustomScrollbar.css\" charset=\"UTF-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\" charset=\"UTF-8\">\n");
      out.write("    <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js\" charset=\"UTF-8\"></script>\n");
      out.write("    <script>window.jQuery || document.write('<script src=\"js/jquery-1.11.2.min.js\"><\\/script>')</script>\n");
      out.write("    <script src=\"js/modernizr.js\" charset=\"UTF-8\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\" charset=\"UTF-8\"></script>\n");
      out.write("    <script src=\"js/jquery.mCustomScrollbar.concat.min.js\" charset=\"UTF-8\"></script>\n");
      out.write("    <script src=\"js/main.js\" charset=\"UTF-8\"></script>\n");
      out.write("    <link href=\"../bootstrap/assets/table/jquery.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\"/>  \n");
      out.write("    <link href=\"css/buttons.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">   \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("    <!-- scrips fucionalidad de tabla dinamica -->\n");
      out.write("    <script src=\"../bootstrap/assets/table/jquery.dataTables.min.js\"   type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/jquery.dataTables.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/dataTables.buttons.min.js\"  type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/jszip.min.js\"               type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/pdfmake.min.js\"             type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/vfs_fonts.js\"               type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/buttons.html5.min.js\"       type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/buttons.print.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../bootstrap/assets/table/buttons.flash.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        if (top.location !== self.location)\n");
      out.write("            top.location = self.location;\n");
      out.write("    </script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        shortcut.add(\"F12\", function () {\n");
      out.write("        });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("</head>\n");
    Usuario_CRUD ob = new Usuario_CRUD();
    String mo = "";
    mo = ob.mostrarNombreUsuario();
    String rol = "";
    rol = ob.mostrarNombreRol();

      out.write("\n");
      out.write("<body oncontextmenu=\"return false\">\n");
      out.write("    <nav class=\"navbar-user-top full-reset\">    \n");
      out.write("        <img aling=\"center\" class=\"logo_2\" src=\"assets/img/logo_sena2.png\" alt=\"user-picture\"  class=\"img-responsive img-circle center-box\">\n");
      out.write("        <ul class=\"list-unstyled full-reset\">\n");
      out.write("            <li  class=\"tooltips-general exit-system-button\" data-href=\"cerrar_sesion.jsp\" data-placement=\"bottom\" title=\"Salir del sistema\" >\n");
      out.write("                <i class=\"zmdi zmdi-power\"></i>\n");
      out.write("            </li>\n");
      out.write("            <figure>\n");
      out.write("                <img src=\"assets/img/user04.png\" alt=\"user-picture\" class=\"img-responsive img-circle center-box\">\n");
      out.write("            </figure>\n");
      out.write("            <li2 style=\"color:#fff; cursor:default;\">\n");
      out.write("                <div style=\"color:#ffcf00\" FACE=\"impact\" class=\"all-tittles\"> ");
      out.print(rol);
      out.write("</div>\n");
      out.write("                <div style=\"border-top: 2px solid #fc7323\" class=\"all-tittles\">");
      out.print(mo);
      out.write(" </div>\n");
      out.write("            </li2>\n");
      out.write("            <li class=\"mobile-menu-button visible-xs\" style=\"float: left !important;\">\n");
      out.write("                <i class=\"zmdi zmdi-menu\"></i>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("    </nav>\n");
      out.write("    <div class=\"navbar-lateral full-reset\">\n");
      out.write("        <div class=\"visible-xs font-movile-menu mobile-menu-button\"></div>\n");
      out.write("        <div class=\"full-reset container-menu-movile custom-scroll-containers\">\n");
      out.write("            <div class=\"full-reset\" style=\"background: rgba(209,209,209,1);\n");
      out.write("                 background: -moz-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);\n");
      out.write("                 background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(209,209,209,1)), color-stop(21%, rgba(209,209,209,1)), color-stop(42%, rgba(255,255,255,1)), color-stop(55%, rgba(255,255,255,1)), color-stop(78%, rgba(214,214,214,1)), color-stop(100%, rgba(214,214,214,1)));\n");
      out.write("                 background: -webkit-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);\n");
      out.write("                 background: -o-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);\n");
      out.write("                 background: -ms-linear-gradient(top, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);\n");
      out.write("                 background: linear-gradient(to bottom, rgba(209,209,209,1) 0%, rgba(209,209,209,1) 21%, rgba(255,255,255,1) 42%, rgba(255,255,255,1) 55%, rgba(214,214,214,1) 78%, rgba(214,214,214,1) 100%);\n");
      out.write("                 filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d1d1d1', endColorstr='#d6d6d6', GradientType=0 );\">\n");
      out.write("                <figure>  \n");
      out.write("                    <img src=\"assets/logo_bitacora/logo_bitacora.png\" alt=\"Biblioteca\" class=\"img-responsive center-box\" style=\"width:55%;\">\n");
      out.write("                </figure>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"full-reset nav-lateral-list-menu\">\n");
      out.write("                <nav class=\"navbar-user-top1 full-reset\">\n");
      out.write("                </nav>\n");
      out.write("                <ul class=\"list-unstyled\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"menu_admin.jsp\"><i class=\"zmdi fa fa-home zmdi-hc-fw\"></i>&nbsp;&nbsp; INICIO</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div class=\"dropdown-menu-button\">\n");
      out.write("                            <i class=\"zmdi material-icons  zmdi\">library_add</i> &nbsp;&nbsp; REGISTRAR... <i class=\"zmdi zmdi-chevron-down pull-right zmdi-hc-fw\"></i></div>\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li><a href=\"registrar_regionales.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Regionales</a></li>\n");
      out.write("                            <li><a href=\"registrar_centros.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Centros</a></li>\n");
      out.write("                            <li><a href=\"registrar_areas.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Areas</a></li>\n");
      out.write("                            <li><a href=\"registrar_titulaciones.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Titulaciones</a></li>\n");
      out.write("                            <li><a href=\"registrar_fichas.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Fichas</a></li>\n");
      out.write("                            <li><a href=\"registrar_cordinador.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Cordinador</a></li>\n");
      out.write("                            <li><a href=\"registrar_admin_area.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Admin Area</a></li>\n");
      out.write("                            <li><a href=\"registrar_instructor.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Instructor</a></li>\n");
      out.write("                            <li><a href=\"Registrar_Aprendices.jsp\"><i class=\"zmdi material-icons zmdi-hc-fw\">add_circle</i>Registrar Aprendices</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>   \n");
      out.write("                    <li>\n");
      out.write("                        <div class=\"dropdown-menu-button\"><i class=\"zmdi fa fa-upload zmdi-hc-fw\"></i>&nbsp;&nbsp; SUBIR ... <i class=\"zmdi zmdi-chevron-down pull-right zmdi-hc-fw\"></i></div>\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li><a href=\"Subir_Instructores.jsp\"><i class=\"zmdi fa fa-arrow-circle-o-up zmdi-hc-fw\"></i>Instructores</a></li>\n");
      out.write("                            <li><a href=\"Subir_Aprendices.jsp\"><i class=\"zmdi fa fa-arrow-circle-o-up zmdi-hc-fw\"></i>Aprendices</a></li>                            \n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div class=\"dropdown-menu-button\"><i class=\"zmdi fa fa-check-square-o zmdi-hc-fw\"></i>&nbsp;&nbsp; ACTUALIZAR ... <i class=\"zmdi zmdi-chevron-down pull-right zmdi-hc-fw\"></i></div>\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li><a href=\"Tabla_Regional.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Regionales</a></li>    \n");
      out.write("                            <li><a href=\"Tabla_Centro.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Centros</a></li>  \n");
      out.write("                            <li><a href=\"Tabla_Area.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Areas</a></li>  \n");
      out.write("                            <li><a href=\"Tabla_Titulacion.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Titulaciones</a></li>  \n");
      out.write("                            <li><a href=\"Tabla_Ficha.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Fichas</a></li>  \n");
      out.write("                            <li><a href=\"Tabla_cordinador.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Cordinador</a></li>  \n");
      out.write("                            <li><a href=\"Tabla_admin_area.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Admin Area</a></li>  \n");
      out.write("                            <li><a href=\"Actualizar_Instructor.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Instructores</a></li>  \n");
      out.write("                            <li><a href=\"Actualizar_Aprendices.jsp\"><i class=\"zmdi fa fa-refresh zmdi-hc-fw\"></i>Actualizar Aprendices</a></li>  \n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"content-page-container full-reset custom-scroll-containers\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"container-flat-form1\">\n");
      out.write("                <div class=\"title-flat-form1 title-flat-blue\">Bienvenido a la Bitacora</div>\n");
      out.write("                <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                    <!-- Indicators -->\n");
      out.write("                    <ol class=\"carousel-indicators\">\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("                    </ol>\n");
      out.write("                    <!-- Wrapper for slides -->\n");
      out.write("                    <div class=\"carousel-inner\">\n");
      out.write("                        <div class=\"item active\"> \n");
      out.write("                            <a target=\"_blank\" href=\"http://oferta.senasofiaplus.edu.co/sofia-oferta/\">\n");
      out.write("                                <img src=\"images/sofia_plus.jpg\" style=\"width:100%;\">\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"item\">   \n");
      out.write("                            <a target=\"_blank\" href=\"https://senaintro.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_547_1\">\n");
      out.write("                                <img src=\"images/blackboard.png\" style=\"width:100%;\" alt=\"\"/>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <a target=\"_blank\" href=\"http://caprendizaje.sena.edu.co/SGVA_Diseno/pag/login.aspx\">\n");
      out.write("                                <img src=\"images/sgva.png\" style=\"width:100%;\" alt=\"\"/>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <a target=\"_blank\" href=\"http://centroagropecuarioregionalcau.blogspot.com.co/\">\n");
      out.write("                                <img src=\"images/blog-sena.png\" style=\"width:100%;\" alt=\"\"/>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Left and right controls -->\n");
      out.write("                    <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\n");
      out.write("                        <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("                        <span class=\"sr-only\">Previous</span>\n");
      out.write("                    </a>\n");
      out.write("                    <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\n");
      out.write("                        <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                        <span class=\"sr-only\">Next</span>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </div>           \n");
      out.write("        </div>    \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "pie_pagina.jsp", out, false);
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
