package org.apache.jsp.INDEX;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.http.HttpSession;
import conexion_bd.Usuario_CRUD;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <script src=\"js/shortcut.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"lib/bootstrap/css/ocultar_clave.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- backgraund -->\n");
      out.write("        <link href=\"fondos/css/demo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"fondos/css/style3.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"fondos/js/modernizr.custom.86080.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- backgraund -->\n");
      out.write("        <link href=\"lib/bootstrap/css/ocultar_clave.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/ihover.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/ihover.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- imagenes desarrolladores -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Inicio Sesion</title>\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("        <meta content=\"\" name=\"description\">    \n");
      out.write("        <!-- Fav and touch icons -->\n");
      out.write("        <link rel=\"Shortcut Icon\" type=\"image/x-icon\" href=\"logo_bitacora/logo_bitacora.png\" charset=\"UTF-8\"/>\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"img/icons/114x114.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"img/icons/72x72.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"img/icons/default.png\">\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900\" rel=\"stylesheet\">\n");
      out.write("        <!-- Bootstrap CSS File -->\n");
      out.write("        <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Libraries CSS Files -->\n");
      out.write("        <link href=\"lib/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/owl.theme.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/owl.transitions.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Main Stylesheet File -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <!--Your custom colour override - predefined colours are: colour-blue.css, colour-green.css, colour-lavander.css, orange is default-->\n");
      out.write("        <link href=\"#\" id=\"colour-scheme\" rel=\"stylesheet\">\n");
      out.write("        <!-- =======================================================\n");
      out.write("          Theme Name: Flexor\n");
      out.write("          Theme URL: https://bootstrapmade.com/flexor-free-multipurpose-bootstrap-template/\n");
      out.write("          Author: BootstrapMade.com\n");
      out.write("          Author URL: https://bootstrapmade.com\n");
      out.write("        ======================================================= -->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function validarCampos() {\n");
      out.write("                var usuario = document.getElementById(\"usuario\").value;\n");
      out.write("                var clave = document.getElementById(\"clave\").value;\n");
      out.write("                if (usuario === \"\" && clave === \"\") {\n");
      out.write("                    document.getElementById(\"mensajeScript\").innerHTML = \"DEBE INGRESAR USUARIO Y CLAVE \";\n");
      out.write("                } else if (usuario === \"\") {\n");
      out.write("                    document.getElementById(\"mensajeScript\").innerHTML = \"DEBE INGRESAR NUMERO DE DOCUMENTO\";\n");
      out.write("                } else if (clave === \"\") {\n");
      out.write("                    document.getElementById(\"mensajeScript\").innerHTML = \"DEBE INGRESAR SU CLAVE \";\n");
      out.write("                    return false;\n");
      out.write("                } else {\n");
      out.write("                    enviardate();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function limpiar() {\n");
      out.write("                document.getElementById(\"mensajeScript\").innerHTML = \"\";\n");
      out.write("            }\n");
      out.write("            function enviardate()\n");
      out.write("            {\n");
      out.write("                var submitBtn = document.getElementById('entrar');\n");
      out.write("                submitBtn.click();\n");
      out.write("            }\n");
      out.write("            function tabE(obj, e) {\n");
      out.write("                var e = (typeof event !== 'undefined') ? window.event : e; // IE : Moz \n");
      out.write("                if (e.keyCode === 13) {\n");
      out.write("                    var ele = document.forms[0].elements;\n");
      out.write("                    for (var i = 0; i < ele.length; i++) {\n");
      out.write("                        var q = (i === ele.length - 1) ? 0 : i + 1; // if last element : if any other \n");
      out.write("                        if (obj === ele[i]) {\n");
      out.write("                            ele[q].focus();\n");
      out.write("                            break\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function tabF(obj, e) {\n");
      out.write("                var e = (typeof event !== 'undefined') ? window.event : e; // IE : Moz \n");
      out.write("                if (e.keyCode === 13) {\n");
      out.write("                    var ele = document.forms[0].elements;\n");
      out.write("                    for (var i = 0; i < ele.length; i++) {\n");
      out.write("                        var q = (i === ele.length - 1) ? 0 : i + 1; // if last element : if any other \n");
      out.write("                        if (obj === ele[i]) {\n");
      out.write("                            ele[q].focus();\n");
      out.write("                            break\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                tecla = (document.all) ? e.keyCode : e.which;\n");
      out.write("                if (tecla === 8)\n");
      out.write("                    return true; // para la tecla de retroseso\n");
      out.write("                else if (tecla === 0 || tecla === 9)\n");
      out.write("                    return true; //<-- PARA EL TABULADOR-> su keyCode es 9 \n");
      out.write("                patron = /[0-9\\s]/;// -> solo letras\n");
      out.write("                // patron =/[0-9\\s]/;// -> solo numeros\n");
      out.write("                te = String.fromCharCode(tecla);\n");
      out.write("                return patron.test(te);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function showPass()\n");
      out.write("            {\n");
      out.write("                var pass = document.getElementById('clave');\n");
      out.write("                if (document.getElementById('check').click)\n");
      out.write("                {\n");
      out.write("                    pass.setAttribute('type', 'text');\n");
      out.write("                    document.getElementById('oculto').style.display = 'none';\n");
      out.write("                    document.getElementById('oculto1').style.display = 'block';\n");
      out.write("                } else {\n");
      out.write("\n");
      out.write("                    pass.setAttribute('type', 'password');\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function showPass2()\n");
      out.write("            {\n");
      out.write("                var pass = document.getElementById('clave');\n");
      out.write("                if (document.getElementById('check2').click)\n");
      out.write("                {\n");
      out.write("                    pass.setAttribute('type', 'password');\n");
      out.write("                    document.getElementById('oculto').style.display = 'block';\n");
      out.write("                    document.getElementById('oculto1').style.display = 'none';\n");
      out.write("\n");
      out.write("                } else {\n");
      out.write("\n");
      out.write("                    pass.setAttribute('type', 'text');\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script> \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            if (top.location !== self.location)\n");
      out.write("                top.location = self.location;\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            shortcut.add(\"F12\", function () {\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body oncontextmenu=\"return false\">        \n");
      out.write("        <!-- ======== @Region: body ======== -->\n");
      out.write("        <form action=\"index.jsp\" id=\"\" method=\"POST\"> \n");
      out.write("            <body id=\"page\" class=\"page-index has-hero\">\n");
      out.write("                <ul class=\"cb-slideshow\">\n");
      out.write("                    <li><span>Image 01</span></li>\n");
      out.write("                    <li><span>Image 02</span></li>\n");
      out.write("                    <li><span>Image 03</span></li>\n");
      out.write("                    <li><span>Image 04</span></li>\n");
      out.write("                    <li><span>Image 05</span></li>\n");
      out.write("                    <li><span>Image 06</span></li>\n");
      out.write("                </ul>\n");
      out.write("                ");

                    String mensaje = "";
                    String usuario = "";
                    String clave = "";
                    boolean enviar = false;
                    boolean limpiar = false;
                    if (request.getParameter("entrar") != null) {
                        enviar = true;
                    }
                    if (request.getParameter("usuario") != null) {
                        usuario = request.getParameter("usuario");
                    }
                    if (request.getParameter("clave") != null) {
                        clave = request.getParameter("clave");
                    }
                    if (request.getParameter("limpiar") != null) {
                        limpiar = true;
                    }
                    Usuario_CRUD misDatos = new Usuario_CRUD();
                    if (enviar) {
                        int x = 0;
                        x = misDatos.ValidarUsuario(usuario, clave);
                        if (x == 0) {
                            mensaje = "USUARIO NO EXISTE";
                        } else {
                            switch (x) {
                                case 1:
                                    HttpSession obSesion = request.getSession(true);
                                    obSesion.setAttribute("usuari", usuario);
                                    response.sendRedirect("../menu_admin/menu_admin.jsp");
                                    break;
                                case 2:
                                    HttpSession obSesion2 = request.getSession(true);
                                    obSesion2.setAttribute("usuari", usuario);
                                    response.sendRedirect("../menu_admin_area/menu_admin_area.jsp");
                                    break;
                                case 3:
                                    HttpSession obSesion3 = request.getSession(true);
                                    obSesion3.setAttribute("usuari", usuario);
                                    response.sendRedirect("../menu_cordinador/menu_cordinador.jsp");
                                    break;
                                case 4:
                                    HttpSession obSesion4 = request.getSession(true);
                                    obSesion4.setAttribute("usuari", usuario);
                                    response.sendRedirect("../menu_instructor/menu_instructor.jsp");
                                    break;
                                case 5:
                                    HttpSession obSesion5 = request.getSession(true);
                                    obSesion5.setAttribute("usuari", usuario);
                                    response.sendRedirect("../menu_aprendiz_lider/menu_aprendiz_lider.jsp");
                                    break;
                            }
                        }
                    } else {
                        HttpSession sesion = request.getSession();
                        sesion.removeAttribute("usuari");
                        sesion.invalidate();
                    }
                
      out.write("\n");
      out.write("                <!--Change the background class to alter background image, options are: benches, boots, buildings, city, metro -->\n");
      out.write("                <div id=\"background-wrapper\" class=\"benches\" data-stellar-background-ratio=\"0.1\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "cabecera.jsp", out, false);
      out.write("\n");
      out.write("                    <!-- ======== @Region: #content ======== -->\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"navbar \">\n");
      out.write("                            <!--mobile collapse menu button-->\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".navbar-collapse\" aria-expanded=\"false\"> <span class=\"sr-only\">Toggle navigation</span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> </button>\n");
      out.write("                            <!--social media icons-->\n");
      out.write("                            <div class=\"navbar-text social-media social-media-inline pull-right\">\n");
      out.write("                                <!--@todo: replace with company social media details-->\n");
      out.write("                                <a target=\"_blank\" href=\"http://oferta.senasofiaplus.edu.co/sofia-oferta/\"><i title=\"Sofia Plus\" class=\"fa fa-fw\">Sp</i></a>\n");
      out.write("                                <a target=\"_blank\" href=\"https://senaintro.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_547_1\"><i title=\"Blackboard\" class=\"fa fa-fw\">Bb</i></a>\n");
      out.write("                                <a target=\"_blank\" href=\"http://oferta.senasofiaplus.edu.co/sofia-oferta/\"><i title=\"Gmail sena\" class=\"fa fa-fw\">G</i></a>\n");
      out.write("                            </div>\n");
      out.write("                            <!--everything within this div is collapsed on mobile-->\n");
      out.write("                            <!--/.navbar-collapse -->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"hero\" id=\"highlighted\">\n");
      out.write("                    <div class=\"inner\">\n");
      out.write("                        <!--Slideshow-->        \n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-6 col-sm-offset-3\">\n");
      out.write("                                <div class=\"panel panel-default\">\n");
      out.write("                                    <div class=\"panel-heading\">\n");
      out.write("                                        <h3 class=\"panel-title\" onmouseover=\"showPass2();\">\n");
      out.write("                                            <center>\n");
      out.write("                                                INICIO SESION\n");
      out.write("                                            </center>\n");
      out.write("                                        </h3>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"panel-body\">\n");
      out.write("                                        <form accept-charset=\"UTF-8\" role=\"form\">\n");
      out.write("                                            <fieldset>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <div class=\"input-group input-group-lg\">\n");
      out.write("                                                        <span class=\"input-group-addon\"><i class=\"fa fa-address-card-o\"></i></span>\n");
      out.write("                                                        <input onmouseover=\"showPass2();limpiar();\" title=\"Ingrese numero documento\" type=\"text\" autocomplete=\"off\" style=\"cursor:pointer;\" name=\"usuario\" id=\"usuario\" onclick=\"formReset()\" class=\"form-control\"  placeholder=\"Ingrese numero de documento\" onkeypress=\"return tabF(this, event)\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <div class=\"input-group input-group-lg\">\n");
      out.write("                                                        <span class=\"input-group-addon\"><i class=\"fa fa-fw fa-lock\"></i></span>\n");
      out.write("                                                        <input  title=\"Ingrese clave\" type=\"password\" name=\"clave\" id=\"clave\" class=\"form-control\" style=\"cursor:pointer;\" placeholder=\"Ingrese clave\" onkeypress=\"return tabE(this, event)\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div>\n");
      out.write("                                                    <div>   \n");
      out.write("                                                        <a id='oculto1'  style='display: none'><span  title=\"Ocultar clave\" id=\"check2\" onclick=\"showPass2();\" style=\"cursor:pointer;\" class=\"icono glyphicon glyphicon-eye-open\" ></span></a>                                                       \n");
      out.write("                                                        <a style=\"aling:center;\" id='oculto' style=\"cursor:pointer;\" onclick=\"showPass();\" style='display: block'> <span style=\"cursor:pointer;\" title=\"Ver clave\" id=\"check\" onclick=\"showPass();\"  class=\"icono glyphicon glyphicon-eye-close\"></span></a>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <center>\n");
      out.write("                                                    <div onmouseover=\"showPass2();\" id=\"mensajeScript\" style=\"color:black\"> ");
      out.print(mensaje);
      out.write("</div> \n");
      out.write("                                                </center>\n");
      out.write("                                                <input onmouseover=\"showPass2();\" title=\"Ingresar\" class=\"btn btn-lg btn-primary btn-block\" name=\"entrar\" onclick=\"validarCampos()\" type=\"button\" value=\"Ingresar al sistema\">\n");
      out.write("                                                <button  name=\"entrar\" type=\"submit\" style=\"display: none;\" id=\"entrar\"></button>\n");
      out.write("                                            </fieldset>                                         \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /row -->\n");
      out.write("                    </div>\n");
      out.write("                    <!-- ======== @Region: #footer ======== -->\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "pie_pagina_inicio.jsp", out, false);
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- Required JavaScript Libraries -->\n");
      out.write("                <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("                <script src=\"lib/jquery/jquery.min.js\"></script>\n");
      out.write("                <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("                <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("                <script src=\"lib/stellar/stellar.min.js\"></script>\n");
      out.write("                <script src=\"lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("                <script src=\"lib/counterup/counterup.min.js\"></script>\n");
      out.write("                <script src=\"contactform/contactform.js\"></script>\n");
      out.write("                <!-- Template Specisifc Custom Javascript File -->\n");
      out.write("                <script src=\"js/custom.js\"></script>\n");
      out.write("                <!--Custom scripts demo background & colour switcher - OPTIONAL -->\n");
      out.write("                <script src=\"js/color-switcher.js\"></script>\n");
      out.write("                <!--Contactform script -->\n");
      out.write("                <script src=\"contactform/contactform.js\"></script>\n");
      out.write("                <script>(function (i, s, o, g, r, a, m) {\n");
      out.write("                                                        i['GoogleAnalyticsObject'] = r;\n");
      out.write("                                                        i[r] = i[r] || function () {\n");
      out.write("                                                            (i[r].q = i[r].q || []).push(arguments)\n");
      out.write("                                                        }, i[r].l = 1 * new Date();\n");
      out.write("                                                        a = s.createElement(o),\n");
      out.write("                                                                m = s.getElementsByTagName(o)[0];\n");
      out.write("                                                        a.async = 1;\n");
      out.write("                                                        a.src = g;\n");
      out.write("                                                        m.parentNode.insertBefore(a, m)\n");
      out.write("                                                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');\n");
      out.write("                                                    ga('create', 'UA-55234356-4', 'auto');\n");
      out.write("                                                    ga('send', 'pageview');\n");
      out.write("                </script>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
