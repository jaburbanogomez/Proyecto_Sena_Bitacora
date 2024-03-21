<%@page import="conexion_bd.Actualizar_Titulacion_Instructor"%>
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
        <title>Actualizar o Eliminar Titulacion Asignada</title>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({

                });
            });
            function llenar() {
                var id = document.getElementById("id_titulacion").value;
                alert(id);
            }
        </script>        
        <script type="text/javascript">
            function meth(id_instructor_ttl, id_titulacion, nombres_usuario, apellidos_usuario) {
                document.getElementById("id_instructor_ttl").value = id_instructor_ttl;
                document.getElementById("id_titulacion").value = id_titulacion;
                document.getElementById("nombres_usuario").value = nombres_usuario;
                document.getElementById("apellidos_usuario").value = apellidos_usuario;
            }
            function validarCampos1() {
                var id_titulacion = document.getElementById("id_titulacion").value;
                if (id_titulacion === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR TITULACION ";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "CAMBIO REALIZADO EXITOSAMENTE";
                    // var d=document.getElementById("actualiza").value;
                    setTimeout("enviardate1()", 1500);
                    // setTimeout(enviardate(), 8100); 
                }
            }
            function validarCampos2() {
                var id_titulacion = document.getElementById("id_titulacion").value;
                var mensaje = confirm("¿QUIERES ELIMINAR ESTA TITULACION ASIGNADA?");
                if (id_titulacion === "" ) {
                    document.getElementById("mensajeScript2").innerHTML = "DEBE SELECCIONAR TITULACION ";
                } else if (mensaje) {
                    
                    document.getElementById("mensajeScript2").innerHTML = "ESPERE UN MOMENTO...";
                    document.getElementById("mensajeScripts").innerHTML = document.getElementById("mensaje_val").value;
                    setTimeout("enviardate2()", 1500);
                } else {
                    
                } 
            }
            function enviardate1()
            {
                var submitBtn = document.getElementById('actualizar');
                submitBtn.click();
            }
            function enviardate2()
            {

                var submitBtn = document.getElementById('eliminar');
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
        <script type="text/javascript">
            function ConfirmDemo(){
//Ingresamos un mensaje a mostrar
                var mensaje = confirm("¿Te gusta Desarrollo Geek?");
//Detectamos si el usuario acepto el mensaje
                if (mensaje) {
                    alert("¡Gracias por aceptar!");
                }
//Detectamos si el usuario denegó el mensaje
                else {
                    alert("¡Haz denegado el mensaje!");
                }
            }
        </script>
    </head>
    <body oncontextmenu="return false">
        <jsp:include page="menu_admin_area.jsp" />
        <%
            String mensajes = "";
            String mensaje = "";
            boolean eliminar = false;
            boolean actualizar = false;
            if (request.getParameter("actualizar") != null) {
                actualizar = true;
            }
            if (request.getParameter("eliminar") != null) {
                eliminar = true;
            }
            String id_titulacion = "";
            String n_documento_usuario = "";
            String nombres_usuario = "";
            String apellidos_usuario = "";
            String celular_usuario = "";
            String correo_usuario = "";
            String id_centro = "";
            String id_instructor_ttl = "";
            if (request.getParameter("id_instructor_ttl") != null) {
                id_instructor_ttl = request.getParameter("id_instructor_ttl");
            }
            if (request.getParameter("id_titulacion") != null) {
                id_titulacion = request.getParameter("id_titulacion");
            }
            String ttl = "";
            ttl = request.getParameter("id_instructor_ttl");
            id_titulacion = request.getParameter("id_titulacion");
            if (actualizar) {
                Asignar_Titulacion_CRUD misDatos = new Asignar_Titulacion_CRUD();
                Actualizar_Titulacion_Instructor miTitulacion = new Actualizar_Titulacion_Instructor(
                        new Integer(id_titulacion));
                miTitulacion.setId_intructor_ttl(Integer.parseInt(ttl));
                misDatos.updateTitulacion_ins(miTitulacion);
            }

            if (eliminar) {
                Asignar_Titulacion_CRUD misDatos = new Asignar_Titulacion_CRUD();
                Actualizar_Titulacion_Instructor miTitulacion = new Actualizar_Titulacion_Instructor(
                        new Integer(id_titulacion));
                miTitulacion.setId_intructor_ttl(Integer.parseInt(ttl));
                misDatos.eliminarTitulacion_ins(miTitulacion);
                mensajes = "REGISTRO ELIMINADO EXITOSAMENTE";
            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int area_id;
            area_id = ob.retornarid_area();

            int centro;
            centro = ob.retornarCentro();
        %>
        <!---------------------------Actualizar----------------------------------------------->
        <div class="res">
            <form class="form-horizontal" action="Consultar_instructor_titulacion.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar o Eliminar Titulacion Asignada</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_instructor_ttl" id="id_instructor_ttl"  style="display: none;" value="<%=ttl%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-4" >Titulacion:</label>
                                    <div class="col-xs-7">
                                        <select  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una titulacion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
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
                                <div class="form-group">
                                    <label class="control-label col-xs-4">Nombres Intructor(a):</label>
                                    <div class="col-xs-7">
                                        <input type="text" name="nombres_usuario" onfocus="this.blur()"  id="nombres_usuario" value="<%=nombres_usuario%>" title="Nombres Instructor(a)" onkeypress="return tabF(this, event)" autocomplete="off" class="material-control tooltips-general input-check-user" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-4">Apellidos Intsructor(a):</label>
                                    <div class="col-xs-7">
                                        <input type="text" name="apellidos_usuario" onfocus="this.blur()"  id="apellidos_usuario" value="<%=apellidos_usuario%>" title="Apellidos Instructor(a)" onkeypress="return tabF(this, event)" autocomplete="off" class="material-control tooltips-general input-check-user" >
                                    </div>
                                </div>
                            </div>
                            <center>
                                <input style="display: none;" type="text" class="form-control" name="mensaje_val" id="mensaje_val"   value="<%=mensajes%>" />  
                                <div id="mensajeScript" style="color:#fc7323"></div> 
                                <div id="mensajeScript2" style="color:#fc7323"></div>
                            </center>
                            <div class="form-group">
                                <div class="col-xs-12" ALIGN=left > 
                                    <center>
                                        <div><input title="Actualizar" style="cursor: pointer;"type="button" class="btn btn-info"  onclick="validarCampos1()"  value="ACTUALIZAR"></div>
                                        <input type="submit" style="display: none;"  name="actualizar" id="actualizar">
                                    </center>
                                </div>
                                <div class="col-xs-12" ALIGN=left > 
                                    <center>
                                        <div>
                                            <input title="Eliminar" style="cursor: pointer;" type="button" class="btn btn-info"  onclick="validarCampos2()"  value="ELIMINAR">
                                            <input type="submit" style="display: none;"  name="eliminar" id="eliminar">
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---------------------------Tabla Consultar Titulaciones----------------------------------------------->
                <div class="content-page-container full-reset custom-scroll-containers">
                    <div class="container-fluid">
                        <div class="container-flat-form">
                            <div class="container-fluid">
                                <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                    <li role="presentation"><a href="Asignar_titulacion.jsp">Asignar Titulacion Instructor</a></li>
                                    <li role="presentation"  class="active"><a href="Consultar_instructor_titulacion.jsp">Actualizar / Eliminar Titulacion Asignada</a></li>
                                </ul>
                            </div>
                            <center>
                                <div  id="mensajeScripts" style="color:#fc7323; margin-top: 20px;">
                                    <strong><%=mensajes%></strong>
                                </div>
                            </center>
                            <div class="main main-raised">
                                <div class="profile-content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="profile">
                                                <div class="name">
                                                    <div id='1' >
                                                        <div class="title-flat-form title-flat-blue">Actualizar/Eliminar Titulacion Asignada</div>
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
                                                                        <th class="col-sm-1">Titulacion</th>
                                                                        <th class="col-sm-1">N° Documento</th>                                                               
                                                                        <th class="col-sm-1">Nombres</th>
                                                                        <th class="col-sm-1">Primer Apellido</th>
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
                                                                    </tr> 
                                                                    <%
                                                                        try {
                                                                            cn.control();
                                                                            String sql = "SELECT instructores_titulacion.id_instructor_ttl, instructores_titulacion.id_titulacion, titulacion.nombre_titulacion, usuarios.n_documento_usuariO, usuarios.nombres_usuario, usuarios.apellidos_usuario, usuarios.celular_usuario, usuarios.correo_usuario,  usuarios.id_centro, areas.id_area FROM usuarios INNER JOIN instructores_titulacion ON instructores_titulacion.id_usuario = usuarios.id_usuario INNER JOIN  titulacion ON titulacion.id_titulacion =  instructores_titulacion.id_titulacion INNER JOIN areas ON areas.id_area = titulacion.id_area WHERE  usuarios.id_centro = '" + centro + "' AND  areas.id_area = '" + area_id + "'";
                                                                            cn.st = cn.con.createStatement();
                                                                            cn.rt = cn.st.executeQuery(sql);
                                                                            while (cn.rt.next()) {
                                                                                ttl = cn.rt.getString("id_instructor_ttl");
                                                                                id_titulacion = cn.rt.getString("id_titulacion");
                                                                                n_documento_usuario = cn.rt.getString("n_documento_usuario");
                                                                                nombres_usuario = cn.rt.getString("nombres_usuario");
                                                                                apellidos_usuario = cn.rt.getString("apellidos_usuario");
                                                                                celular_usuario = cn.rt.getString("celular_usuario");
                                                                                correo_usuario = cn.rt.getString("correo_usuario");
                                                                                out.println("<tr>");
                                                                                out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + ttl + "\",\"" + id_titulacion + "\",\"" + nombres_usuario + "\",\"" + apellidos_usuario + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\" ></td>\n ");
                                                                                out.println("<td>" + cn.rt.getString("nombre_titulacion") + "</td>");
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
        </div>
    </body>
</html>

