<%@page import="conexion_bd.Admin_area_CRUD"%>
<%@page import="conexion_bd.Admin_area"%>
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
        <title>Registrar Admin Area</title>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            function validarCampos() {
                var id_area = document.getElementById("id_area").value;
                var nombres_usuario = document.getElementById("nombres_usuario").value;
                var apellidos_usuario = document.getElementById("apellidos_usuario").value;
                var celular_usuario = document.getElementById("celular_usuario").value;
                var correo_usuario = document.getElementById("correo_usuario").value;
                var id_tipo_documento = document.getElementById("id_tipo_documento").value;
                var n_documento_usuario = document.getElementById("n_documento_usuario").value;
                var id_estado_usuario = document.getElementById("id_estado_usuario").value;
                var id_rol = document.getElementById("id_rol").value;
                var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                if (id_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN AREA";
                } else if (nombres_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR NOMBRES";
                } else if (apellidos_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR APELLIDOS ";
                } else if (celular_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR NUMERO CELULAR";
                } else if (correo_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CORREO ";
                } else if (id_tipo_documento === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR EL TIPO DOCUMENTO ";
                } else if (n_documento_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NUMERO DOCUMENTO ";
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
            String id_area = "";
            String n_documento_usuario = "";
            String nombres_usuario = "";
            String apellidos_usuario = "";
            String celular_usuario = "";
            String correo_usuario = "";
            String id_tipo_documento = "";
            String id_estado_usuario = "";
            String id_rol = "";
            if (request.getParameter("id_area") != null) {
                id_area = request.getParameter("id_area");
            }
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
            if (limpiar) {
                id_area = "";
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
                Admin_area_CRUD misDatos = new Admin_area_CRUD();// de esta manera tenemos conexion a la base de datos
                Admin_area miAdmin_area = misDatos.consultarAdmin_area(n_documento_usuario);
                if (miAdmin_area != null) {
                    mensaje = "EL ADMINISTRADOR DE AREA YA SE ENCUENTRA REGISTRADO";
                } else {
                    miAdmin_area = new Admin_area(
                            n_documento_usuario,
                            nombres_usuario,
                            apellidos_usuario,
                            celular_usuario,
                            correo_usuario,
                            new Integer(id_rol),
                            new Integer(id_tipo_documento),
                            new Integer(id_area),
                            new Integer(id_estado_usuario));
                    misDatos.nuevo_admin_area(miAdmin_area);
                    mensaje = "ADMINISTRADOR AREA GUARDADO EXITOSAMENTE";
                    id_area = "";
                    n_documento_usuario = "";
                    nombres_usuario = "";
                    apellidos_usuario = "";
                    celular_usuario = "";
                    correo_usuario = "";
                    id_tipo_documento = "";
                    id_estado_usuario = "";
                    id_rol = "";
                }
                misDatos.cerrarconexion();
            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro = 0;
            centro = ob.retornarCentro();
        %>
        <!--------------------------------REGISTRO ADMIN AREA--------------------->
        <div class="content-page-container full-reset custom-scroll-containers" >
            <form class="form-horizontal" action="registrar_admin_area.jsp" method="POST"> 
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="registrar_cordinador.jsp">Registrar Cordinador</a></li>
                                <li role="presentation"    class="active"><a href="registrar_admin_area.jsp">Registar Admin Area</a></li>
                                <li role="presentation"><a href="registrar_instructor.jsp">Registrar Instructores</a></li> 
                                <li role="presentation"><a href="Registrar_Aprendices.jsp">Registrar Aprendices</a></li> 
                            </ul>
                        </div>
                        <div class="title-flat-form title-flat-blue">Registrar Administrador Area</div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-6">
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
                                    <div class="group-material">
                                        <input type="text" name="nombres_usuario"  id="nombres_usuario" value="<%=nombres_usuario%>" size="30"  class="material-control tooltips-general input-check-user" placeholder="Ingrese el nombre"  data-toggle="tooltip" data-placement="top" title="Ingrese nombres" onkeypress="return tabE(this, event)">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nombres</label>
                                    </div>
                                    <div class="group-material">
                                        <input type="text" name="apellidos_usuario"  id="apellidos_usuario" value="<%=apellidos_usuario%>" size="30"  class="material-control tooltips-general input-check-user" placeholder="Ingrese apellidos"  data-toggle="tooltip" data-placement="top" title="Ingrese apellidos" onkeypress="return tabE(this, event)">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Ingrese Apellidos</label>
                                    </div>                                    
                                    <div class="group-material">
                                        <input type="text" name="celular_usuario"  id="celular_usuario" value="<%=celular_usuario%>" size="30"  class="material-control tooltips-general input-check-user" placeholder="Ingrese numero celular"  data-toggle="tooltip" data-placement="top" title="Escribe numero celular" onkeypress="return tabE(this, event)">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Celular Usuario</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="group-material">
                                        <select  name="id_tipo_documento" id="id_tipo_documento" value="<%=id_tipo_documento%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige Tipo Documento" onkeypress="return tabE(this, event)">
                                            <%

                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT id_tipo_documento, nombre_tipo FROM  tipo_documento WHERE id_tipo_documento IN('1', '2')";
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
                                    <div class="group-material">
                                        <input type="text" name="n_documento_usuario"  id="n_documento_usuario" value="<%=n_documento_usuario%>" size="30"  class="material-control tooltips-general input-check-user" placeholder="Ingrese numero documento"  data-toggle="tooltip" data-placement="top" title="Escribe numero documento" onkeypress="return tabF(this, event)">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Numero documento</label>
                                    </div>
                                    <div class="group-material">
                                        <select  name="id_estado_usuario" id="id_estado_usuario" value="<%=id_estado_usuario%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una opcion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
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
                                        <select  name="id_rol" id="id_rol" value="<%=id_rol%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige un rol" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            <%

                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT id_rol, nombre_rol FROM  rol WHERE  id_rol = 2;";
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
                                    <div class="group-material">
                                        <input type="text" name="correo_usuario"  id="correo_usuario" value="<%=correo_usuario%>" size="30"  class="material-control tooltips-general input-check-user" placeholder="Ingrese correo electornico"  data-toggle="tooltip" data-placement="top" title="Escribe el correo electronico" onkeypress="return tabE(this, event)">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Correo Usuario</label>
                                    </div>

                                    <center>
                                        <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                                    </center>
                                    <p class="text-center">
                                        <button type="button" title="Guardar" value="guardar" onclick="validarCampos()"  class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                                        <button  name="guardar" type="submit"  style="display: none;" id="guardar"></button>
                                        <button type="submit" title="Limpiar" name="limpiar" value="limpiar" id="limpiar" class="btn btn-primary"><i class="zmdi fa  fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                                    </p> 
                                </div>
                            </div>
                        </div>
                    </div>                             
                </div>
                <jsp:include page="pie_pagina.jsp" />  
            </form>
        </div>
        <!--------------------------------FIN DISEÑO DEL FORMULARIO REGISTRAR BITACORA DIARIA--------------------->
    </body>
</html>
