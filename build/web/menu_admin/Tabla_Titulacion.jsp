<%@page import="conexion_bd.Usuario_CRUD"%>
<%@page import="conexion_bd.Titulaciones"%>
<%@page import="conexion_bd.Titulaciones_CRUD"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Titulaciones</title >
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                });
            });
        </script>
        <script ype="text/javascript">
            function meth(id_titulacion, id_area, nombre_titulacion) {
                document.getElementById("id_titulacion").value = id_titulacion;
                document.getElementById("id_area").value = id_area;
                document.getElementById("nombre_titulacion").value = nombre_titulacion;
            }
            function validarCampos() {
                var id_area = document.getElementById("id_area").value;
                var nombre_titulacion = document.getElementById("nombre_titulacion").value;
                if (id_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "ESCOGER UN AREA ";
                } else if (nombre_titulacion === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DE LA TITULACION ";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "TITULACION ACTUALIZADA EXITOSAMENTE";
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
            String id_area = "";
            String nombre_titulacion = "";
            String id_centro = "";
            if (request.getParameter("id_area") != null) {
                id_area = request.getParameter("id_area");
            }
            if (request.getParameter("nombre_titulacion") != null) {
                nombre_titulacion = request.getParameter("nombre_titulacion");
            }
            if (limpiar) {
                id_area = "";
                nombre_titulacion = "";
            }
            String t = "";
            t = request.getParameter("id_titulacion");
            id_area = request.getParameter("id_area");
            nombre_titulacion = request.getParameter("nombre_titulacion");
            if (actualizar) {
                Titulaciones_CRUD misDatos = new Titulaciones_CRUD();// de esta manera tenemos conexion a la base de datos
                Titulaciones miTitulacion = new Titulaciones(
                        nombre_titulacion,
                        new Integer(id_area));
                miTitulacion.setId_titulacion(Integer.parseInt(t));
                misDatos.updateTitulacion(miTitulacion);
                mensaje = "";
            }
        %>
        <%
            Conexion_bd cn = new Conexion_bd();
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!---------------------------Actualizar Titulaciones----------------------------------------------->
        <div class="res">
            <form class="form-horizontal"   action="Tabla_Titulacion.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">                      
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Titulaciones</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_titulacion" id="id_titulacion"  style="display: none;" value="<%=t%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Area:</label>
                                    <div class="col-xs-7">
                                        <select  id="id_area" name="id_area"  value="<%=id_area%>"  style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elija un area">
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
                                        <input type="text" autocomplete="off" class="material-control tooltips-general input-check-user" name="nombre_titulacion" id="nombre_titulacion" value="<%=nombre_titulacion%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Actualizar el nombre de la titulacion">
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
            <!---------------------------Tabla Titulacion----------------------------------------------->
            <div class="content-page-container full-reset custom-scroll-containers">
                <div class="container-fluid">
                    <div class="container-flat-form">
                           <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="Tabla_Regional.jsp">Actualizar Regionales</a></li>
                                <li role="presentation"><a href="Tabla_Centro.jsp">Actualizar Centros</a></li>
                                <li role="presentation"><a href="Tabla_Area.jsp">Actualizar Areas</a></li> 
                                <li role="presentation"    class="active"><a href="Tabla_Titulacion.jsp">Actualizar Titulaciones</a></li> 
                                <li role="presentation"><a href="Tabla_Ficha.jsp">Actualizar Fichas</a></li> 
                            </ul>
                        </div>
                        <div class="main main-raised">
                            <div class="profile-content">
                                <div class="container">
                                    <div class="row">
                                        <div class="profile">
                                            <div class="name">
                                                <div id='1' >
                                                    <div class="title-flat-form title-flat-blue">Actualizar Titulaciones</div>
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
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr style="display:none;">                                                                   
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
                                                                                + "titulacion.nombre_titulacion "
                                                                                + "FROM regional "
                                                                                + "INNER JOIN centros ON regional.id_regional = centros.id_regional "
                                                                                + "INNER JOIN areas ON centros.id_centro = areas.id_centro INNER JOIN titulacion ON areas.id_area = titulacion.id_area WHERE centros.id_centro='"+centro+"' order by titulacion.id_titulacion desc";
                                                                        cn.st = cn.con.createStatement();
                                                                        cn.rt = cn.st.executeQuery(sql);
                                                                        while (cn.rt.next()) {
                                                                            t = cn.rt.getString("id_titulacion");
                                                                            id_centro = cn.rt.getString("id_centro");
                                                                            id_area = cn.rt.getString("id_area");
                                                                            nombre_titulacion = cn.rt.getString("nombre_titulacion");
                                                                            out.println("<tr>");
                                                                            out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + t + "\",\"" + id_area + "\",\"" + nombre_titulacion + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit \" ></td>\n ");
                                                                            out.println("<td>" + cn.rt.getString("nombre_centro") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_area") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_titulacion") + "</td>");
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
