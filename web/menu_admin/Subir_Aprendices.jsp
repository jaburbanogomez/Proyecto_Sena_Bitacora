<%@page import="conexion_bd.leerArchivoExcel"%>
<%@page import="conexion_bd.Bitacora"%>
<%@page import="conexion_bd.Conexion_bd"%>
<%@page import="conexion_bd.Usuario_CRUD"%>
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
<html lang="es">
    <head>
        <title>Subir Aprendices</title>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#id_area').change(function (event) {
                    $.post('../cargar2', {
                        areas: $('#id_area').val()
                    }, function (responseText) {
                        $('#id_titulacion').html(responseText);
                    });
                });
            });
            $(document).ready(function () {
                $('#id_titulacion').change(function (event) {
                    $.post('../cargar2', {
                        titulacion: $('#id_titulacion').val()
                    }, function (responseText) {
                        $('#id_ficha').html(responseText);
                    });
                });
            });
            function validarCampos() {
                var id_area = document.getElementById("id_area").value;
                var id_titulacion = document.getElementById("id_titulacion").value;
                var id_ficha = document.getElementById("id_ficha").value;
                var file = document.getElementById("file").value;
                if (id_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN AREA";
                } else if (id_titulacion === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA TITULACION";
                } else if (id_ficha === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA FICHA ";
                } else if (file === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA RUTA ";
                } else {                   
                    enviardate();
                }
            }
            function enviardate()
            {
                var submitBtn = document.getElementById('subir');
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
            if (top.location !== self.location)
                top.location = self.location;
        </script>
        <script type="text/javascript">
            shortcut.add("F12", function () {
            });

        </script>
    </head>
    <body oncontextmenu="return false">
        <jsp:include page="menu_admin.jsp" />
        <%
            // variable que muestra los mensajes
            String mensaje = "";
            //declarar una variables que nos definan cual fue el boton que presionaron
            boolean subir = false;
            boolean limpiar = false;
            if (request.getParameter("subir") != null) {
                subir = true;
            }
            if (request.getParameter("limpiar") != null) {
                limpiar = true;
            }
            // obtenemos el valor como fue llamado el formulario            
            String id_area = "";
            String id_titulacion = "";
            String id_ficha = "";
            String file = "";
            // obtenemos los valores y validamos si estas variables estan          
            if (request.getParameter("id_area") != null) {
                id_area = request.getParameter("id_area");
            }
            if (request.getParameter("id_titulacion") != null) {
                id_titulacion = request.getParameter("id_titulacion");
            }
            if (request.getParameter("id_ficha") != null) {
                id_ficha = request.getParameter("id_ficha");
            }
            if (request.getParameter("file") != null) {
                file = request.getParameter("file");
            }
            //Metodo limpiar
            if (limpiar) {
                id_area = "";
                id_titulacion = "";
                id_ficha = "";
                file = "";
            }
            //Metodo guardar  
            if (subir) {
                leerArchivoExcel ob = new leerArchivoExcel();
                if (ob.leerArchivoExcel2(file, id_ficha) == 1) {
                    mensaje = "LOS APRENDICES A SUBIR YA SE ENCUENTRAN REGISTRADOS";
                } else {
                    mensaje = "APRENDICES REGISTRADOS EXITOSAMENTE";
                }
                ob.cerrarconexion();
            }
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro = 0;
            centro = ob.retornarCentro();
        %>
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO SUBIR APRENDICES--------------------->
        <div class="content-page-container full-reset custom-scroll-containers" >
            <form class="form-horizontal" action="Subir_Aprendices.jsp" method="POST"> 
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="Subir_Instructores.jsp">Subir Instructores</a></li>
                                <li role="presentation"   class="active"><a href="Subir_Aprendices.jsp">Subir Aprendices</a></li>                                           
                            </ul>
                        </div>
                        <div class="title-flat-form title-flat-blue">Formulario Subir Aprendices</div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-4">                                
                                    <div class="group-material">
                                        <select name="id_area" id="id_area" value="<%=id_area%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige un area" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();
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
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Area</label>
                                    </div>                                
                                </div>
                                <div class="col-md-4">
                                    <div class="group-material">
                                        <select name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" class="material-control tooltips-general" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Elige una titulacion">
                                        </select>
                                        <label>Titulacion</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="group-material">
                                        <select name="id_ficha" id="id_ficha" value="<%=id_ficha%>" class="material-control tooltips-general" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Elige una ficha">
                                        </select>
                                        <label>Ficha</label>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                    <div class="group-material">
                                        <input type="text"  name="file" autocomplete="off"  id="file" class="material-control tooltips-general input-check-user" placeholder="Ingrese la ruta del archivo"  onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Escribe la ruta del archivo">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Ruta del Archivo</label>
                                    </div>
                                    <center>
                                        <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                                    </center>
                                    <p class="text-center">
                                        <button type="button"  value="subir" onclick="validarCampos()"  class="btn btn-primary"><i class="zmdi fa fa-upload"></i> &nbsp;&nbsp; subir</button>
                                        <button  name="subir" type="submit"  style="display: none;" id="subir"></button>
                                        <button type="submit" name="limpiar" value="limpiar" id="limpiar" class="btn btn-primary"><i class="zmdi fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                                    </p> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <jsp:include page="pie_pagina.jsp" />
        </div>
        <!--------------------------------FIN DISEÑO DEL FORMULARIO SUBIR APRENDICES--------------------->
    </body>
</html>
