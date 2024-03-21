<%@page import="conexion_bd.Centros"%>
<%@page import="conexion_bd.Centros_CRUD"%>
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
    <title>Registrar Centros</title>
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
    <script src="js/shortcut.js" type="text/javascript"></script>
  <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script type="text/javascript">
                function validarCampos() {
                    var id_regional = document.getElementById("id_regional").value;
                    var nombre_centro = document.getElementById("nombre_centro").value;
                    var codigo_centro = document.getElementById("codigo_centro").value;
                    if (id_regional === "") {
                        document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER UNA REGIONAL";
                    } else if (nombre_centro === "") {
                        document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DEL CENTRO ";
                    } else if (codigo_centro === "") {
                        document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CODIGO DEL CENTRO ";
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
    <body oncontextmenu="return false">
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
            String nombre_centro = "";
            String codigo_centro = "";
            String id_regional = "";
            if (request.getParameter("id_regional") != null) {
                id_regional = request.getParameter("id_regional");
            }
            if (request.getParameter("codigo_centro") != null) {
                codigo_centro = request.getParameter("codigo_centro");
            }
            if (request.getParameter("nombre_centro") != null) {
                nombre_centro = request.getParameter("nombre_centro");
            }
            if (limpiar) {
                id_regional = "";
                codigo_centro = "";
                nombre_centro = "";
            }
            if (guardar) {
                Centros_CRUD misDatos = new Centros_CRUD();
                Centros miCentro = misDatos.consultarCentros(codigo_centro,nombre_centro);
                if (miCentro != null) {
                    mensaje = "CENTRO YA EXISTE";
                } else {
                    miCentro = new Centros(
                            nombre_centro,
                            codigo_centro,
                            new Integer(id_regional));
                    misDatos.nuevo_centro(miCentro);
                    mensaje = "CENTRO GUARDADO EXITOSAMENTE";
                    codigo_centro = "";
                    nombre_centro = "";
                }
                misDatos.cerrarconexion();
            }
        %>    
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO CENTROS--------------------->
        <div class="content-page-container full-reset custom-scroll-containers">
            <div class="container-fluid">
                <div class="container-flat-form">
                    <div class="container-fluid">
                        <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                            <li role="presentation"><a href="registrar_regionales.jsp">Registrar Regionales</a></li>
                            <li role="presentation" class="active"><a href="registrar_centros.jsp">Registar Centros</a></li>
                            <li role="presentation"><a href="registrar_areas.jsp">Registrar Areas</a></li> 
                            <li role="presentation"><a href="registrar_titulaciones.jsp">Registrar Titulaciones</a></li> 
                            <li role="presentation"><a href="registrar_fichas.jsp">Registrar Fichas</a></li> 
                        </ul>
                    </div>
                    <div class="title-flat-form title-flat-blue">Registrar Centros</div>
                    <form name="registrar_centros" id="registrar_centros" action="registrar_centros.jsp" method="POST">
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-2"></div>
                                <div class="col-md-8">
                                    <div class="group-material">
                                        <div class="group-material">
                                            <select  class="material-control tooltips-general"  name="id_regional" id="id_regional" value="<%=id_regional%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" title="Escoja una regional">
                                                <%
                                                    Conexion_bd cn = new Conexion_bd();
                                                    try {
                                                        out.println("<option value=''>:.</option>");
                                                        cn.control();
                                                        String sql = "select id_regional,nombre_regional from regional;";
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
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Regional</label>
                                        </div>  
                                        <div class="group-material">
                                            <input type="text"  name="codigo_centro" value="<%=codigo_centro%>" id="codigo_centro" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" placeholder="Ingrese el código de centro"   data-toggle="tooltip" data-placement="top" title="Escribe el código del centro">
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Codigo Centro</label>
                                        </div>  
                                        <div class="group-material">
                                            <input type="text"  name="nombre_centro" autocomplete="off" value="<%=nombre_centro%>" id="nombre_centro" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" placeholder="Ingrese el nombre de centro"   data-toggle="tooltip" data-placement="top" title="Escribe el nombre del centro">
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Nombre Centro</label>
                                        </div>
                                        <center>
                                            <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                                        </center>
                                        <p class="text-center">
                                            <button type="button"  value="guardar" onclick="validarCampos()" data-toggle="tooltip" title="Guardar Registro" class="btn btn-primary tooltips-general"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                                            <button  name="guardar" type="submit" style="display: none;" id="guardar"></button>
                                            <button type="submit" name="limpiar" value="limpiar"  data-toggle="tooltip" title="Limpiar Formulario" class="btn btn-primary tooltips-general"><i class="zmdi fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                                        </p> 
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                                </form>
                            </div>
                        </div>
                </div>
            </div>
            <jsp:include page="pie_pagina.jsp" />   
        </div>
        <!--------------------------------FIN DISEÑO DEL FORMULARIO CENTROS--------------------->
    </body>
</html>