<%@page import="conexion_bd.Usuario_CRUD"%>
<%@page import="conexion_bd.Fichas"%>
<%@page import="conexion_bd.Fichas_CRUD"%>
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
    <title>Registrar Fichas</title>
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
    <script src="js/shortcut.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script  type="text/javascript">

        $(document).ready(function () {
            $('#id_area').change(function (event) {
                $.post('../cargar2', {
                    areas: $('#id_area').val()
                }, function (responseText) {
                    $('#id_titulacion').html(responseText);
                });
            });
        });
        function validarCampos() {
            var id_area = document.getElementById("id_area").value;
            var id_titulacion = document.getElementById("id_titulacion").value;
            var ficha_programa = document.getElementById("ficha_programa").value;
            if (id_area === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER UN AREA ";
            } else if (id_titulacion === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER UNA TITULACION ";
            } else if (ficha_programa === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR LA FICHA ";
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
        function tabF(obj, e) {
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
            tecla = (document.all) ? e.keyCode : e.which;
            if (tecla === 8)
                return true; // para la tecla de retroseso
            else if (tecla === 0 || tecla === 9)
                return true; //<-- PARA EL TABULADOR-> su keyCode es 9 pero en tecla se esta transformando a 0 asi que porsiacaso los dos
            patron = /[0-9\s]/;// -> solo letras
            // patron =/[0-9\s]/;// -> solo numeros
            te = String.fromCharCode(tecla);
            return patron.test(te);
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
            String id_area = "";
            String id_titulacion = "";
            String ficha_programa = "";
            if (request.getParameter("id_area") != null) {
                id_area = request.getParameter("id_area");
            }
            if (request.getParameter("id_titulacion") != null) {
                id_titulacion = request.getParameter("id_titulacion");
            }
            if (request.getParameter("ficha_programa") != null) {
                ficha_programa = request.getParameter("ficha_programa");
            }
            if (limpiar) {
                id_area = "";
                id_titulacion = "";
                ficha_programa = "";
            }
            if (guardar) {
                Fichas_CRUD misDatos = new Fichas_CRUD();// de esta manera tenemos conexion a la base de datos
                Fichas miFicha = misDatos.consultarFichas(ficha_programa);
                if (miFicha != null) {
                    mensaje = "FICHA YA EXISTE";
                } else {
                    miFicha = new Fichas(
                            ficha_programa,
                            new Integer(id_titulacion));
                    misDatos.nuevo_ficha(miFicha);
                    mensaje = "FICHA GUARDADA EXITOSAMENTE";
                    id_area = "";
                    id_titulacion = "";
                    ficha_programa = "";
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
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO FICHAS--------------------->
        <div class="content-page-container full-reset custom-scroll-containers">
            <div class="container-fluid">
                <div class="container-flat-form">
                    <div class="container-fluid">
                        <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                            <li role="presentation"><a href="registrar_regionales.jsp">Registrar Regionales</a></li>
                            <li role="presentation"><a href="registrar_centros.jsp">Registar Centros</a></li>
                            <li role="presentation"><a href="registrar_areas.jsp">Registrar Areas</a></li> 
                            <li role="presentation"><a href="registrar_titulaciones.jsp">Registrar Titulaciones</a></li> 
                            <li role="presentation"    class="active"><a href="registrar_fichas.jsp">Registrar Fichas</a></li> 
                        </ul>
                    </div>
                    <div class="title-flat-form title-flat-blue">Registrar fichas</div>
                    <form name="registrar_fichas"  action="registrar_fichas.jsp" method="POST">
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-6">                              
                                    <div class="group-material">
                                        <select  id="id_area" name="id_area"  value="<%=id_area%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general" placeholder="Seleccione un área"  data-toggle="tooltip" data-placement="top" title="Escoja un área">
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
                                        <select  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general" placeholder="Seleccione una titulación" data-toggle="tooltip" data-placement="top" title="Escoja una titulación">                                            
                                        </select>
                                        <label>Titulación</label>
                                    </div>
                                </div>
                                <div class="col-md-6">                                   
                                    <div class="group-material">
                                        <input type="text" name="ficha_programa" autocomplete="off" id="ficha_programa" value="<%=ficha_programa%>" style="cursor:pointer;" onkeypress="return tabF(this, event)" class="material-control tooltips-general" placeholder="Ingrese la ficha"  data-toggle="tooltip" data-placement="top" title="Escribe el numero de la ficha">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Ficha del programa</label>
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
                            <button type="submit" name="limpiar" value="limpiar" id="limpiar"  data-toggle="tooltip" title="Limpiar Formulario" class="btn btn-primary tooltips-general"><i class="zmdi fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                        </p> 
                    </form>
                </div>
            </div>
            <jsp:include page="pie_pagina.jsp" />
        </div>
        <!--------------------------------FIN DISEÑO DEL FORMULARIO FICHAS--------------------->
    </body>
</html>