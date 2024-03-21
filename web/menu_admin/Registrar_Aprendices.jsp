<%--     
    Author:Bitacora
--%>
<%@page import="conexion_bd.Registrar_Aprendiz"%>
<%@page import="conexion_bd.Registrar_Aprendiz_CRUD"%>
<%@page import="conexion_bd.Usuario_CRUD"%>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Aprendices</title>  
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="js/shortcut.js" type="text/javascript"></script>       
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'copyHtml5',
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5',
                        'print'
                    ]
                });
            });
        </script>
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
                var id_tipo_documento = document.getElementById("id_tipo_documento").value;
                var n_documento_usuario = document.getElementById("n_documento_usuario").value;
                var nombres_usuario = document.getElementById("nombres_usuario").value;
                var apellidos_usuario = document.getElementById("apellidos_usuario").value;
                var celular_usuario = document.getElementById("celular_usuario").value;
                var correo_usuario = document.getElementById("correo_usuario").value;
                var id_estado_usuario = document.getElementById("id_estado_usuario").value;
                var id_rol = document.getElementById("id_rol").value;
                var id_area = document.getElementById("id_area").value;
                var id_titulacion = document.getElementById("id_titulacion").value;
                var id_ficha = document.getElementById("id_ficha").value;
                var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                if (id_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN AREA";
                } else if (id_titulacion === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA TITULACION";
                } else if (id_ficha === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA FICHA";
                } else if (id_tipo_documento === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR EL TIPO DOCUMENTO ";
                } else if (n_documento_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NUMERO DOCUMENTO ";
                } else if (nombres_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN NOMBRE";
                } else if (apellidos_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR LOS APELLIDOS";
                } else if (celular_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NUMERO DE CELULAR ";
                } else if (correo_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CORREO ";
                } else if (id_estado_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR EL ESTADO ";
                } else if (id_rol === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR EL ROL ";
                } else if (!patron.test(correo_usuario)) {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN CORREO VALIDO";
                } else {
                    enviardate();
                }
            }
            function enviardate()
            {
                var submitBtn = document.getElementById('consultar');
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
    </head>
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
        String n_documento_usuario = "";
        String nombres_usuario = "";
        String apellidos_usuario = "";
        String celular_usuario = "";
        String correo_usuario = "";
        String id_tipo_documento = "";
        String id_estado_usuario = "";
        String id_rol = "";
        String id_area = "";
        String id_titulacion = "";
        String id_ficha = "";
        // obtenemos los valores y validamos si estas var-iables estan
        if (request.getParameter("n_documento_usuario") != null) {
            n_documento_usuario = request.getParameter("n_documento_usuario");
        }
        if (request.getParameter("nombres_usuario") != null) {
            nombres_usuario = request.getParameter("nombres_usuario");
        }
        if (request.getParameter("apellidos_usuario") != null) {
            apellidos_usuario = request.getParameter("apellidos_usuario");
        }
        if (request.getParameter("celular_usuario") != null) {
            celular_usuario = request.getParameter("celular_usuario");
        }
        if (request.getParameter("correo_usuario") != null) {
            correo_usuario = request.getParameter("correo_usuario");
        }
        if (request.getParameter("id_tipo_documento") != null) {
            id_tipo_documento = request.getParameter("id_tipo_documento");
        }
        if (request.getParameter("id_estado_usuario") != null) {
            id_estado_usuario = request.getParameter("id_estado_usuario");
        }
        if (request.getParameter("id_rol") != null) {
            id_rol = request.getParameter("id_rol");
        }
        if (request.getParameter("id_area") != null) {
            id_area = request.getParameter("id_area");
        }
        if (request.getParameter("id_titulacion") != null) {
            id_titulacion = request.getParameter("id_titulacion");
        }
        if (request.getParameter("id_ficha") != null) {
            id_ficha = request.getParameter("id_ficha");
        }
        if (request.getParameter("id_ficha") != null) {
            id_ficha = request.getParameter("id_ficha");
        }

        if (limpiar) {
            n_documento_usuario = "";
            nombres_usuario = "";
            apellidos_usuario = "";
            celular_usuario = "";
            correo_usuario = "";
            id_tipo_documento = "";
            id_estado_usuario = "";
            id_rol = "";
        }
        if (guardar) {
            Registrar_Aprendiz_CRUD misDatos = new Registrar_Aprendiz_CRUD();// de esta manera tenemos conexion a la base de datos
            Registrar_Aprendiz miAprendiz = misDatos.consultarAprendiz(n_documento_usuario);
            if (miAprendiz != null) {
                mensaje = "APRENDIZ YA ESTA REGISTRADO";
            } else {
                miAprendiz = new Registrar_Aprendiz(
                        n_documento_usuario,
                        nombres_usuario,
                        apellidos_usuario,
                        celular_usuario,
                        correo_usuario,
                        new Integer(id_rol),
                        new Integer(id_tipo_documento),
                        new Integer(id_ficha),
                        new Integer(id_estado_usuario));
                misDatos.nuevo_Aprendiz(miAprendiz);
                mensaje = "APRENDIZ REGISTRADO EXITOSAMENTE";
                //Limpia campos al guardar
                n_documento_usuario = "";
                nombres_usuario = "";
                apellidos_usuario = "";
                celular_usuario = "";
                correo_usuario = "";
                id_tipo_documento = "";
                id_estado_usuario = "";
                id_rol = "";
                id_area = "";
                id_titulacion = "";
                id_ficha = "";
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
    <!---------------------------Inicio Formulario Registrar Aprendices----------------------------------------------->
    <form class="form-horizontal"   action="Registrar_Aprendices.jsp"  method="POST">     
        <div class="content-page-container full-reset custom-scroll-containers">
            <div class="container-fluid">
                <div class="container-flat-form">                    
                      <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="registrar_cordinador.jsp">Registrar Cordinador</a></li>
                                <li role="presentation"><a href="registrar_admin_area.jsp">Registar Admin Area</a></li>
                                <li role="presentation"><a href="registrar_instructor.jsp">Registrar Instructores</a></li> 
                                <li role="presentation"     class="active"><a href="Registrar_Aprendices.jsp">Registrar Aprendices</a></li> 
                               </ul>
                        </div>
                    <div class="title-flat-form title-flat-blue">Registrar Aprendices</div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="col-md-4">
                                <div class="group-material">
                                    <select  name="id_area" id="id_area" value="<%=id_area%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige un area" style="cursor:pointer;" onkeypress="return tabE(this, event)">
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
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Area</label>
                                </div>                       
                                <div class="group-material">
                                    <select  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una titulacion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    </select>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Titulacion</label>
                                </div>                           
                                <div class="group-material">
                                    <select  name="id_ficha" id="id_ficha" value="<%=id_ficha%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una ficha" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    </select>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Ficha</label>
                                </div>
                                <div class="group-material">
                                    <select  name="id_tipo_documento" id="id_tipo_documento" value="<%=id_tipo_documento%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una opcion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                        <%
                                            try {
                                                out.println("<option value=''>:.</option>");
                                                cn.control();
                                                String sql = "SELECT tipo_documento.id_tipo_documento, tipo_documento.nombre_tipo FROM tipo_documento";
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
                                    <label>Tipo Documento</label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="group-material">
                                    <input type="text" name="n_documento_usuario" autocomplete="off" id="n_documento_usuario" value="<%=n_documento_usuario%>" s  class="material-control tooltips-general input-check-user" placeholder="Ingrese numero documento"  data-toggle="tooltip" data-placement="top" title="Escribe numero documento" style="cursor:pointer;"   onkeypress="return tabF(this, event);">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Numero documento</label>
                                </div>
                                <div class="group-material">
                                    <input type="text" name="nombres_usuario" autocomplete="off" id="nombres_usuario" value="<%=nombres_usuario%>"   class="material-control tooltips-general input-check-user" placeholder="Ingrese el nombre"  data-toggle="tooltip" data-placement="top" title="Escribe el nombre" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Nombres</label>
                                </div> 
                                <div class="group-material">
                                    <input type="text" name="apellidos_usuario" autocomplete="off" id="apellidos_usuario" value="<%=apellidos_usuario%>"   class="material-control tooltips-general input-check-user" placeholder="Ingrese apellidos"  data-toggle="tooltip" data-placement="top" title="Escribe segundo apellido" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Apellidos</label>
                                </div>
                                <div class="group-material">
                                    <input type="text" name="celular_usuario" autocomplete="off" id="celular_usuario" value="<%=celular_usuario%>"  class="material-control tooltips-general input-check-user" placeholder="Ingrese numero celular"  data-toggle="tooltip" data-placement="top" title="Escribe numero celular" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Celular Usuario</label>
                                </div>
                            </div> 
                            <div class="col-md-4">
                                <div class="group-material">
                                    <input type="text" name="correo_usuario"  autocomplete="off" id="correo_usuario" value="<%=correo_usuario%>" size="30"  class="material-control tooltips-general input-check-user" placeholder="Ingrese correo electronico"  data-toggle="tooltip" data-placement="top" title="Escribe el correo electronico" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Correo Usuario</label>
                                </div>
                                <div class="group-material">
                                    <select  name="id_estado_usuario"  id="id_estado_usuario" value="<%=id_estado_usuario%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una opcion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                        <%
                                            try {
                                                out.println("<option value=''>:.</option>");
                                                cn.control();
                                                String sql = "SELECT  id_estado_usuario, nombre_estado_usuario FROM estado_usuario WHERE id_estado_usuario = 1;";
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
                                    <label>Estado Usuario</label>
                                </div>
                                <div class="group-material">
                                    <select  name="id_rol" id="id_rol" value="<%=id_rol%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una opcion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                        <%
                                            try {
                                                out.println("<option value=''>:.</option>");
                                                cn.control();
                                                String sql = "SELECT rol.id_rol, rol.nombre_rol FROM rol WHERE rol.id_rol = 6;";
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
                                    <label>Rol</label>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <center>
                                    <div id="mensajeScript" style="color:#fc7323"><%=mensaje%></div> 
                                </center>
                                <p class="text-center">
                                    <button type="button"   onclick="validarCampos()"  class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                                    <button   type="submit"  style="display: none;" name="guardar" id="consultar"></button>
                                    <button type="submit" name="limpiar" value="limpiar"  class="btn btn-primary"><i class="zmdi fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                                </p> 
                            </div>
                        </div>
                        <!---------------------------Fin Formulario Registrar Aprendices----------------------------------------------->
                    </div>
                </div>

            </div>
            <jsp:include page="pie_pagina.jsp" /> 
        </div>
    </form>
</body>
</html>
