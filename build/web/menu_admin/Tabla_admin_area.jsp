<%@page import="conexion_bd.Admin_area"%>
<%@page import="conexion_bd.Admin_area_CRUD"%>
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
        <title>Actualizar Admin Area</title>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>      
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({                  
                });
            });
        </script>
        <script type="text/javascript">
            function meth(id_usuario, n_documento_usuario, nombres_usuario, apellidos_usuario, celular_usuario, correo_usuario, id_rol, id_tipo_documento, id_area, id_estado_usuario) {
                document.getElementById("id_usuario").value = id_usuario;
                document.getElementById("n_documento_usuario").value = n_documento_usuario;
                document.getElementById("nombres_usuario").value = nombres_usuario;
                document.getElementById("apellidos_usuario").value = apellidos_usuario;
                document.getElementById("celular_usuario").value = celular_usuario;
                document.getElementById("correo_usuario").value = correo_usuario;
                document.getElementById("id_rol").value = id_rol;
                document.getElementById("id_tipo_documento").value = id_tipo_documento;
                document.getElementById("id_area").value = id_area;
                document.getElementById("id_estado_usuario").value = id_estado_usuario;
            }
            function validarCampos() {
                var id_area = document.getElementById("id_area").value;
                if (id_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN AREA";
                } else {
                    enviardate();
                }
            }
            function enviardate()
            {
                var submitBtn = document.getElementById('consultar');
                submitBtn.click();
            }
            function validarC() {
                var n_documento_usuario = document.getElementById("n_documento_usuario").value;
                var nombres_usuario = document.getElementById("nombres_usuario").value;
                var apellidos_usuario = document.getElementById("apellidos_usuario").value;
                var celular_usuario = document.getElementById("celular_usuario").value;
                var correo_usuario = document.getElementById("correo_usuario").value;
                var id_rol = document.getElementById("id_rol").value;
                var id_tipo_documento = document.getElementById("id_tipo_documento").value;
                var id_area = document.getElementById("id_area").value;
                var id_estado_usuario = document.getElementById("id_estado_usuario").value;
                var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                if (n_documento_usuario === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR UN DOCUMENTO";
                } else if (nombres_usuario === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR NOMBRES ";
                } else if (apellidos_usuario === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR APELLIDOS";
                } else if (celular_usuario === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR NUMERO DOCUMENTO";
                } else if (correo_usuario === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR CORREO ";
                } else if (id_rol === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE SELECCIONAR ROL ";
                } else if (id_tipo_documento === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE SELECCIONAR TIPO DOCUMENTO ";
                } else if (id_area === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE SELECCIONAR AREA ";
                } else if (id_estado_usuario === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE SELECCIONAR ESTADO USUARIO ";
                } else if (!patron.test(correo_usuario)) {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR UN CORREO VALIDO";
                } else {
                    document.getElementById("mensajeScripts").innerHTML = "DATOS ACTUALIZADOS EXITOSAMENTE";
                    setTimeout("enviardates()", 1500);
                }
            }
            function enviardates()
            {
                var submitBtn = document.getElementById('actualiza');
                submitBtn.click();
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
                //patron = /[0-9\s]/;// -> solo letras
                patron = /[0-9\s]/;// -> solo numeros
                te = String.fromCharCode(tecla);
                return patron.test(te);
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
    </head>
    <body oncontextmenu="return false">
        <jsp:include page="menu_admin.jsp" />
        <%
            // variable que muestra los mensajes
            String mensaje = "";
            //declarar una variables que nos definan cual fue el boton que presionaron
            boolean guardar = false;
            boolean limpiar = false;
            boolean actualizar = false;
            if (request.getParameter("guardar") != null) {
                guardar = true;
            }
            if (request.getParameter("actualizar") != null) {
                actualizar = true;
            }
            if (request.getParameter("limpiar") != null) {
                limpiar = true;
            }
            // obtenemos el valor como fue llamado el formulario
            String n_documento_usuario = "";
            String nombres_usuario = "";
            String apellidos_usuario = "";
            String celular_usuario = "";
            String correo_usuario = "";
            String id_rol = "";
            String id_tipo_documento = "";
            String id_area = "";
            String id_estado_usuario = "";
            // obtenemos los valores y validamos si estas variables estan
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
            if (request.getParameter("id_rol") != null) {
                id_rol = request.getParameter("id_rol");
            }
            if (request.getParameter("id_tipo_documento") != null) {
                id_tipo_documento = request.getParameter("id_tipo_documento");
            }
            if (request.getParameter("id_area") != null) {
                id_area = request.getParameter("id_area");
            }
            if (request.getParameter("id_estado_usuario") != null) {
                id_estado_usuario = request.getParameter("id_estado_usuario");
            }
            String id_usu = "";
            id_usu = request.getParameter("id_usuario");
            n_documento_usuario = request.getParameter("n_documento_usuario");
            nombres_usuario = request.getParameter("nombres_usuario");
            apellidos_usuario = request.getParameter("apellidos_usuario");
            celular_usuario = request.getParameter("celular_usuario");
            correo_usuario = request.getParameter("correo_usuario");
            id_rol = request.getParameter("id_rol");
            id_tipo_documento = request.getParameter("id_tipo_documento");
            id_area = request.getParameter("id_area");
            id_estado_usuario = request.getParameter("id_estado_usuario");
            //Metodo guardar  
            if (actualizar) {
                Admin_area_CRUD misDatos = new Admin_area_CRUD();
                Admin_area miAdmin = new Admin_area(
                        n_documento_usuario,
                        nombres_usuario,
                        apellidos_usuario,
                        celular_usuario,
                        correo_usuario,
                        new Integer(id_rol),
                        new Integer(id_tipo_documento),
                        new Integer(id_area),
                        new Integer(id_estado_usuario));
                miAdmin.setId_usuario(Integer.parseInt(id_usu));
                misDatos.updateAdmin_area(miAdmin);
                mensaje = "";
            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro_id = 0;
            centro_id = ob.retornarCentro();
        %>
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO Actualizar Cordinador--------------------->
        <div class="res">
            <form class="form-horizontal"   action="Tabla_admin_area.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Datos Admin Area</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_usuario" id="id_usuario" value="<%=id_usu%>" style="display: none"/> 
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Numero Documento:</label>
                                    <div class="col-xs-5">
                                        <input autocomplete="off" type="text" name="n_documento_usuario" id="n_documento_usuario" value="<%=n_documento_usuario%>" title="Edite numero documento" onkeypress="return tabF(this, event)" class="material-control tooltips-general input-check-user" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Nombres:</label>
                                    <div class="col-xs-5">
                                        <input autocomplete="off" type="text" name="nombres_usuario" id="nombres_usuario" value="<%=nombres_usuario%>" title="Edita nombres" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Apellidos:</label>
                                    <div class="col-xs-5">
                                        <input autocomplete="off" type="text" name="apellidos_usuario" id="apellidos_usuario" value="<%=apellidos_usuario%>" title="Edite Apellidos" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Numero Celular:</label>
                                    <div class="col-xs-5">
                                        <input autocomplete="off" type="text" name="celular_usuario" id="celular_usuario" value="<%=celular_usuario%>" title="Edite numero celular" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Correo:</label>
                                    <div class="col-xs-5">
                                        <input autocomplete="off" type="text" name="correo_usuario" id="correo_usuario" value="<%=correo_usuario%>" title="Edite correo" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Rol: </label>
                                    <div class="col-xs-5">
                                        <select  name="id_rol" id="id_rol" value="id_rol" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige rol" onkeypress="return tabE(this, event)">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();
                                                String f = request.getParameter("id_ficha_modal");
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sqlS = "SELECT id_rol, nombre_rol FROM  rol WHERE id_rol = 2;";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sqlS);
                                                    while (cn.rt.next()) {
                                                        out.println("<option value='" + cn.rt.getString(1) + "'>" + cn.rt.getString(2) + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e.toString());
                                                }
                                            %>
                                        </select>
                                    </div>                                     
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Tipo Documento: </label>
                                    <div class="col-xs-5">
                                        <select  name="id_tipo_documento" id="id_tipo_documento" value="" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige tipo documeto" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sqlS = "SELECT id_tipo_documento, nombre_tipo FROM  tipo_documento WHERE id_tipo_documento IN('1', '2')";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sqlS);
                                                    while (cn.rt.next()) {
                                                        out.println("<option value='" + cn.rt.getString(1) + "'>" + cn.rt.getString(2) + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e.toString());
                                                }
                                            %>
                                        </select>
                                    </div>                                     
                                </div>                          
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Area: </label>
                                    <div class="col-xs-5">
                                        <select  name="id_area" id="id_area" value="<%=id_area%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige un area" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sqlS = "SELECT areas.id_area, areas.nombre_area, areas.id_centro FROM areas INNER JOIN centros ON centros.id_centro = areas.id_centro WHERE areas.id_centro = '" + centro_id + "'";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sqlS);
                                                    while (cn.rt.next()) {
                                                        out.println("<option value='" + cn.rt.getString(1) + "'>" + cn.rt.getString(2) + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e.toString());
                                                }
                                            %>
                                        </select>
                                    </div>                                     
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-5">Estado Usuario: </label>
                                    <div class="col-xs-5">
                                        <select  name="id_estado_usuario" id="id_estado_usuario" value="" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una opcion" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sqlS = "SELECT id_estado_usuario, nombre_estado_usuario FROM estado_usuario WHERE  id_estado_usuario IN('1', '2')";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sqlS);
                                                    while (cn.rt.next()) {
                                                        out.println("<option value='" + cn.rt.getString(1) + "'>" + cn.rt.getString(2) + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e.toString());
                                                }
                                            %>
                                        </select>
                                    </div>                                     
                                </div>
                            </div>
                            <center>
                                <div id="mensajeScripts" style="color:#fc7323"></div> 
                            </center>
                            <div class="form-group">
                                <div class="col-xs-12" ALIGN=left > <center>
                                        <div><input type="button" class="btn btn-info"  onclick="validarC()"  value="Actualizar"/></div>
                                        <input type="submit" style="display: none;"   name="actualizar" id="actualiza">
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
                <!---------------------------formulario Actualizar Admin Area----------------------------------------------->
                <div class="content-page-container full-reset custom-scroll-containers" >
                    <div class="container-fluid">
                        <div class="container-flat-form">
                            <div class="container-fluid">
                                <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                    <li role="presentation" ><a href="Tabla_cordinador.jsp">Actualizar Cordinador</a></li>
                                    <li role="presentation" class="active"><a href="Tabla_admin_area.jsp">Actualizar Admin Area</a></li>
                                    <li role="presentation"><a href="Actualizar_Instructor.jsp">Actualizar Instructores</a></li> 
                                    <li role="presentation"><a href="Actualizar_Aprendices.jsp">Actualizar Aprendices</a></li> 
                                </ul>
                            </div>
                            <div class="title-flat-form title-flat-blue">Actualizar Admin Area</div>
                            <!---------------------------Tabla Actualizar Admin Area----------------------------------------------->
                            <div class="main main-raised">
                                <div class="profile-content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="profile">
                                                <div class="name">
                                                    <div id='1' >
                                                        <div class="alert alert-info" style="display:none" id="msm_alert">
                                                            <div class="container-fluid">
                                                                <div class="alert-icon">
                                                                    <i class="material-icons"></i>
                                                                </div>
                                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                    <span aria-hidden="true"><i class="material-icons">clear</i></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="table-responsive">
                                                            <table id="example" class="display" cellspacing="0" width="100%">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="col-sm-1">Aplicar</th>
                                                                        <th class="col-sm-1">Numero Documento</th>
                                                                        <th class="col-sm-1">Nombres</th>
                                                                        <th class="col-sm-1">Apellidos</th>
                                                                        <th class="col-sm-1">Numero celular</th>
                                                                        <th class="col-sm-1">Correo</th>
                                                                        <th class="col-sm-1">Rol</th>  <%--/*no actualizar*/--%>
                                                                        <th class="col-sm-1">Tipo Documento</th>
                                                                        <th class="col-sm-1">Nombre Area</th>
                                                                        <th class="col-sm-1">Estado Usuario</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr style="display:none;">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr> 
                                                                    <%
                                                                        try {
                                                                            cn.control();
                                                                            String sql = "SELECT usuarios.id_usuario, usuarios.n_documento_usuario, usuarios.nombres_usuario, usuarios.apellidos_usuario, usuarios.celular_usuario, usuarios.correo_usuario, usuarios.id_rol, rol.nombre_rol, usuarios.id_tipo_documento, tipo_documento.nombre_tipo, usuarios.id_centro, usuarios.id_area, areas.nombre_area,  usuarios.id_estado_usuario, estado_usuario.id_estado_usuario, estado_usuario.nombre_estado_usuario FROM  usuarios INNER JOIN  tipo_documento ON tipo_documento.id_tipo_documento =    usuarios.id_tipo_documento INNER JOIN  estado_usuario ON usuarios.id_estado_usuario =    estado_usuario.id_estado_usuario INNER JOIN  centros ON usuarios.id_centro = centros.id_centro INNER JOIN  rol ON rol.id_rol = usuarios.id_rol INNER JOIN  areas ON usuarios.id_area = areas.id_area WHERE  usuarios.id_rol = 2 AND  usuarios.id_centro ='" + centro_id + "'";
                                                                            cn.st = cn.con.createStatement();
                                                                            cn.rt = cn.st.executeQuery(sql);
                                                                            while (cn.rt.next()) {
                                                                                id_usu = cn.rt.getString("id_usuario");
                                                                                n_documento_usuario = cn.rt.getString("n_documento_usuario");
                                                                                nombres_usuario = cn.rt.getString("nombres_usuario");
                                                                                apellidos_usuario = cn.rt.getString("apellidos_usuario");
                                                                                celular_usuario = cn.rt.getString("celular_usuario");
                                                                                correo_usuario = cn.rt.getString("correo_usuario");
                                                                                id_rol = cn.rt.getString("id_rol");
                                                                                id_tipo_documento = cn.rt.getString("id_tipo_documento");
                                                                                id_area = cn.rt.getString("id_area");
                                                                                id_estado_usuario = cn.rt.getString("id_estado_usuario");
                                                                                out.println("<tr>");
                                                                                out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + id_usu + "\",\"" + n_documento_usuario + "\",\"" + nombres_usuario + "\",\"" + apellidos_usuario + "\",\"" + celular_usuario + "\",\"" + correo_usuario + "\",\"" + id_rol + "\",\"" + id_tipo_documento + "\",\"" + id_area + "\",\"" + id_estado_usuario + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\" ></td>\n");
                                                                                out.println("<td>" + cn.rt.getString("n_documento_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombres_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("apellidos_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("celular_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("correo_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_rol") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_tipo") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_area") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_estado_usuario") + "</td>");
                                                                                out.println("</tr>");
                                                                            }
                                                                        } catch (Exception e) {
                                                                            out.print(e.toString());
                                                                        }
                                                                    %>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                                  
                    <jsp:include page="pie_pagina.jsp" />
                </div>
            </form>
        </div>    
    </body>
</html>
