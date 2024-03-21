<%--   
    Author:BITACORA
--%>
<%@page import="conexion_bd.Instructores"%>
<%@page import="conexion_bd.Instructores_CRUD"%>
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
        <title>Actualizar Instructor</title>
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
            //METODO QUE LLENA LOS CAMPOS DEL FORMULARIO
            function meth(id_usuario, id_tipo_documento, n_documento_usuario, nombres_usuario, apellidos_usuario, celular_usuario, id_estado_usuario, correo_usuario, id_rol) {
                document.getElementById("id_usuario").value = id_usuario;
                document.getElementById("id_tipo_documento").value = id_tipo_documento;
                document.getElementById("n_documento_usuario").value = n_documento_usuario;
                document.getElementById("nombres_usuario").value = nombres_usuario;
                document.getElementById("apellidos_usuario").value = apellidos_usuario;
                document.getElementById("celular_usuario").value = celular_usuario;
                document.getElementById("id_estado_usuario").value = id_estado_usuario;
                document.getElementById("correo_usuario").value = correo_usuario;
                document.getElementById("id_rol").value = id_rol;
            }
            // FUNCION QUE VALIDA LOS CAMPOS VACIOS DEL FORMULARIO
            function validarCampos() {
                var id_tipo_documento = document.getElementById("id_tipo_documento").value;
                var n_documento_usuario = document.getElementById("n_documento_usuario").value;
                var nombres_usuario = document.getElementById("nombres_usuario").value;
                var apellidos_usuario = document.getElementById("apellidos_usuario").value;
                var celular_usuario = document.getElementById("celular_usuario").value;
                var id_estado_usuario = document.getElementById("id_estado_usuario").value;
                var correo_usuario = document.getElementById("correo_usuario").value;
                var id_rol = document.getElementById("id_rol").value;
                var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                if (id_tipo_documento === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL TIPO DOCUMENTO ";
                } else if (n_documento_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR EL NUMERO DOCUMENTO  ";
                } else if (nombres_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN NOMBRE";
                } else if (apellidos_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR LOS APELLIDOS";
                } else if (celular_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NUMERO DOCUMENTO ";
                } else if (id_estado_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR EL ESTADO ";
                } else if (correo_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CORREO ";
                } else if (id_rol === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER EL ROL ";
                } else if (!patron.test(correo_usuario)) {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN CORREO VALIDO";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "INSTRUCTOR ACTUALIZADO EXITOSAMENTE";
                    setTimeout("enviardate()", 1500);
                }
            }
            function enviardate()
            {
                var submitBtn = document.getElementById('actualiza');
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
                //patron = /[0-9\s]/;// -> solo letras
                patron = /[0-9\s]/;// -> solo numeros
                te = String.fromCharCode(tecla);
                return patron.test(te);
            }
        </script>
    </head>
    <body oncontextmenu="return false">
        <jsp:include page="menu_admin.jsp" />
        <%
            String mensaje = "";
            boolean actualizar = false;
            boolean limpiar = false;
            if (request.getParameter("actualizar") != null) {
                actualizar = true;
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
            String id_centro = "";
            if (request.getParameter("id_tipo_documento") != null) {
                id_tipo_documento = request.getParameter("id_tipo_documento");
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
            if (request.getParameter("id_estado_usuario") != null) {
                id_estado_usuario = request.getParameter("id_estado_usuario");
            }
            if (request.getParameter("correo_usuario") != null) {
                correo_usuario = request.getParameter("correo_usuario");
            }
            if (request.getParameter("id_rol") != null) {
                id_rol = request.getParameter("id_rol");
            }
            //Metodo limpiar
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
            //VARIABLES DEL METODO ACTUALIZAR
            String usu = "";
            //se llama por los name
            usu = request.getParameter("id_usuario");
            id_centro = request.getParameter("id_centro");
            id_tipo_documento = request.getParameter("id_tipo_documento");
            n_documento_usuario = request.getParameter("n_documento_usuario");
            nombres_usuario = request.getParameter("nombres_usuario");
            apellidos_usuario = request.getParameter("apellidos_usuario");
            celular_usuario = request.getParameter("celular_usuario");
            id_estado_usuario = request.getParameter("id_estado_usuario");
            correo_usuario = request.getParameter("correo_usuario");
            id_rol = request.getParameter("id_rol");
            if (actualizar) {
                Instructores_CRUD misDatos = new Instructores_CRUD();
                Instructores miInstructor = new Instructores(
                        n_documento_usuario,
                        nombres_usuario,
                        apellidos_usuario,
                        celular_usuario,
                        correo_usuario,
                        new Integer(id_rol),
                        new Integer(id_tipo_documento),
                        new Integer(id_estado_usuario));
                miInstructor.setId_usuario(Integer.parseInt(usu));
                misDatos.updateInstructor(miInstructor);
                mensaje = "";
            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!---------------------------Actualizar Instructor----------------------------------------------->
        <div class="res">
            <form class="form-horizontal" action="Actualizar_Instructor.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Datos Instructores</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_usuario" id="id_usuario"  style="display:none;" value="<%=usu%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-2" >Tipo Documento:</label>
                                    <div class="col-xs-7">
                                        <select  name="id_tipo_documento" id="id_tipo_documento" value="<%=id_tipo_documento%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elija un tipo de documento" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();

                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT  tipo_documento.id_tipo_documento, tipo_documento.nombre_tipo FROM  tipo_documento WHERE  tipo_documento.id_tipo_documento in('1','2')";
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
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2" >Documento:</label>
                                    <div class="col-xs-7">
                                        <input type="text" name="n_documento_usuario"  autocomplete="off" id="n_documento_usuario" value="<%=n_documento_usuario%>"  class="input-number material-control tooltips-general input-check-user"  data-toggle="tooltip" data-placement="top" title="Actualizar numero de documento" style="cursor:pointer;" onkeypress="return tabF(this, event)">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Nombres:</label>
                                    <div class="col-xs-7">
                                        <input type="text" name="nombres_usuario" autocomplete="off" id="nombres_usuario" value="<%=nombres_usuario%>"   class="material-control tooltips-general input-check-user"  data-toggle="tooltip" data-placement="top" title="Actualizar nombres del instructor"  style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    </div>
                                </div>                        
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Apellidos:</label>
                                    <div class="col-xs-7">
                                        <input type="text" name="apellidos_usuario" autocomplete="off" id="apellidos_usuario" value="<%=apellidos_usuario%>"   class="material-control tooltips-general input-check-user"  data-toggle="tooltip" data-placement="top" title="Actualizar apellidos del instructor " style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Celular</label>
                                    <div class="col-xs-7">
                                        <input type="text" name="celular_usuario" autocomplete="off"  id="celular_usuario" value="<%=celular_usuario%>"  class="material-control tooltips-general input-check-user"  data-toggle="tooltip" data-placement="top" title="Actualizar celular" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Estado Usuario</label>
                                    <div class="col-xs-7">
                                        <select  name="id_estado_usuario" id="id_estado_usuario" value="<%=id_estado_usuario%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elija estado estado del instructor" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            <%

                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT  estado_usuario.id_estado_usuario, estado_usuario.nombre_estado_usuario FROM  estado_usuario WHERE  estado_usuario.id_estado_usuario in('1','2')";

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
                                    </div>
                                </div>                          

                                <div class="form-group">
                                    <label class="control-label col-xs-2">Correo:</label>
                                    <div class="col-xs-7">
                                        <input type="text" name="correo_usuario"  autocomplete="off" id="correo_usuario" value="<%=correo_usuario%>"  class="material-control tooltips-general input-check-user"  data-toggle="tooltip" data-placement="top" title="Actualizar email" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="control-label col-xs-2">Rol:</label>
                                    <div class="col-xs-7">
                                        <select   name="id_rol" id="id_rol" value="<%=id_rol%>" class="material-control tooltips-general"   data-toggle="tooltip" data-placement="top" title="Elija un rol" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT id_rol, nombre_rol FROM rol WHERE id_rol = 4";
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
                                    </div>
                                </div>
                            </div>
                            <center>
                                <div id="mensajeScript" style="color:#fc7323"></div> 
                            </center>
                            <div class="form-group">
                                <div class="col-xs-12" ALIGN=left > <center>
                                        <div><input type="button" class="btn btn-info"  onclick="validarCampos()"  value="Actualizar"/></div>
                                        <input type="submit" style="display: none;"   name="actualizar" id="actualiza">
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---------------------------Tabla Actualizar Instructor----------------------------------------------->
                <div class="content-page-container full-reset custom-scroll-containers">
                    <div class="container-fluid">
                        <div class="container-flat-form">
                            <div class="container-fluid">
                                <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                    <li role="presentation" ><a href="Tabla_cordinador.jsp">Actualizar Cordinador</a></li>
                                    <li role="presentation" ><a href="Tabla_admin_area.jsp">Actualizar Admin Area</a></li>
                                    <li role="presentation" class="active"><a href="Actualizar_Instructor.jsp">Actualizar Instructores</a></li> 
                                    <li role="presentation"><a href="Actualizar_Aprendices.jsp">Actualizar Aprendices</a></li> 
                                </ul>
                            </div>
                            <div class="main main-raised">
                                <div class="profile-content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="profile">
                                                <div class="name">
                                                    <div id='1' >
                                                        <div class="title-flat-form title-flat-blue">Actualizar Instructores</div>
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
                                                                        <th class="col-sm-1">Editar</th>
                                                                        <th class="col-sm-1">Centro</th>
                                                                        <th class="col-sm-1">Rol</th>
                                                                        <th class="col-sm-1">Tipo Documento</th>
                                                                        <th class="col-sm-1">Documento</th>                                                               
                                                                        <th class="col-sm-1">Nombres</th>
                                                                        <th class="col-sm-1">Apellidos</th>                                                              
                                                                        <th class="col-sm-1">Celular</th>
                                                                        <th class="col-sm-1">Estado</th>
                                                                        <th class="col-sm-1">Correo</th>
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

                                                                            String sql = "SELECT  usuarios.id_usuario, centros.id_centro, centros.nombre_centro,  rol.id_rol, rol.nombre_rol, tipo_documento.id_tipo_documento,  tipo_documento.nombre_tipo, usuarios.n_documento_usuario,  usuarios.nombres_usuario,usuarios.apellidos_usuario, usuarios.celular_usuario,  estado_usuario.id_estado_usuario,  estado_usuario.nombre_estado_usuario, usuarios.correo_usuario FROM  usuarios INNER JOIN  centros ON centros.id_centro = usuarios.id_centro INNER JOIN  rol ON rol.id_rol = usuarios.id_rol INNER JOIN  estado_usuario ON estado_usuario.id_estado_usuario =  usuarios.id_estado_usuario INNER JOIN   tipo_documento ON tipo_documento.id_tipo_documento =     usuarios.id_tipo_documento WHERE  centros.id_centro = '" + centro + "' AND  rol.id_rol = 4 ORDER BY usuarios.id_usuario desc ";
                                                                            cn.st = cn.con.createStatement();
                                                                            cn.rt = cn.st.executeQuery(sql);
                                                                            while (cn.rt.next()) {
                                                                                usu = cn.rt.getString("id_usuario");
                                                                                id_centro = cn.rt.getString("id_centro");
                                                                                id_tipo_documento = cn.rt.getString("id_tipo_documento");
                                                                                n_documento_usuario = cn.rt.getString("n_documento_usuario");
                                                                                nombres_usuario = cn.rt.getString("nombres_usuario");
                                                                                apellidos_usuario = cn.rt.getString("apellidos_usuario");
                                                                                celular_usuario = cn.rt.getString("celular_usuario");
                                                                                id_estado_usuario = cn.rt.getString("id_estado_usuario");
                                                                                correo_usuario = cn.rt.getString("correo_usuario");
                                                                                id_rol = cn.rt.getString("id_rol");
                                                                                out.println("<tr>");
                                                                                out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + usu + "\",\"" + id_tipo_documento + "\",\"" + n_documento_usuario + "\",\"" + nombres_usuario + "\",\"" + apellidos_usuario + "\",\"" + celular_usuario + "\",\"" + id_estado_usuario + "\",\"" + correo_usuario + "\",\"" + id_rol + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\" ></td>\n ");
                                                                                out.println("<td>" + cn.rt.getString("nombre_centro") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_rol") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_tipo") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("n_documento_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombres_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("apellidos_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("celular_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_estado_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("correo_usuario") + "</td>");
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
        </div>
    </body>
</html>

