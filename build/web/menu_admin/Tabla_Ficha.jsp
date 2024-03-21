<%@page import="conexion_bd.Usuario_CRUD"%>
<%@page import="conexion_bd.Fichas"%>
<%@page import="conexion_bd.Fichas_CRUD"%>
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
        <script src="js/shortcut.js" type="text/javascript"></script>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Fichas</title >
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                });
            });
        </script>
        <script ype="text/javascript">
            $(document).ready(function () {
                $('#id_area').change(function (event) {
                    $.post('../cargar2', {
                        areas: $('#id_area').val()
                    }, function (responseText) {
                        $('#id_titulacion').html(responseText);
                    });
                });
            });
            function meth(id_ficha, id_area, id_titulacion, ficha_programa) {
                document.getElementById("id_ficha").value = id_ficha;
                document.getElementById("id_area").value = id_area;
                document.getElementById("id_titulacion").value = id_titulacion;
                document.getElementById("ficha_programa").value = ficha_programa;
            }
            function validarCampos() {
                var id_area = document.getElementById("id_area").value;
                var id_titulacion = document.getElementById("id_titulacion").value;
                var ficha_programa = document.getElementById("ficha_programa").value;
                if (id_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UN AREA";
                } else if (id_titulacion === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA TITULACION";
                } else if (ficha_programa === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR LA FICHA";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "FICHA ACTUALIZADA EXITOSAMENTE";
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
            boolean actualizar = false;
            boolean limpiar = false;
            if (request.getParameter("actualizar") != null) {
                actualizar = true;
            }
            if (request.getParameter("limpiar") != null) {
                limpiar = true;
            }
            String id_centro = "";
            String id_area = "";
            String id_titulacion = "";
            String ficha_programa = "";
            if (request.getParameter("id_area") != null) {
                id_area = request.getParameter("id_area");
            }
            if (request.getParameter("id_titulacion") != null) {
                id_titulacion = request.getParameter("id_titulacion");
            }
            if (request.getParameter("ficha_programa") != null) {
                ficha_programa = request.getParameter("ficha_programa");
            }
            if (limpiar) {
                id_area = "";
                id_titulacion = "";
                ficha_programa = "";
            }
            String f = "";
            f = request.getParameter("id_ficha");
            id_area = request.getParameter("id_area");
            id_titulacion = request.getParameter("id_titulacion");
            ficha_programa = request.getParameter("ficha_programa");
            if (actualizar) {
                Fichas_CRUD misDatos = new Fichas_CRUD();
                Fichas miFicha = new Fichas(
                        ficha_programa,
                        new Integer(id_titulacion));
                miFicha.setId_ficha(Integer.parseInt(f));
                misDatos.updateFicha(miFicha);
                mensaje = "";
            }
        %>
        <%
            Conexion_bd cn = new Conexion_bd();
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!---------------------------Actualizar----------------------------------------------->
        <div class="res">
            <form class="form-horizontal"   action="Tabla_Ficha.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Fichas</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_ficha" id="id_ficha"  style="display: none;" value="<%=f%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Area:</label>
                                    <div class="col-xs-7">
                                        <select  class="material-control tooltips-general input-check-user"  name="id_area" id="id_area" value="<%=id_area%>"  style="cursor:pointer;" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Elija una ficha" >
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
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Titulacion:</label>
                                    <div class="col-xs-7">
                                        <select  class="material-control tooltips-general input-check-user"  name="id_titulacion" id="id_titulacion" value="<%=id_titulacion%>"  style="cursor:pointer;" onkeypress="return tabE(this, event)"  data-toggle="tooltip" data-placement="top" title="Elija una titulacion" ></select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Ficha:</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" class="material-control tooltips-general input-check-user" name="ficha_programa" id="ficha_programa" value="<%=ficha_programa%>" style="cursor:pointer;" onkeypress="return tabF(this, event)"  data-toggle="tooltip" data-placement="top" title="Actualiza la ficha" >
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
            <!---------------------------Tabla Fichas----------------------------------------------->
            <div class="content-page-container full-reset custom-scroll-containers">
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="Tabla_Regional.jsp">Actualizar Regionales</a></li>
                                <li role="presentation"><a href="Tabla_Centro.jsp">Actualizar Centros</a></li>
                                <li role="presentation"><a href="Tabla_Area.jsp">Actualizar Areas</a></li> 
                                <li role="presentation"><a href="Tabla_Titulacion.jsp">Actualizar Titulaciones</a></li> 
                                <li role="presentation"  class="active" ><a href="Tabla_Ficha.jsp">Actualizar Fichas</a></li> 
                            </ul>
                        </div>
                        <div class="main main-raised">
                            <div class="profile-content">
                                <div class="container">
                                    <div class="row">
                                        <div class="profile">
                                            <div class="name">
                                                <div id='1' >
                                                    <div class="title-flat-form title-flat-blue">Actualizar Fichas</div>
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
                                                                    <th class="col-sm-1">Area</th>
                                                                    <th class="col-sm-1">Titulacion</th>
                                                                    <th class="col-sm-1">Ficha</th>
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
                                                                        String sql = "SELECT regional.id_regional, "
                                                                                + "regional.nombre_regional, "
                                                                                + "centros.id_centro, "
                                                                                + "centros.nombre_centro, "
                                                                                + "areas.id_area, "
                                                                                + "areas.nombre_area, "
                                                                                + "titulacion.id_titulacion, "
                                                                                + "titulacion.nombre_titulacion,"
                                                                                + "fichas.id_ficha, "
                                                                                + "fichas.ficha_programa "
                                                                                + "FROM fichas "
                                                                                + "INNER JOIN titulacion ON titulacion.id_titulacion = fichas.id_titulacion "
                                                                                + "INNER JOIN areas ON areas.id_area = titulacion.id_area INNER JOIN centros ON centros.id_centro = areas.id_centro "
                                                                                + "INNER JOIN regional ON regional.id_regional = centros.id_regional WHERE centros.id_centro= '" + centro + "' order by fichas.id_ficha desc";
                                                                        cn.st = cn.con.createStatement();
                                                                        cn.rt = cn.st.executeQuery(sql);
                                                                        while (cn.rt.next()) {
                                                                            f = cn.rt.getString("id_ficha");
                                                                            id_centro = cn.rt.getString("id_centro");
                                                                            id_area = cn.rt.getString("id_area");
                                                                            id_titulacion = cn.rt.getString("id_titulacion");
                                                                            ficha_programa = cn.rt.getString("ficha_programa");
                                                                            out.println("<tr>");
                                                                            out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + f + "\",\"" + id_area + "\",\"" + id_titulacion + "\",\"" + ficha_programa + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit \" ></td>\n ");
                                                                            out.println("<td>" + cn.rt.getString("nombre_centro") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_area") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_titulacion") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("ficha_programa") + "</td>");
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
