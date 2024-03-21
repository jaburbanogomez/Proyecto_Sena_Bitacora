<!DOCTYPE html>
<%@page import="conexion_bd.Usuario_CRUD"%>
<%@page import="conexion_bd.Areas"%>
<%@page import="conexion_bd.Areas_CRUD"%>
<%@page import="conexion_bd.Conexion_bd"%>
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
<html>
    <title>Registrar Areas</title>
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
    <script src="js/shortcut.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script type="text/javascript">
        function validarCampos() {

            var nombre_area = document.getElementById("nombre_area").value;
            if (nombre_area === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DEL AREA ";
            } else {
                enviardate();
            }
        }
        function enviardate()
        {
            var submitBtn = document.getElementById('guardar');
            submitBtn.click();
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
    <body  oncontextmenu="return false">
        <jsp:include page="menu_admin.jsp" />
        <%
            String mensaje = "";
            boolean guardar = false;
            boolean limpiar = false;
            if (request.getParameter("guardar") != null) {
                guardar = true;
            }
            if (request.getParameter("limpiar") != null) {
                limpiar = true;
            }

            String nombre_area = "";

            if (request.getParameter("nombre_area") != null) {
                nombre_area = request.getParameter("nombre_area");
            }
            if (limpiar) {

                nombre_area = "";

            }
            if (guardar) {
                Areas_CRUD misDatos = new Areas_CRUD();// de esta manera tenemos conexion a la base de datos
                Areas miArea = misDatos.consultarAreas(nombre_area);
                if (miArea != null) {
                    mensaje = "Area ya existe";
                } else {
                    miArea = new Areas(
                            nombre_area);
                    misDatos.nuevo_area(miArea);
                    mensaje = "AREA GUARDADA EXITOSAMENTE";
                    nombre_area = "";

                }
                misDatos.cerrarconexion();
            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO AREAS--------------------->
        <div class="content-page-container full-reset custom-scroll-containers">
            <div class="container-fluid">
                <div class="container-flat-form">
                    <div class="container-fluid">
                        <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                            <li role="presentation"><a href="registrar_regionales.jsp">Registrar Regionales</a></li>
                            <li role="presentation"><a href="registrar_centros.jsp">Registar Centros</a></li>
                            <li role="presentation"  class="active"><a href="registrar_areas.jsp">Registrar Areas</a></li> 
                            <li role="presentation"><a href="registrar_titulaciones.jsp">Registrar Titulaciones</a></li> 
                            <li role="presentation"><a href="registrar_fichas.jsp">Registrar Fichas</a></li> 
                        </ul>
                    </div>
                    <div class="title-flat-form title-flat-blue">Registrar Areas</div>
                    <form name="registrar_areas" id="registrar_areas" action="registrar_areas.jsp" method="POST">
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-2"></div>
                                <div class="col-md-8">                                   
                                    <div class="group-material">
                                        <input type="text" name="nombre_area" autocomplete="off" id="nombre_area" value="<%=nombre_area%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" placeholder="Ingrese el nombre de área"  data-toggle="tooltip" data-placement="top" title="Escribe el nombre del area">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nombre Area</label>
                                    </div>
                                    <center>
                                        <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                                    </center>
                                    <p class="text-center">
                                        <button type="button"  value="guardar" onclick="validarCampos()" data-toggle="tooltip" title="Guardar Registro" class="btn btn-primary tooltips-general"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                                        <button  name="guardar" type="submit" style="display: none;" id="guardar"></button>
                                        <button type="submit" name="limpiar" value="limpiar" id="limpiar" data-toggle="tooltip" title="Limpiar Formulario" class="btn btn-primary tooltips-general"><i class="zmdi fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                                    </p> 
                                    </p> 
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="pie_pagina.jsp" />
    </div>
    <!--------------------------------FIN DISEÑO DEL FORMULARIO AREAS--------------------->
</body>
</html>