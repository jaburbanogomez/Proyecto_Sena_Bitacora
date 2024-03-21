<%@page import="conexion_bd.Asignar_Titulacion"%>
<%@page import="conexion_bd.Asignar_Titulacion_CRUD"%>
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
        <title>Asignar Titulacion Instructor</title>
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
            function meth(id_usuario, id_titulacion) {
                document.getElementById("id_usuario").value = id_usuario;
                document.getElementById("id_titulacion").value = id_titulacion;
            }
            function validarCampos() {
                var id_titulacion = document.getElementById("id_titulacion").value;
                if (id_titulacion === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR TITULACION ";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "ESPERE UN MOMENTO...";
                    document.getElementById("mensajeScripts").innerHTML = document.getElementById("mensaje_val").value;
                    setTimeout("enviardate()", 1500);
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
            if (top.location !== self.location)
                top.location = self.location;
        </script>
        <script type="text/javascript">
            shortcut.add("F12", function () {
            });

        </script>
    </head>
    <body oncontextmenu="return false">
        <jsp:include page="menu_admin_area.jsp" />
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
            String id_centro = "";
            String id_titulacion = "";
            String id_usuario = "";
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
            id_titulacion = request.getParameter("id_titulacion");
            id_usuario = request.getParameter("id_usuario");
            if (guardar) {
                Asignar_Titulacion_CRUD misDatos = new Asignar_Titulacion_CRUD();// de esta manera tenemos conexion a la base de datos
                Asignar_Titulacion miTitulacion = misDatos.consultarInstructor_ttl(id_usuario, id_titulacion);
                if (miTitulacion != null) {
                    mensaje = "TITULACION YA ESTA ASIGNADA A ESTE INSTRUCTOR";
                } else {
                    miTitulacion = new Asignar_Titulacion(
                            new Integer(id_titulacion),
                            new Integer(id_usuario));

                    misDatos.nuevoInstructor_ttl(miTitulacion);
                    mensaje = "TITULACION ASIGNADA CORRECTAMENTE";
                    id_titulacion = "";
                    id_usuario = "";
                }
                misDatos.cerrarconexion();
            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int area_id;
            area_id = ob.retornarid_area();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!---------------------------Asignar titulacion----------------------------------------------->
        <div class="res">
            <form class="form-horizontal" action="Asignar_titulacion.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Asignar Titulacion Instructor</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_usuario" id="id_usuario"  style="display:none;" value="<%=usu%>" /> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2" >Titulacion:</label>
                                    <div class="col-xs-7">
                                        <select  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una titulacion" style="cursor:pointer;" title="" onkeypress="return tabE(this, event)">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT id_area, id_titulacion,  nombre_titulacion FROM titulacion WHERE id_area = '" + area_id + "'";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sql);
                                                    while (cn.rt.next()) {
                                                        out.println("<option value='" + cn.rt.getString(2) + "'>" + cn.rt.getString(3) + "</option>");
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
                                <input style="display: none;" type="text" class="form-control" name="mensaje_val" id="mensaje_val"   value="<%=mensaje%>" />  
                                <div id="mensajeScript" style="color:#fc7323"></div> 
                            </center>
                            <div class="form-group">
                                <div class="col-xs-12" ALIGN=left > <center>
                                        <div><input title="Guardar" type="button" class="btn btn-info" style="cursor:pointer;" onclick="validarCampos()"  value="GUARDAR"/></div>
                                        <input type="submit" style="display: none;" name="guardar" id="guardar">
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---------------------------Tabla Asignar titulacion----------------------------------------------->
                <div class="content-page-container full-reset custom-scroll-containers">
                    <div class="container-fluid">
                        <div class="container-flat-form">
                            <div class="container-fluid">
                                <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                    <li role="presentation"  class="active"><a href="Asignar_titulacion.jsp">Asignar Titulacion Instructor</a></li>
                                    <li role="presentation"><a href="Consultar_instructor_titulacion.jsp">Actualizar / Eliminar Titulacion Asignada</a></li>
                                </ul>
                            </div>
                            <center>
                                <div  id="mensajeScripts" style="color:#fc7323; margin-top: 20px;">
                                    <strong><%=mensaje%></strong>
                                </div>
                            </center>
                            <div class="main main-raised">
                                <div class="profile-content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="profile">
                                                <div class="name">
                                                    <div id='1' >
                                                        <div class="title-flat-form title-flat-blue">Asignar Titulacion A Instructor</div>

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
                                                                        <th class="col-sm-1">Documento</th>                                                               
                                                                        <th class="col-sm-1">Nombres</th>
                                                                        <th class="col-sm-1">Apellidos</th>
                                                                        <th class="col-sm-1">Celular</th>
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
                                                                    </tr> 
                                                                    <%
                                                                        try {
                                                                            cn.control();
                                                                            String sql = "SELECT  usuarios.id_usuario, centros.id_centro, centros.nombre_centro,  rol.id_rol, rol.nombre_rol, tipo_documento.id_tipo_documento,  tipo_documento.nombre_tipo, usuarios.n_documento_usuario,  usuarios.nombres_usuario, usuarios.apellidos_usuario, usuarios.celular_usuario,  estado_usuario.id_estado_usuario,  estado_usuario.nombre_estado_usuario, usuarios.correo_usuario FROM  usuarios INNER JOIN  centros ON centros.id_centro = usuarios.id_centro INNER JOIN  rol ON rol.id_rol = usuarios.id_rol INNER JOIN  estado_usuario ON estado_usuario.id_estado_usuario =  usuarios.id_estado_usuario INNER JOIN   tipo_documento ON tipo_documento.id_tipo_documento =     usuarios.id_tipo_documento WHERE  centros.id_centro = '" + centro + "' AND  rol.id_rol = 4 ORDER BY usuarios.id_usuario desc ";
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
                                                                                out.println("<td>" + cn.rt.getString("n_documento_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombres_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("apellidos_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("celular_usuario") + "</td>");
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
            </form>
        </div>
    </body>
</html>

