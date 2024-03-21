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
<html lang="es">
    <head>
        <title>Registrar Bitacora</title>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <link href="css/border-radius.css" rel="stylesheet" type="text/css"/>
        <link href="css/steel/steel.css" rel="stylesheet" type="text/css"/>
        <link href="css/jscal2.css" rel="stylesheet" type="text/css"/>
        <script src="js/jscal2.js" type="text/javascript"></script>
        <script src="js/es.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>        
        <script type="text/javascript">
            function validarCampos() {
                var fecha_registro_bitacora = document.getElementById("fecha_registro_bitacora").value;
                var id_guia = document.getElementById("id_guia").value;
                var id_jornada = document.getElementById("id_jornada").value;
                var hora_inicio = document.getElementById("hora_inicio").value;
                var hora_fin = document.getElementById("hora_fin").value;
                var observaciones_bitacora = document.getElementById("observaciones_bitacora").value;
                var id_ficha = document.getElementById("id_ficha").value;
                var id_usuario = document.getElementById("id_usuario").value;
                var lugar = document.getElementById("lugar").value;
                if (fecha_registro_bitacora === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UNA FECHA DE REGISTRO";
                } else if (hora_inicio === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR HORA INICIO ";
                } else if (hora_fin === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR HORA FIN ";
                } else if (id_jornada === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA JORNADA ";
                } else if (lugar === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN LUGAR ";
                } else if (id_guia === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR GUIA";
                } else if (id_usuario === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN INSTRUCTOR ";
                } else if (id_ficha === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA FICHA ";
                } else if (observaciones_bitacora === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR OBSERVACIONES";
                } else if (hora_inicio >= hora_fin) {
                    document.getElementById("mensajeScript").innerHTML = "LA HORA DE FIN DEBE SER MAYOR A LA HORA DE INICIO";             
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
            //DECLARANDO VARIABLES
            String mensaje = "";
            //BOTON DE ACCIONES
            boolean guardar = false;
            boolean limpiar = false;
            if (request.getParameter("guardar") != null) {
                guardar = true;
            }
            if (request.getParameter("limpiar") != null) {
                limpiar = true;
            }
            //VARIABLES DEL FORMULARIO
            String fecha_registro_bitacora = "";
            String id_guia = "";
            String id_jornada = "";
            String hora_inicio = "";
            String hora_fin = "";
            String id_ficha = "";
            String observaciones_bitacora = "";
            String id_usuario = "";
            String lugar = "";
            if (request.getParameter("fecha_registro_bitacora") != null) {
                fecha_registro_bitacora = request.getParameter("fecha_registro_bitacora");
            }
            if (request.getParameter("id_guia") != null) {
                id_guia = request.getParameter("id_guia");
            }
            if (request.getParameter("id_jornada") != null) {
                id_jornada = request.getParameter("id_jornada");
            }
            if (request.getParameter("hora_inicio") != null) {
                hora_inicio = request.getParameter("hora_inicio");
            }
            if (request.getParameter("hora_fin") != null) {
                hora_fin = request.getParameter("hora_fin");
            }
            if (request.getParameter("id_ficha") != null) {
                id_ficha = request.getParameter("id_ficha");
            }
            if (request.getParameter("observaciones_bitacora") != null) {
                observaciones_bitacora = request.getParameter("observaciones_bitacora");
            }
            if (request.getParameter("id_usuario") != null) {
                id_usuario = request.getParameter("id_usuario");
            }
            if (request.getParameter("lugar") != null) {
                lugar = request.getParameter("lugar");
            }
            //METODO LIMPIAR
            if (limpiar) {
                fecha_registro_bitacora = "";
                id_guia = "";
                id_jornada = "";
                hora_inicio = "";
                hora_fin = "";
                id_ficha = "";
                observaciones_bitacora = "";
                id_usuario = "";
                lugar = "";
            }
            //METODO DE GUARDAR
            if (guardar) {
                Bitacora_CRUD misDatos = new Bitacora_CRUD();// de esta manera tenemos conexion a la base de datos
                Bitacora miBitacora = misDatos.consultarBitacora(fecha_registro_bitacora, new Integer(id_jornada), new Integer(id_ficha), new Integer(id_usuario));
                if (miBitacora != null) {
                    mensaje = "BITACORA YA EXISTE";
                } else {
                    miBitacora = new Bitacora(
                            fecha_registro_bitacora,
                            new Integer(id_guia),
                            new Integer(id_jornada),
                            hora_inicio,
                            hora_fin,
                            observaciones_bitacora,
                            new Integer(id_ficha),
                            new Integer(id_usuario),
                            lugar);
                    misDatos.nuevo_bitacora(miBitacora);
                    mensaje = "BITACORA GUARDADA EXITOSAMENTE";
                    //LIMPIAR CAMPOS LUEGO DE GUARDAR
                    fecha_registro_bitacora = "";
                    id_guia = "";
                    id_jornada = "";
                    hora_inicio = "";
                    hora_fin = "";
                    id_ficha = "";
                    observaciones_bitacora = "";
                    lugar = "";
                }
                misDatos.cerrarconexion();
            }
        %>
        <%
            Usuario_CRUD ob = new Usuario_CRUD();
            int llenar_ficha = 0;
            llenar_ficha = ob.retornarFicha();
        %>
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO REGISTRAR BITACORA--------------------->
        <div class="content-page-container full-reset custom-scroll-containers" >
            <form class="form-horizontal" action="registrar_bitacora.jsp" method="POST"> 
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"  class="active"><a href="registrar_bitacora.jsp">Registrar Bitacora</a></li>
                                <li role="presentation"><a href="Actualizar_Bitacora.jsp">Actualizar Bitacora</a></li>                                             
                            </ul>
                        </div>
                        <div class="title-flat-form title-flat-blue">Registrar Bitácora Diaria</div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-4">                                 
                                    <div class="group-material">
                                        <div class="row">
                                            <div class="col-md-10">
                                                <input  onfocus="this.blur()"  name="fecha_registro_bitacora" id="fecha_registro_bitacora" value="<%=fecha_registro_bitacora%>"  class="material-control tooltips-general input-check-user" data-toggle="tooltip" data-placement="top" title="Ingrese la fecha de registro" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <label>Fecha Registro de Bitacora</label>
                                            </div>
                                            <div class="col-md-2">
                                                <span class="highlight"></span>
                                                <span class="bar"></span>
                                                <button id="f_rangeStart_trigger" class="glyphicon glyphicon-calendar"></button>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="group-material">
                                        <input type="time" id="hora_inicio" name="hora_inicio" autocomplete="off" value="<%=hora_inicio%>"  class="material-control tooltips-general " placeholder="Ingrese la hora de inicio"  data-toggle="tooltip" data-placement="top" title="Escribe la hora de inicio" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                        <label>Hora Inicio</label>
                                    </div>
                                    <div class="group-material">
                                        <input type="time" name="hora_fin"  id="hora_fin" value="<%=hora_fin%>" autocomplete="off" class="material-control tooltips-general " placeholder="Ingrese la hora de salida"  data-toggle="tooltip" data-placement="top" title="Escribe la hora de salida" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                        <label>Hora Salida</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="group-material">
                                        <select  name="id_jornada" id="id_jornada" value="<%=id_jornada%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una jornada" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();
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
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Jornada</label>
                                    </div>
                                    <div class="group-material">
                                        <input type="text"  autocomplete="off"  name="lugar" autocomplete="off" id="lugar" value="<%=lugar%>"  class="material-control tooltips-general input-check-user" placeholder="Ingrese lugar"  data-toggle="tooltip" data-placement="top" title="Escribe lugar" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Lugar</label>
                                    </div>
                                    <div class="group-material">
                                        <select  name="id_guia" id="id_guia" value="<%=id_guia%>" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige una opcion" style="cursor:pointer;" onkeypress="return tabE(this, event)">
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
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Guia Aprendizaje</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="group-material">
                                        <select  id="id_usuario" name="id_usuario" value="<%=id_usuario%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elije un instructor" style="cursor:pointer;" onkeypress="return tabE(this, event)">
                                            <%
                                                try {
                                                    out.println("<option value=''>:.</option>");
                                                    cn.control();
                                                    String sql = "SELECT  instructores_titulacion.id_titulacion, titulacion.nombre_titulacion,  instructores_titulacion.id_usuario, usuarios.nombres_usuario,  usuarios.apellidos_usuario,fichas.id_ficha, fichas.id_titulacion FROM  instructores_titulacion INNER JOIN  titulacion ON titulacion.id_titulacion =    instructores_titulacion.id_titulacion INNER JOIN  usuarios ON usuarios.id_usuario = instructores_titulacion.id_usuario  INNER JOIN  fichas ON titulacion.id_titulacion = fichas.id_titulacion WHERE  fichas.id_ficha = '" + llenar_ficha + "';";
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
                                        <label>Instructor A Cargo</label>
                                    </div>
                                    <div class="group-material">
                                        <select  name="id_ficha" id="id_ficha" value="<%=id_ficha%>" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elige una ficha" style="cursor:pointer;" onkeypress="return tabE(this, event)">
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
                                        <label>Ficha</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-6">
                                    <div class="group-material">
                                        <p> <textarea  name="observaciones_bitacora" id="observaciones_bitacora" autocomplete="off" value="<%=observaciones_bitacora%>" class="material-control tooltips-general input-check-user" placeholder="Ingrese las observaciones ocurridas durante la formación"   data-toggle="tooltip" data-placement="top" title="Escribe las observaciones o novedades" style="cursor:pointer;" onkeypress="return tabE(this, event)"></textarea>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Observaciones</label></p>
                                    </div> 
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <center>
                                    <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                                </center>
                                <p class="text-center">
                                    <button type="button"  value="guardar" onclick="validarCampos()"  class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                                    <button  name="guardar" type="submit"  style="display: none;" id="guardar"></button>
                                    <button type="submit" name="limpiar" value="limpiar" id="limpiar" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Limpiar</button>
                                </p> 
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="pie_pagina.jsp" />
            </form>
        </div>
        <script type="text/javascript">
            RANGE_CAL_1 = new Calendar({
                inputField: "fecha_registro_bitacora",
                dateFormat: "%d-%B-%Y",
                min: 20170101,
                fixed: true,
                trigger: "f_rangeStart_trigger",
                bottomBar: true,
            });
        </script> 
        <!--------------------------------FIN DISEÑO DEL FORMULARIO REGISTRAR BITACORA DIARIA--------------------->
    </body>    
</html>
