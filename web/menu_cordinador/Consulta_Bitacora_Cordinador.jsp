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
        <title>Consulta de Bitacora-</title>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'excelHtml5',
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
                var id_area = document.getElementById("id_area").value;
                var id_titulacion = document.getElementById("id_titulacion").value;
                var id_ficha = document.getElementById("id_ficha").value;
                if (id_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN AREA";
                } else if (id_titulacion === "") {
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
    <body>
        <jsp:include page="menu_cordinador.jsp" />
        <%
            int id = 0;
            String fecha_registro_bitacora = "";
            String id_guia = "";
            String id_jornada = "";
            String hora_inicio = "";
            String hora_fin = "";
            String id_ficha = "";
            String observaciones_bitacora = "";
            String id_usuario = "";
            String lugar = "";
            String id_area = "";
            String id_titulacion = "";
            String aprendiz_lider = "";
            if (request.getParameter("id_ficha") != null) {
                id_ficha = request.getParameter("id_ficha");
                id = Integer.parseInt(id_ficha);
            }
        %>
        <%
            Conexion_bd cn = new Conexion_bd();
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!---------------------------Consulta de la Bitacora por parte del Cordinador Academico----------------------------------------------->
        <div class="res">
            <form class="form-horizontal"   action="Consulta_Bitacora_Cordinador.jsp"  method="POST"> 
                <!---------------------------Fitro de Busqueda----------------------------------------------->
                <div class="content-page-container full-reset custom-scroll-containers">
                    <div class="container-fluid">
                        <div class="container-flat-form">                    
                            <div class="container-fluid">
                                <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                    <li role="presentation"  class="active"><a href="Consulta_Bitacora_Cordinador.jsp">Consultar Bitacora</a></li>
                                    <li role="presentation"><a href="Consultar_Inasistencias_Cordinador.jsp">Consultar Inasistencias</a></li>                                 
                                </ul>
                            </div>
                            <div class="title-flat-form title-flat-blue">Consultar Bitacora</div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                    <div class="col-md-4">
                                        <div class="group-material">
                                            <select  name="id_area" id="id_area" value="<%=id_area%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una area" style="cursor:pointer;" onkeypress="return tabE(this, event)">
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
                                    </div>
                                    <div class="col-md-4">
                                        <div class="group-material">
                                            <select  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una titulacion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            </select>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Titulacion</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
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
                                        <div id="mensajeScript" style="color:#fc7323"></div> 
                                    </center>
                                    <p class="text-center">
                                        <button type="button"   onclick="validarCampos()"  class="btn btn-primary"><i class="zmdi fa fa-search"></i> &nbsp;&nbsp; Consultar</button>
                                        <button   type="submit"  style="display: none;" id="consultar"></button>
                                    </p> 
                                </div>
                            </div>
                            <!---------------------------Fin Fitro de Busqueda----------------------------------------------->
                            <!---------------------------Tabla Consultar Bitacora----------------------------------------------->
                            <div class="main main-raised">
                                <div class="profile-content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="profile">
                                                <div class="name">
                                                    <div id='1' >
                                                        <div class="title-flat-form title-flat-blue">Resultados de Búsqueda</div>
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
                                                                        <th class="col-sm-2">Titulacion</th>
                                                                        <th class="col-sm-1">Ficha</th>
                                                                        <th class="col-sm-1">Fecha Registro</th>
                                                                        <th class="col-sm-1">Hora Inicio</th>
                                                                        <th class="col-sm-1">Hora Fin</th>
                                                                        <th class="col-sm-1">Jornada</th>
                                                                        <th class="col-sm-1">Instructor a Cargo</th>
                                                                        <th class="col-sm-1">Guia</th>
                                                                        <th class="col-sm-1">Lugar</th>
                                                                        <th class="col-sm-2">Registrada por el aprendiz lider</th>
                                                                        <th class="col-sm-3">Observaciones de la bitacora</th>                                                             
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
                                                                        <td></td>
                                                                    </tr> 
                                                                    <%
                                                                        try {
                                                                            cn.control();

                                                                            String sql = " SELECT regional.id_regional, "
                                                                                    + "regional.nombre_regional, "
                                                                                    + "centros.id_centro, "
                                                                                    + "centros.nombre_centro, "
                                                                                    + "areas.id_area, "
                                                                                    + "areas.nombre_area, "
                                                                                    + "titulacion.id_titulacion, "
                                                                                    + "titulacion.nombre_titulacion,"
                                                                                    + " bitacora_diaria.id_ficha, "
                                                                                    + "fichas.ficha_programa,"
                                                                                    + " bitacora_diaria.id_bitacora, "
                                                                                    + "bitacora_diaria.fecha_registro_bitacora, "
                                                                                    + "bitacora_diaria.hora_inicio, "
                                                                                    + "bitacora_diaria.hora_fin, "
                                                                                    + "jornada.id_jornada,"
                                                                                    + " jornada.jornada,"
                                                                                    + " guia_aprendizaje.id_guia,"
                                                                                    + " guia_aprendizaje.guia,"
                                                                                    + " bitacora_diaria.id_usuario, "
                                                                                    + "usuarios.nombres_usuario, "
                                                                                    + " usuarios.apellidos_usuario, "
                                                                                    + "bitacora_diaria.lugar,"
                                                                                    + " bitacora_diaria.observaciones_bitacora,"
                                                                                    + " bitacora_diaria.aprendiz_lider "
                                                                                    + "FROM regional "
                                                                                    + "INNER JOIN centros ON regional.id_regional = centros.id_regional "
                                                                                    + "INNER JOIN areas ON centros.id_centro = areas.id_centro "
                                                                                    + "INNER JOIN titulacion ON areas.id_area = titulacion.id_area "
                                                                                    + "INNER JOIN fichas ON titulacion.id_titulacion = fichas.id_titulacion "
                                                                                    + "INNER JOIN bitacora_diaria ON fichas.id_ficha = bitacora_diaria.id_ficha "
                                                                                    + "INNER JOIN usuarios ON bitacora_diaria.id_usuario = usuarios.id_usuario "
                                                                                    + "INNER JOIN jornada ON jornada.id_jornada = bitacora_diaria.id_jornada "
                                                                                    + "INNER JOIN guia_aprendizaje ON guia_aprendizaje.id_guia = bitacora_diaria.id_guia "
                                                                                    + "WHERE fichas.id_ficha = '" + id + "' "
                                                                                    + "order by bitacora_diaria.id_bitacora desc";
                                                                            cn.st = cn.con.createStatement();
                                                                            cn.rt = cn.st.executeQuery(sql);
                                                                            while (cn.rt.next()) {
                                                                                id_titulacion = cn.rt.getString("id_titulacion");
                                                                                id_ficha = cn.rt.getString("id_ficha");
                                                                                fecha_registro_bitacora = cn.rt.getString("fecha_registro_bitacora");
                                                                                hora_inicio = cn.rt.getString("hora_inicio");
                                                                                hora_fin = cn.rt.getString("hora_fin");
                                                                                id_jornada = cn.rt.getString("id_jornada");
                                                                                id_usuario = cn.rt.getString("id_usuario");
                                                                                id_guia = cn.rt.getString("id_guia");
                                                                                lugar = cn.rt.getString("lugar");
                                                                                aprendiz_lider = cn.rt.getString("aprendiz_lider");
                                                                                observaciones_bitacora = cn.rt.getString("observaciones_bitacora");
                                                                                out.println("<tr>");
                                                                                out.println("<td>" + cn.rt.getString("nombre_titulacion") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("ficha_programa") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("fecha_registro_bitacora") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("hora_inicio") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("hora_fin") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("jornada") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("nombres_usuario") + " " + cn.rt.getString("apellidos_usuario") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("guia") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("lugar") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("aprendiz_lider") + "</td>");
                                                                                out.println("<td>" + cn.rt.getString("observaciones_bitacora") + "</td>");
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
