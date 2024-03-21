<%@page import="conexion_bd.Centros"%>
<%@page import="conexion_bd.Centros_CRUD"%>
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
        <title>Actualizar Centros</title>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({                   
                });
            });
        </script>
        <script>       
            function meth(id_centro, codigo_centro, nombre_centro, id_regional) {
                document.getElementById("id_centro").value = id_centro;
                document.getElementById("codigo_centro").value = codigo_centro;
                document.getElementById("nombre_centro").value = nombre_centro;
                document.getElementById("id_regional").value = id_regional;                
            }            
            function validarCampos() {
                var codigo_centro = document.getElementById("codigo_centro").value;
                var nombre_centro = document.getElementById("nombre_centro").value;
                var id_regional = document.getElementById("id_regional").value;
                if (codigo_centro === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CODIGO DEL CENTRO";
                    return false;
                } else if (nombre_centro === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DEL CENTRO";
                    return false;
                } else if (id_regional === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE SELECCIONAR UNA REGIONAL";
                    return false;
                } else {
                    document.getElementById("mensajeScript").innerHTML = "CENTRO ACTUALIZADO EXITOSAMENTE";                 
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
    <body oncontextmenu="reurn false">
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
            String codigo_centro = "";
            String nombre_centro = "";
            String id_regional = "";
            String regional = "";
            if (request.getParameter("id_centro") != null) {
                id_centro = request.getParameter("id_centro");
            }
            if (request.getParameter("codigo_centro") != null) {
                codigo_centro = request.getParameter("codigo_centro");
            }
            if (request.getParameter("nombre_centro") != null) {
                nombre_centro = request.getParameter("nombre_centro");
            }
            if (request.getParameter("id_regional") != null) {
                id_regional = request.getParameter("id_regional");
            }
            if (limpiar) {
                id_centro = "";
                codigo_centro = "";
                nombre_centro = "";
                id_regional = "";
            }           
            String c = "";           
            c = request.getParameter("id_centro");
            codigo_centro = request.getParameter("codigo_centro");
            nombre_centro = request.getParameter("nombre_centro");
            id_regional = request.getParameter("id_regional");
            if (actualizar) {
                Centros_CRUD ob = new Centros_CRUD();
                Centros miCentro = new Centros(codigo_centro, nombre_centro, new Integer(id_regional));
                miCentro.setId_centro(Integer.parseInt(c));
                ob.updatecentro(miCentro);
                mensaje = "centro modificado";
            }
        %>
        <!---------------------------Actualizar----------------------------------------------->
        <div class="res">
            <form class="form-horizontal" action="Tabla_Centro.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Centros</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="" name="id_centro" id="id_centro"  style="display: none;" value="<%=c%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Codigo:</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" class="material-control tooltips-general input-check-user" name="codigo_centro" id="codigo_centro" value="<%=codigo_centro%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Actualizar el código del centro">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Nombre:</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" class="material-control tooltips-general input-check-user" name="nombre_centro" id="nombre_centro" value="<%=nombre_centro%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Actualizar el nombre del centro">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Regional:</label>
                                    <div class="col-xs-7">
                                        <select  class="material-control tooltips-general input-check-user"  name="id_regional" id="id_regional" value="<%=id_regional%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Elige una opcion">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();
                                                try {
                                                    out.println("<option value=''>Seleccione...</option>");
                                                    cn.control();
                                                    String sql = "select  id_regional,nombre_regional from regional ;";
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
                                        <div><input type="button" class="btn btn-info"  onclick="validarCampos()"  value="Actualizar"></div>
                                        <input type="submit" style="display: none;"  name="actualizar" id="actualiza">
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!---------------------------Tabla Centros----------------------------------------------->
            <div class="content-page-container full-reset custom-scroll-containers">
                <div class="container-fluid">
                    <div class="container-flat-form">
                          <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="Tabla_Regional.jsp">Actualizar Regionales</a></li>
                                <li role="presentation"  class="active"><a href="Tabla_Centro.jsp">Actualizar Centros</a></li>
                                <li role="presentation"><a href="Tabla_Area.jsp">Actualizar Areas</a></li> 
                                <li role="presentation"><a href="Tabla_Titulacion.jsp">Actualizar Titulaciones</a></li> 
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
                                                    <div class="title-flat-form title-flat-blue">Actualizar Centros</div>
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
                                                                    <th class="col-sm-1">Codigo</th>
                                                                    <th class="col-sm-1">Centro</th>
                                                                    <th class="col-sm-1">Regional</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr style="display:none;">
                                                                    <td>1</td>
                                                                    <td>2</td>
                                                                    <td>3</td>
                                                                    <td>4</td>
                                                                </tr> 
                                                                <%
                                                                    try {
                                                                        cn.control();
                                                                        String sql = "SELECT centros.id_centro,"
                                                                                + " centros.codigo_centro,"
                                                                                + " centros.nombre_centro,"
                                                                                + " regional.id_regional, "
                                                                                + " regional.nombre_regional "
                                                                                + " FROM centros "
                                                                                + " INNER JOIN regional ON regional.id_regional = centros.id_regional order by centros.id_centro desc";
                                                                        cn.st = cn.con.createStatement();
                                                                        cn.rt = cn.st.executeQuery(sql);
                                                                        while (cn.rt.next()) {
                                                                            c = cn.rt.getString("id_centro");
                                                                            codigo_centro = cn.rt.getString("codigo_centro");
                                                                            nombre_centro = cn.rt.getString("nombre_centro");
                                                                            id_regional = cn.rt.getString("id_regional");
                                                                            out.println("<tr>");
                                                                            out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + c + "\",\"" + codigo_centro + "\",\"" + nombre_centro + "\",\"" + id_regional + "\")' title=\"Actualizar Registro\"  class=\"glyphicon glyphicon-edit\"></td>\n");
                                                                            out.println("<td>" + cn.rt.getString("codigo_centro") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_centro") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_regional") + "</td>");
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
