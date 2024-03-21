<%@page import="conexion_bd.Aprendiz"%>
<%@page import="conexion_bd.CRUD_Aprendiz"%>
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
        <title>Asignar Aprendiz Lider</title>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({

                });
            });
        </script>
        <script ype="text/javascript">
            $(document).ready(function () {
                $('#id_titulacion').change(function (event) {
                    $.post('../cargar2', {
                        titulacion: $('#id_titulacion').val()
                    }, function (responseText) {
                        $('#id_ficha').html(responseText);
                    });
                });
            });
            //METODO QUE LLENA LOS CAMPOS DEL FORMULARIO
            function meth(id_usuario, id_rol) {
                document.getElementById("id_usuario").value = id_usuario;
                document.getElementById("id_rol").value = id_rol;
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

                var id_rol = document.getElementById("id_rol").value;
                if (id_rol === "") {
                    document.getElementById("mensajeScripts").innerHTML = "DEBE ELEGIR UN ROL";
                } else {
                    document.getElementById("mensajeScripts").innerHTML = "APRENDIZ ASIGNADO CORRECTAMENTE";
                    // var d=document.getElementById("actualiza").value;
                    setTimeout("enviardates()", 1500);
                }
            }
            function enviardates()
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
            function validar() {
                var id = document.getElementById("id_ficha").value;
                alert(id);
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
        <jsp:include page="menu_instructor.jsp" />
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
            id_usu = request.getParameter("id_usuario");
            id_rol = request.getParameter("id_rol");
            if (actualizar) {
                CRUD_Aprendiz misdatos = new CRUD_Aprendiz();
                Aprendiz miAprendiz = new Aprendiz(new Integer(id_rol));
                miAprendiz.setId_usuario(Integer.parseInt(id_usu));
                misdatos.updateAprendiz(miAprendiz);

            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int Captura_id_usuario;
            Captura_id_usuario = ob.retornarUsuario();

        %>  
        <!--------------------------Actualizar----------------------------------------------->
        <div class="res">
            <form class="form-horizontal" action="Asignar_Aprendiz.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">               
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Asignar Aprendiz Lider</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_usuario" id="id_usuario"  style="display:none;" value="<%=id_usu%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-4">Rol: </label>
                                    <div class="col-xs-4">
                                        <select  name="id_rol" id="id_rol" value="id_rol" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige el instructor">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sqlS = "SELECT id_rol, nombre_rol FROM  rol WHERE id_rol in(5,6)";
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
                                        <div><input type="button" class="btn btn-info"  onclick="validarCampos()"  value="ACTUALIZAR"/></div>
                                        <input type="submit" style="display: none;"   name="actualizar" id="actualiza">
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
                                    <li role="presentation"><a href="guardar_inasistencia.jsp">Registrar Inasistencia</a></li> 
                                    <li role="presentation"><a href="Actualizar_inasistencia.jsp">Actualizar Inasistencia</a></li>   
                                    <li role="presentation"  class="active"><a href="Asignar_Aprendiz.jsp">Asignar Aprendiz Lider</a></li>
                                </ul>
                            </div>
                            <div class="title-flat-form title-flat-blue">Asignar Aprendiz Lider</div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                    <div class="col-md-6">
                                        <div class="group-material">
                                            <select  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una titulacion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                                <%
                                                    try {
                                                        out.println("<option value=''>:.</option>");
                                                        cn.control();
                                                        String sql = "SELECT  usuarios.id_usuario, titulacion.id_titulacion,  titulacion.nombre_titulacion, usuarios.nombres_usuario FROM  instructores_titulacion INNER JOIN  usuarios ON usuarios.id_usuario = instructores_titulacion.id_usuario  INNER JOIN  titulacion ON titulacion.id_titulacion =    instructores_titulacion.id_titulacion WHERE usuarios.id_usuario ='" + Captura_id_usuario + "';";

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
                                    </center>
                                    <p class="text-center">
                                        <button type="button"   onclick="validarCamp()"  class="btn btn-primary"><i class="zmdi fa fa-search"></i> &nbsp;&nbsp; Consultar Aprendices</button>
                                        <button   type="submit"  style="display: none;" id="consultar"></button>
                                    </p> 
                                </div>
                            </div>
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
                                                                                // out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + usu + "\",\"" + id_tipo_documento + "\",\"" + n_documento_usuario + "\",\"" + nombres_usuario + "\",\"" + primer_ape_usuario + "\",\"" + segundo_ape_usuario + "\",\"" + celular_usuario + "\",\"" + id_estado_usuario + "\",\"" + correo_usuario + "\",\"" + id_rol + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\" ></td>\n ");
                                                                                out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + id_usu + "\",\"" + id_rol + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\" ></td>\n");
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
    </body>
</html>
