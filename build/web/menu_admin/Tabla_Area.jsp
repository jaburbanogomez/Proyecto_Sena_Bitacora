<%@page import="conexion_bd.Usuario_CRUD"%>
<%@page import="conexion_bd.Areas"%>
<%@page import="conexion_bd.Areas_CRUD"%>
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
        <title>Actualizar Areas</title >
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                });
            });
        </script>
        <script type="text/javascript">
            function meth(id_area,nombre_area) {
                document.getElementById("id_area").value = id_area;              
                document.getElementById("nombre_area").value = nombre_area;
            }          
            function validarCampos() {               
                var nombre_area = document.getElementById("nombre_area").value;
               if (nombre_area === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DEL AREA ";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "AREA ACTUALIZADA EXITOSAMENTE";
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
            String id_regional = "";
            String id_centro = "";
            String nombre_area = "";         
            if (request.getParameter("nombre_area") != null) {
                nombre_area = request.getParameter("nombre_area");
            }
            if (limpiar) {
                id_centro = "";
                nombre_area = "";
                id_regional = "";
            }
            String a = "";
            a = request.getParameter("id_area");          
            nombre_area = request.getParameter("nombre_area");
            if (actualizar) {
                Areas_CRUD ob = new Areas_CRUD();
                Areas miAreas = new Areas(nombre_area);
                miAreas.setId_area(Integer.parseInt(a));
                ob.updateArea(miAreas);
                mensaje = "Area modificado";
            }
        %>
        <%
            Conexion_bd cn = new Conexion_bd();
            Usuario_CRUD ob = new Usuario_CRUD();
            int centro;
            centro = ob.retornarCentro();
        %>
        <!---------------------------Actualizar Areas----------------------------------------------->
        <div class="res">
            <form class="form-horizontal" action="Tabla_Area.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">                      
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Areas</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="" name="id_area" id="id_area"  style="display: none;" value="<%=a%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Nombre Area:</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" class="material-control tooltips-general input-check-user" name="nombre_area" id="nombre_area" value="<%=nombre_area%>" style="cursor:pointer;" data-toggle="tooltip" data-placement="top" title="Actualizar area" onkeypress="return tabE(this, event)">
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
            <!---------------------------Tabla Areas----------------------------------------------->
            <div class="content-page-container full-reset custom-scroll-containers">
                <div class="container-fluid">
                    <div class="container-flat-form"> 
                          <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"><a href="Tabla_Regional.jsp">Actualizar Regionales</a></li>
                                <li role="presentation"><a href="Tabla_Centro.jsp">Actualizar Centros</a></li>
                                <li role="presentation"   class="active"><a href="Tabla_Area.jsp">Actualizar Areas</a></li> 
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
                                                    <div class="title-flat-form title-flat-blue">Actualizar Areas</div>
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
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr style="display:none;">                                                                  
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td></td>
                                                                </tr> 
                                                                <%
                                                                    try {
                                                                        cn.control();
                                                                        String sql = "SELECT areas.id_area, areas.nombre_area, regional.id_regional, regional.nombre_regional, areas.id_centro, centros.nombre_centro FROM areas INNER JOIN centros ON areas.id_centro = centros.id_centro INNER JOIN regional ON regional.id_regional = centros.id_regional WHERE centros.id_centro = '"+centro+"'order by areas.id_area desc";
                                                                        cn.st = cn.con.createStatement();
                                                                        cn.rt = cn.st.executeQuery(sql);
                                                                        while (cn.rt.next()) {
                                                                            a = cn.rt.getString("id_area");
                                                                            id_centro = cn.rt.getString("id_centro");
                                                                            nombre_area = cn.rt.getString("nombre_area");
                                                                            out.println("<tr>");
                                                                            out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + a + "\",\"" + nombre_area + "\")' title=\"Actualizar Registro\" class=\"glyphicon glyphicon-edit\"></td>\n");
                                                                            out.println("<td>" + cn.rt.getString("nombre_centro") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_area") + "</td>");
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
