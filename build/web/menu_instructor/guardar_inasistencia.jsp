<%@page import="conexion_bd.guardar_inasistencia"%>
<%@page import="conexion_bd.guardar_inasistencia_CRUD"%>
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
            response.sendRedirect("../index/index.jsp");//lo devuelve a index y no al menu
//request.getRequestDispatcher("../index/index.jsp").forward(request, response);
        }
    } catch (Exception e) {
        response.sendRedirect("../index/index.jsp");
//request.getRequestDispatcher("../index/index.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Inasistencia</title>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <link href="css/border-radius.css" rel="stylesheet" type="text/css"/>
        <link href="css/steel/steel.css" rel="stylesheet" type="text/css"/>
        <link href="css/jscal2.css" rel="stylesheet" type="text/css"/>
        <script src="js/jscal2.js" type="text/javascript"></script>
        <script src="js/es.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({

                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#id_titulacion').change(function (event) {
                    $.post('../cargar2', {
                        titulacion: $('#id_titulacion').val()
                    }, function (responseText) {
                        $('#id_ficha').html(responseText);
                    });
                });
            });
            function meth(id_usuario) {
                document.getElementById("id_usuario").value = id_usuario;
            }
            function validarCamp() {
                var id_titulacion = document.getElementById("id_titulacion").value;
                var id_ficha = document.getElementById("id_ficha").value;
                if (id_titulacion === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA TITULACION";
                } else if (id_ficha === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA FICHA";
                } else {
                    enviardate();
                }
            }
            function enviardate()
            {
                var submitBtn = document.getElementById('consultar');
                submitBtn.click();
            }
            function validarCampos() {
                var fecha_inasistencia = document.getElementById("fecha_inasistencia").value;
                var id_jornada = document.getElementById("id_jornada").value;
                var observacion_inasistencia = document.getElementById("observacion_inasistencia").value;
                if (fecha_inasistencia === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR UNA FECHA DE REGISTRO";
                } else if (id_jornada === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE SELECCIONAR UNA JORNADA";
                } else if (observacion_inasistencia === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE INGRESAR OBSERVACIONES";
                } else {
                    document.getElementById("mensajeScripts1").innerHTML = "ESPEREME UN MOMENTO...";
                    document.getElementById("mensajeScripts").innerHTML = document.getElementById("mensaje_val").value;
                    // var d=document.getElementById("actualiza").value;
                    setTimeout("enviardates()", 1500);
                    // setTimeout(enviardate(), 8100); 
                }
            }
            function enviardates()
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
            function validar() {
                var id = document.getElementById("id_ficha").value;
                alert(id);
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
        <jsp:include page="menu_instructor.jsp" />       
        <%
            String mensajes = "";
            String mensaje = "";
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
            String id_usuario = "";
            String fecha_inasistencia = "";
            String id_jornada = "";
            String observacion_inasistencia = "";
            String n_documento_usuario = "";
            String nombres_usuario = "";
            String apellidos_usuario = "";
            String celular_usuario = "";
            String correo_usuario = "";
            String id_rol = "";
            String id_titulacion = "";
            String id_ficha = "";
            int id = 0;
            if (request.getParameter("n_documento_usuario") != null) {
                n_documento_usuario = request.getParameter("n_documento_usuario");
            }
            if (request.getParameter("nombres_usuario") != null) {
                nombres_usuario = request.getParameter("nombres_usuario");
            }
            if (request.getParameter("apellidos_usuario") != null) {
                apellidos_usuario = request.getParameter("apellidos_usuario");
            }
            if (request.getParameter("id_ficha") != null) {
                id_ficha = request.getParameter("id_ficha");
                id = Integer.parseInt(request.getParameter("id_ficha"));
            }
            if (request.getParameter("id_rol") != null) {
                id_rol = request.getParameter("id_rol");
            }
            String id_usu = "";
            if (request.getParameter("id_usuario") != null) {
                id_usu = request.getParameter("id_usuario");
            }
            if (request.getParameter("id_usuario") != null) {
                id_usuario = request.getParameter("id_usuario");
            }
            if (request.getParameter("fecha_inasistencia") != null) {
                fecha_inasistencia = request.getParameter("fecha_inasistencia");
            }
            if (request.getParameter("id_jornada") != null) {
                id_jornada = request.getParameter("id_jornada");
            }
            if (request.getParameter("observacion_inasistencia") != null) {
                observacion_inasistencia = request.getParameter("observacion_inasistencia");
            }
            if (guardar) {
                guardar_inasistencia_CRUD misdatos = new guardar_inasistencia_CRUD();// de esta manera tenemos conexion a la base de datos
                guardar_inasistencia miInacistencia = misdatos.consultarInasistencia(id_jornada, id_usuario, fecha_inasistencia);
                if (miInacistencia != null) {
                    mensajes = "LA INASISTENCIA YA ESTA REGISTRADA";
                } else {
                    miInacistencia = new guardar_inasistencia(
                            new Integer(id_usuario),
                            fecha_inasistencia,
                            new Integer(id_jornada),
                            observacion_inasistencia);

                    misdatos.nuevoInasistencia(miInacistencia);
                    mensajes = "REGISTRO GUARDADO EXITOSAMENTE";
                    id_usuario = "";
                    fecha_inasistencia = "";
                    id_jornada = "";
                    observacion_inasistencia = "";
                }
            }
        %>
        <%
            Conexion_bd cn = new Conexion_bd();
            Usuario_CRUD ob = new Usuario_CRUD();
            int Captura_id_usuario;
            Captura_id_usuario = ob.retornarUsuario();
        %>
        <div class="res">
            <form class="form-horizontal" action="guardar_inasistencia.jsp"  method="POST">
                <!---------------------------Guardar inasistencia----------------------------------------------->
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">               
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Registrar Inasistencia</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_usuario" id="id_usuario"  style="display:none;" value="<%=id_usu%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Fecha Inasistencia:</label>
                                    <div class="col-xs-7">
                                        <div class="row">
                                            <div class="col-md-10">
                                                <input name="fecha_inasistencia" onfocus="this.blur()"  id="fecha_inasistencia" value="<%=fecha_inasistencia%>" data-toggle="tooltip" data-placement="top" title="Actualizar la fecha de inasistencia" class="material-control tooltips-general input-check-user" onkeypress="return tabE(this, event)">
                                            </div>
                                            <div class="col-md-2">
                                                <button id="f_rangeStart_trigger" class="glyphicon glyphicon-calendar" ></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Jornada:</label>
                                    <div class="col-xs-5">
                                        <select  name="id_jornada" id="id_jornada" onclick=""  value="<%=id_jornada%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" title="Elija Jornada" class="material-control tooltips-general">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT jornada.id_jornada, jornada.jornada FROM jornada";
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
                                    <label class="control-label col-xs-2">Observaciones:</label>
                                    <div class="col-xs-5">
                                        <textarea  name="observacion_inasistencia" id="observacion_inasistencia" value="<%=observacion_inasistencia%>" class="material-control tooltips-general input-check-user" autocomplete="off" title="Ingrese Observaciones" onkeypress="return tabE(this, event)"></textarea>
                                    </div>
                                </div>
                            </div>
                            <center>
                                <input style="display: none;" type="text" class="form-control" name="mensaje_val" id="mensaje_val"   value="<%=mensajes%>" />  
                                <div id="mensajeScripts1" style="color:#fc7323"></div> 
                                <div id="mensajeScripts" style="color:#fc7323"></div> 
                            </center>
                            <div class="form-group">
                                <div class="col-xs-12" ALIGN=left > 
                                    <center>
                                        <div><input title="Guardar" type="button" class="btn btn-info"  onclick="validarCampos()"  value="GUARDAR"/></div>
                                        <input type="submit" style="display: none;"   name="guardar" id="guardar">
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---------------------------Consultar Aprendices----------------------------------------------->
                <div class="content-page-container full-reset custom-scroll-containers">
                    <div class="container-fluid">
                        <div class="container-flat-form">
                            <div class="container-fluid">
                                <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">                                    
                                    <li role="presentation"  class="active"><a href="guardar_inasistencia.jsp">Registrar Inasistencia</a></li> 
                                    <li role="presentation"><a href="Actualizar_inasistencia.jsp">Actualizar Inasistencia</a></li>  
                                    <li role="presentation"><a href="Asignar_Aprendiz.jsp">Asignar Aprendiz Lider</a></li>
                                </ul>
                            </div>
                            <div class="title-flat-form title-flat-blue">Registrar Inasistencias</div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                    <div class="col-md-6">
                                        <div class="group-material">
                                            <select  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una titulacion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                                <%
                                                    try {
                                                        out.println("<option value=''>:.</option>");
                                                        cn.control();
                                                        String sql = "SELECT  usuarios.id_usuario, titulacion.id_titulacion,  titulacion.nombre_titulacion, usuarios.nombres_usuario FROM  instructores_titulacion INNER JOIN  usuarios ON usuarios.id_usuario = instructores_titulacion.id_usuario  INNER JOIN  titulacion ON titulacion.id_titulacion = instructores_titulacion.id_titulacion WHERE usuarios.id_usuario ='" + Captura_id_usuario + "'";

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
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Titulacion</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="group-material">
                                            <select  name="id_ficha" id="id_ficha" value="<%=id_ficha%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una ficha" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            </select>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Ficha</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                    <center>
                                        <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div>
                                        <div id="mensajeScripts" style="color:#fc7323">                                        
                                            <strong><%=mensajes%></strong>                                          
                                        </div>
                                    </center>

                                    <p class="text-center">
                                        <button type="button"   onclick="validarCamp()"  class="btn btn-primary"><i class="zmdi fa fa-search"></i> &nbsp;&nbsp; Consultar Aprendices</button>
                                        <button   type="submit"  style="display: none;" id="consultar"></button>
                                    </p> 
                                </div>
                            </div>
                            <div id='oculto' style="display: none;"></div>
                            <!---------------------------Tabla con aprendices----------------------------------------------->
                            <div class="main main-raised">
                                <div class="profile-content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="profile">
                                                <div class="name">
                                                    <div id='1' >
                                                        <div class="title-flat-form title-flat-blue">Listado Aprendices</div>
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
                                                                        <th class="col-sm-1">Ficha Programa</th>
                                                                        <th class="col-sm-1">Documento</th>
                                                                        <th class="col-sm-1">Aprendiz</th>                                                                   
                                                                        <th class="col-sm-1">Rol</th> 
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr style="display:none;">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr> 
                                                                    <%
                                                                        try {
                                                                            cn.control();
                                                                            String sql = "SELECT  usuarios.id_usuario, fichas.id_ficha, fichas.ficha_programa,  usuarios.n_documento_usuario, usuarios.nombres_usuario,  usuarios.apellidos_usuario, rol.id_rol, rol.nombre_rol FROM  usuarios INNER JOIN   rol ON rol.id_rol = usuarios.id_rol INNER JOIN   fichas ON fichas.id_ficha = usuarios.id_ficha WHERE  fichas.id_ficha = '" + id + "' ";
                                                                            cn.st = cn.con.createStatement();
                                                                            cn.rt = cn.st.executeQuery(sql);
                                                                            while (cn.rt.next()) {
                                                                                id_usu = cn.rt.getString("id_usuario");
                                                                                id_rol = cn.rt.getString("id_rol");
                                                                                id_ficha = cn.rt.getString("id_ficha");
                                                                                out.println("<tr>");
                                                                                out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + id_usu + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\" ></td>\n");
                                                                                out.println("<td>" + cn.rt.getString("ficha_programa") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("n_documento_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombres_usuario") + " " + cn.rt.getString("apellidos_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_rol") + "</td>");
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
        <!---------------------------Fin Guardar inasistencia----------------------------------------------->
        <script type="text/javascript">
            RANGE_CAL_1 = new Calendar({
                inputField: "fecha_inasistencia",
                dateFormat: "%d-%B-%Y",
                min: 20170101,
                fixed: true,
                trigger: "f_rangeStart_trigger",
                bottomBar: true,
                onSelect: function () {
                    var date = Calendar.intToDate(this.selection.get());
                    LEFT_CAL.args.min = date;
                    LEFT_CAL.redraw();
                    this.hide();
                }
            });
        </script>
    </body>
</html>
