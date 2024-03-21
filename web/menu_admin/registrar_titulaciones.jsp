<%@page import="conexion_bd.Usuario_CRUD"%>
<%@page import="conexion_bd.Titulaciones"%>
<%@page import="conexion_bd.Titulaciones_CRUD"%>
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
<!DOCTYPE html>
<html>
    <title>Registrar Titulaciones</title>
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
    <script src="js/shortcut.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script type="text/javascript">
        function validarCampos() {

            var id_area = document.getElementById("id_area").value;
            var nombre_titulacion = document.getElementById("nombre_titulacion").value;
            if (id_area === "") {
                document.getElementById("mensajeScript").innerHTML = "ESCOGER UN AREA ";
            } else if (nombre_titulacion === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DE LA TITULACION ";
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
            String nombre_titulacion = "";
            String id_area = "";
            if (request.getParameter("nombre_titulacion") != null) {
                nombre_titulacion = request.getParameter("nombre_titulacion");
            }
            if (request.getParameter("id_area") != null) {
                id_area = request.getParameter("id_area");
            }
            if (limpiar) {
                id_area = "";
                nombre_titulacion = "";
            }
            if (guardar) {
                Titulaciones_CRUD misDatos = new Titulaciones_CRUD();// de esta manera tenemos conexion a la base de datos
                Titulaciones miTitulacion = misDatos.consultarTitulaciones(nombre_titulacion);
                if (miTitulacion != null) {
                    mensaje = "TITULACION YA EXISTE";
                } else {
                    miTitulacion = new Titulaciones(
                            nombre_titulacion,
                            new Integer(id_area));
                    misDatos.nuevo_titulacion(miTitulacion);
                    mensaje = "TITULACION GUARDADA EXITOSAMENTE";
                    id_area = "";
                    nombre_titulacion = "";
                }
                misDatos.cerrarconexion();
            }
        %>
        <%
            Conexion_bd cn = new Conexion_bd();
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO TITULACIONES--------------------->
        <div class="content-page-container full-reset custom-scroll-containers">
            <div class="container-fluid">
                <div class="container-flat-form">
                      <div class="container-fluid">
                        <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                            <li role="presentation"><a href="registrar_regionales.jsp">Registrar Regionales</a></li>
                            <li role="presentation"><a href="registrar_centros.jsp">Registar Centros</a></li>
                            <li role="presentation"><a href="registrar_areas.jsp">Registrar Areas</a></li> 
                            <li role="presentation"   class="active"><a href="registrar_titulaciones.jsp">Registrar Titulaciones</a></li> 
                            <li role="presentation"><a href="registrar_fichas.jsp">Registrar Fichas</a></li> 
                        </ul>
                    </div>
                    <div class="title-flat-form title-flat-blue">Registrar Titulaciones</div>
                    <form name="registrar_titulaciones" id="registrar_titulaciones" action="registrar_titulaciones.jsp" method="POST">
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2"> 
                                <div class="col-md-2"></div>
                                <div class="col-md-8">                           
                                    <div class="group-material">
                                        <select  id="id_area" name="id_area"  value="<%=id_area%>"  style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general" placeholder="Seleccione un área"  data-toggle="tooltip" data-placement="top" title="Escoja un área">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT areas.id_area, areas.nombre_area, areas.id_centro FROM areas INNER JOIN centros ON centros.id_centro = areas.id_centro WHERE areas.id_centro = '" + centro + "'";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sql);
                                                    while (cn.rt.next()) {
                                                        out.println("<option value='" + cn.rt.getString(1) + "'>" + cn.rt.getString(2) + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e.toString());
                                                }
                                            %>
                                        </select>
                                        <label>Área</label>
                                    </div>     
                                    <div class="group-material">
                                        <input type="text" name="nombre_titulacion" autocomplete="off" id="nombre_titulacion" value="<%=nombre_titulacion%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" placeholder="Ingrese el nombre de la titulación" data-toggle="tooltip" data-placement="top" title="Escribe el nombre de la titulación">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nombre de la Titulación</label>
                                    </div>
                                    <div class="col-md-2">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <center>
                            <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                        </center>
                        <p class="text-center">
                            <button type="button"  value="guardar" onclick="validarCampos()" data-toggle="tooltip" title="Guardar Registro" class="btn btn-primary tooltips-general"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                            <button  name="guardar" type="submit" style="display: none;" id="guardar"></button>
                            <button type="submit" name="limpiar" value="limpiar" id="limpiar" data-toggle="tooltip" title="Limpiar Formulario" class="btn btn-primary tooltips-general"><i class="zmdi fa fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                        </p> 
                </div>
                </form>
            </div>
            <jsp:include page="pie_pagina.jsp" />
        </div>           
        <!--------------------------------FIN DISEÑO DEL FORMULARIO TITULACIONES-------------------->
    </body>
</html>