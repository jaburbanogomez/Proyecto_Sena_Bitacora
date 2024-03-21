<%--     
    Author     : Bitacora
--%>
<%@page import="conexion_bd.Bitacora"%>
<%@page import="conexion_bd.Bitacora_CRUD"%>
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
        <title>Actualizar Bitacora</title> 
        <script src="js/shortcut.js" type="text/javascript"></script>
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
            function meth(id_bitacora, id_ficha, fecha_registro_bitacora, hora_inicio, hora_fin, id_jornada, id_usuario, id_guia, lugar, observaciones_bitacora) {
                document.getElementById("id_bitacora").value = id_bitacora;
                document.getElementById("id_ficha").value = id_ficha;
                document.getElementById("fecha_registro_bitacora").value = fecha_registro_bitacora;
                document.getElementById("hora_inicio").value = hora_inicio;
                document.getElementById("hora_fin").value = hora_fin;
                document.getElementById("id_jornada").value = id_jornada;
                document.getElementById("id_usuario").value = id_usuario;
                document.getElementById("id_guia").value = id_guia;
                document.getElementById("lugar").value = lugar;
                document.getElementById("observaciones_bitacora").value = observaciones_bitacora;
            }
            function validarCampos() {
                var id_usuario = document.getElementById("id_usuario").value;
                var fecha_registro_bitacora = document.getElementById("fecha_registro_bitacora").value;
                var id_guia = document.getElementById("id_guia").value;
                var id_jornada = document.getElementById("id_jornada").value;
                var hora_inicio = document.getElementById("hora_inicio").value;
                var hora_fin = document.getElementById("hora_fin").value;
                var id_ficha = document.getElementById("id_ficha").value;
                var lugar = document.getElementById("lugar").value;
                var observaciones_bitacora = document.getElementById("observaciones_bitacora").value;
                if (id_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN INSTRUCTOR";
                } else if (fecha_registro_bitacora === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UNA FECHA DE REGISTRO";
                } else if (id_guia === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR GUIA";
                } else if (id_jornada === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA JORNADA ";
                } else if (hora_inicio === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR HORA INICIO ";
                } else if (hora_fin === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR HORA FIN ";
                } else if (id_ficha === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA FICHA ";
                } else if (lugar === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN LUGAR ";
                } else if (observaciones_bitacora === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR OBSERVACIONES";
                } else if (hora_inicio >= hora_fin) {
                    document.getElementById("mensajeScript").innerHTML = "LA HORA DE FIN DEBE SER MAYOR A LA HORA DE INICIO";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "BITACORA ACTUALIZADA EXITOSAMENTE";
                    setTimeout("enviardate()", 1500);
                }
            }
            //FUNCION QUE ENVIA LOS DATOS DEL FORMULARIO PARA ACTUALIZARLOS
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
        <jsp:include page="menu_aprendiz_lider.jsp" />
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
            String id_regional = "";
            String id_centro = "";
            String id_area = "";
            String id_titulacion = "";
            String fecha_registro_bitacora = "";
            String id_guia = "";
            String id_jornada = "";
            String hora_inicio = "";
            String hora_fin = "";
            String id_ficha = "";
            String observaciones_bitacora = "";
            String id_usuario = "";
            String lugar = "";
            // obtenemos los valores y validamos si estas variables estan
            if (request.getParameter("id_regional") != null) {
                id_regional = request.getParameter("id_regional");
            }
            if (request.getParameter("id_centro") != null) {
                id_centro = request.getParameter("id_centro");
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
            if (request.getParameter("fecha_registro_bitacora") != null) {
                fecha_registro_bitacora = request.getParameter("fecha_registro_bitacora");
            }
            if (request.getParameter("hora_inicio") != null) {
                hora_inicio = request.getParameter("hora_inicio");
            }
            if (request.getParameter("hora_fin") != null) {
                hora_fin = request.getParameter("hora_fin");
            }
            if (request.getParameter("id_jornada") != null) {
                id_jornada = request.getParameter("id_jornada");
            }
            if (request.getParameter("id_usuario") != null) {
                id_usuario = request.getParameter("id_usuario");
            }
            if (request.getParameter("id_guia") != null) {
                id_guia = request.getParameter("id_guia");
            }
            if (request.getParameter("lugar") != null) {
                lugar = request.getParameter("lugar");
            }
            if (request.getParameter("observaciones_bitacora") != null) {
                observaciones_bitacora = request.getParameter("observaciones_bitacora");
            }
            //Metodo limpiar
            if (limpiar) {
                id_regional = "";
                id_centro = "";
                id_area = "";
                id_titulacion = "";
                id_ficha = "";
                fecha_registro_bitacora = "";
                hora_inicio = "";
                hora_fin = "";
                id_jornada = "";
                id_guia = "";
                id_usuario = "";
                lugar = "";
                observaciones_bitacora = "";
            }
            //VARIABLES DEL METODO ACTUALIZAR
            String b = "";
            //se llama por los name
            b = request.getParameter("id_bitacora");
            id_regional = request.getParameter("id_regional");
            id_centro = request.getParameter("id_centro");
            id_area = request.getParameter("id_area");
            id_titulacion = request.getParameter("id_titulacion");
            id_ficha = request.getParameter("id_ficha");
            fecha_registro_bitacora = request.getParameter("fecha_registro_bitacora");
            hora_inicio = request.getParameter("hora_inicio");
            hora_fin = request.getParameter("hora_fin");
            id_jornada = request.getParameter("id_jornada");
            id_usuario = request.getParameter("id_usuario");
            id_guia = request.getParameter("id_guia");
            lugar = request.getParameter("lugar");
            observaciones_bitacora = request.getParameter("observaciones_bitacora");
            if (actualizar) {
                Bitacora_CRUD misDatos = new Bitacora_CRUD();
                Bitacora miBitacora = new Bitacora(
                        fecha_registro_bitacora,
                        new Integer(id_guia),
                        new Integer(id_jornada),
                        hora_inicio,
                        hora_fin,
                        observaciones_bitacora,
                        new Integer(id_ficha),
                        new Integer(id_usuario),
                        lugar);
                miBitacora.setId_bitacora(Integer.parseInt(b));
                misDatos.updateBitacora(miBitacora);
                mensaje = "";
            }
        %>
        <%
            Conexion_bd cn = new Conexion_bd();
            Usuario_CRUD ob = new Usuario_CRUD();
            int llenar_ficha;
            llenar_ficha = ob.retornarFicha();
        %>
        <!---------------------------FORMULARIO MODAL ACTUALIZAR BITACORA----------------------------------------------->
        <div class="res">
            <form class="form-horizontal"   action="Actualizar_Bitacora.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Datos Bitacora</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_bitacora" id="id_bitacora"  style="display: none;" value="<%=b%>" />                          
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Fecha Registro:</label>
                                    <div class="col-xs-7">
                                        <div class="row">
                                            <div class="col-md-10">
                                                <input name="fecha_registro_bitacora" onfocus="this.blur()"  id="fecha_registro_bitacora" value="<%=fecha_registro_bitacora%>" data-toggle="tooltip" data-placement="top" title="Actualizar la fecha de inasistencia" class="material-control tooltips-general input-check-user" onkeypress="return tabE(this, event)">
                                            </div>
                                            <div class="col-md-2">
                                                <button id="f_rangeStart_trigger" class="glyphicon glyphicon-calendar" ></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2" >Instructor:</label>
                                    <div class="col-xs-7">
                                        <select   id="id_usuario" name="id_usuario" value="<%=id_usuario%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elija un instructor" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT  instructores_titulacion.id_titulacion, titulacion.nombre_titulacion,  instructores_titulacion.id_usuario, usuarios.nombres_usuario,usuarios.apellidos_usuario,  fichas.id_ficha, fichas.id_titulacion FROM  instructores_titulacion INNER JOIN  titulacion ON titulacion.id_titulacion =    instructores_titulacion.id_titulacion INNER JOIN  usuarios ON usuarios.id_usuario = instructores_titulacion.id_usuario  INNER JOIN  fichas ON titulacion.id_titulacion = fichas.id_titulacion WHERE  fichas.id_ficha = '" + llenar_ficha + "';";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sql);
                                                    while (cn.rt.next()) {
                                                        out.println("<option value='" + cn.rt.getString(3) + "'>" + cn.rt.getString(4) + " " + cn.rt.getString(5) + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e.toString());
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Guia:</label>
                                    <div class="col-xs-7">
                                        <select  name="id_guia" id="id_guia" value="<%=id_guia%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elija una opcion" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "select id_guia,guia from guia_aprendizaje;";
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
                                    <label class="control-label col-xs-2">Jornada:</label>
                                    <div class="col-xs-7">
                                        <select  name="id_jornada" id="id_jornada" value="<%=id_jornada%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elija una jornada" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "select id_jornada,jornada from jornada;";
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
                                    <label class="control-label col-xs-2">Hora Inicio:</label>
                                    <div class="col-xs-7">
                                        <input type="time" autocomplete="off"  name="hora_inicio" id="hora_inicio" value="<%=hora_inicio%>"  class="material-control tooltips-general " data-toggle="tooltip" data-placement="top" title="Actualizar la hora de inicio" onkeypress="return tabE(this, event)">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Hora Fin:</label>
                                    <div class="col-xs-7">
                                        <input type="time" name="hora_fin"  autocomplete="off" id="hora_fin" value="<%=hora_fin%>"  data-toggle="tooltip" data-placement="top" title="Actualizar la hora de fin" class="material-control tooltips-general input-check-user" onkeypress="return tabE(this, event)">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-xs-2">Lugar:</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" name="lugar" id="lugar" value="<%=lugar%>"  class="material-control tooltips-general input-check-user" data-toggle="tooltip" data-placement="top" title="Actualizar el lugar" onkeypress="return tabE(this, event)">
                                    </div>
                                </div>                            
                                <div class="form-group">
                                    <label class="control-label col-xs-2" >Ficha:</label>
                                    <div class="col-xs-7">
                                        <select  name="id_ficha" id="id_ficha" value="<%=id_ficha%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elija una ficha" onkeypress="return tabE(this, event)">
                                            <%

                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "select id_ficha,ficha_programa from fichas where id_ficha= '" + llenar_ficha + "'";
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
                                    <div class="col-xs-7">
                                        <textarea autocomplete="off" name="observaciones_bitacora" id="observaciones_bitacora" value="<%=observaciones_bitacora%>" class="material-control tooltips-general input-check-user" data-toggle="tooltip" data-placement="top" title="Actualizar las observaciones"  onkeypress="return tabE(this, event)"></textarea>
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
            </form>
            <!---------------------------Tabla Actualizar Bitacora----------------------------------------------->
            <div class="content-page-container full-reset custom-scroll-containers">
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="registrar_bitacora.jsp">Registrar Bitacora</a></li>
                                <li role="presentation"   class="active"><a href="Actualizar_Bitacora.jsp">Actualizar Bitacora</a></li>                                             
                            </ul>
                        </div>
                        <div class="main main-raised">
                            <div class="profile-content">
                                <div class="container">
                                    <div class="row">
                                        <div class="profile">
                                            <div class="name">
                                                <div id='1' >
                                                    <div class="title-flat-form title-flat-blue">Actualizar Bitacora</div>
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
                                                                    <th class="col-sm-1">Fecha Registro</th>
                                                                    <th class="col-sm-1">Hora Inicio</th>
                                                                    <th class="col-sm-1">Hora Fin</th>
                                                                    <th class="col-sm-1">Jornada</th>
                                                                    <th class="col-sm-1">Instructor a Cargo</th>
                                                                    <th class="col-sm-1">Guia</th>
                                                                    <th class="col-sm-1">Lugar</th>
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
                                                                                + " bitacora_diaria.observaciones_bitacora "
                                                                                + "FROM regional "
                                                                                + "INNER JOIN centros ON regional.id_regional = centros.id_regional "
                                                                                + "INNER JOIN areas ON centros.id_centro = areas.id_centro "
                                                                                + "INNER JOIN titulacion ON areas.id_area = titulacion.id_area "
                                                                                + "INNER JOIN fichas ON titulacion.id_titulacion = fichas.id_titulacion "
                                                                                + "INNER JOIN bitacora_diaria ON fichas.id_ficha = bitacora_diaria.id_ficha "
                                                                                + "INNER JOIN usuarios ON bitacora_diaria.id_usuario = usuarios.id_usuario "
                                                                                + "INNER JOIN jornada ON jornada.id_jornada = bitacora_diaria.id_jornada "
                                                                                + "INNER JOIN guia_aprendizaje ON guia_aprendizaje.id_guia = bitacora_diaria.id_guia "
                                                                                + "WHERE fichas.id_ficha = '" + llenar_ficha + "' "
                                                                                + "order by bitacora_diaria.id_bitacora desc";
                                                                        cn.st = cn.con.createStatement();
                                                                        cn.rt = cn.st.executeQuery(sql);
                                                                        while (cn.rt.next()) {
                                                                            b = cn.rt.getString("id_bitacora");
                                                                            fecha_registro_bitacora = cn.rt.getString("fecha_registro_bitacora");
                                                                            hora_inicio = cn.rt.getString("hora_inicio");
                                                                            hora_fin = cn.rt.getString("hora_fin");
                                                                            id_jornada = cn.rt.getString("id_jornada");
                                                                            id_usuario = cn.rt.getString("id_usuario");
                                                                            id_guia = cn.rt.getString("id_guia");
                                                                            lugar = cn.rt.getString("lugar");
                                                                            observaciones_bitacora = cn.rt.getString("observaciones_bitacora");
                                                                            out.println("<tr>");
                                                                            out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + b + "\",\"" + id_ficha + "\",\"" + fecha_registro_bitacora + "\",\"" + hora_inicio + "\",\"" + hora_fin + "\",\"" + id_jornada + "\",\"" + id_usuario + "\",\"" + id_guia + "\",\"" + lugar + "\",\"" + observaciones_bitacora + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\" ></td>\n ");
                                                                            out.println("<td>" + cn.rt.getString("fecha_registro_bitacora") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("hora_inicio") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("hora_fin") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("jornada") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombres_usuario") + " " + cn.rt.getString("apellidos_usuario") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("guia") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("lugar") + "</td>");
                                                                            //out.println("<td>" + cn.rt.getString("observaciones_bitacora") + "</td>");
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
        <script type="text/javascript">
            RANGE_CAL_1 = new Calendar({
                inputField: "fecha_registro_bitacora",
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
