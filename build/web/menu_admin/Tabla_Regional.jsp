<%@page import="conexion_bd.Regionales"%>
<%@page import="conexion_bd.Regionales_CRUD"%>
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
        <title>Actualizar Regionales</title >
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#codigo_departamento').change(function (event) {
                    $.post('../cargar', {
                        departamento: $('#codigo_departamento').val()
                    }, function (responseText) {
                        $('#codigo_municipio').html(responseText);
                    });
                });
            }
            );
            //METODO QUE LLENA LOS CAMPOS DEL FORMULARIO
            function meth(id_regional, codigo_regional, nombre_regional, direccion_regional, correo_regional, telefono_regional, codigo_departamento, codigo_municipio) {
                document.getElementById("id_regional").value = id_regional;
                document.getElementById("codigo_regional").value = codigo_regional;
                document.getElementById("nombre_regional").value = nombre_regional;
                document.getElementById("direccion_regional").value = direccion_regional;
                document.getElementById("correo_regional").value = correo_regional;
                document.getElementById("telefono_regional").value = telefono_regional;
                document.getElementById("codigo_departamento").value = codigo_departamento;
                document.getElementById("codigo_municipio").value = codigo_municipio;
            }
            function validarCampos() {
                var codigo_regional = document.getElementById("codigo_regional").value;
                var nombre_regional = document.getElementById("nombre_regional").value;
                var direccion_regional = document.getElementById("direccion_regional").value;
                var correo_regional = document.getElementById("correo_regional").value;
                var telefono_regional = document.getElementById("telefono_regional").value;
                var codigo_departamento = document.getElementById("codigo_departamento").value;
                var codigo_municipio = document.getElementById("codigo_municipio").value;
                var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                if (codigo_regional === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CODIGO DE LA REGIONAL";
                } else if (nombre_regional === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DE LA REGIONAL";
                } else if (direccion_regional === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR LA DIRECCION DE LA REGIONAL";
                } else if (correo_regional === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CORREO DE LA REGIONAL";
                } else if (telefono_regional === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL TELEFONO DE LA REGIONAL";
                } else if (codigo_departamento === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER UN DEPARTAMENTO";
                } else if (codigo_municipio === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER EL CODIGO DEL MUNICIPIO";
                } else if (!patron.test(correo_regional)) {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN CORREO VALIDO";
                } else {
                    document.getElementById("mensajeScript").innerHTML = "REGIONAL ACTUALIZADA EXITOSAMENTE";
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
    <body>
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
            String codigo_regional = "";
            String nombre_regional = "";
            String direccion_regional = "";
            String email_regional = "";
            String telefono_regional = "";
            String departamento_regional = "";
            String municipio_regional = "";
            String a = "";
            if (request.getParameter("codigo_regional") != null) {
                codigo_regional = request.getParameter("codigo_regional");
            }
            if (request.getParameter("nombre_regional") != null) {
                nombre_regional = request.getParameter("nombre_regional");
            }
            if (request.getParameter("direccion_regional") != null) {
                direccion_regional = request.getParameter("direccion_regional");
            }
            if (request.getParameter("email_regional") != null) {
                email_regional = request.getParameter("email_regional");
            }
            if (request.getParameter("telefono_regional") != null) {
                telefono_regional = request.getParameter("telefono_regional");
            }
            if (request.getParameter("departamento_regional") != null) {
                departamento_regional = request.getParameter("departamento_regional");
            }
            if (request.getParameter("municipio_regional") != null) {
                municipio_regional = request.getParameter("municipio_regional");
            }
            if (limpiar) {
                codigo_regional = "";
                nombre_regional = "";
                direccion_regional = "";
                email_regional = "";
                telefono_regional = "";
                departamento_regional = "";
                municipio_regional = "";
            }
            String r = "";
            r = request.getParameter("id_regional");
            codigo_regional = request.getParameter("codigo_regional");
            nombre_regional = request.getParameter("nombre_regional");
            direccion_regional = request.getParameter("direccion_regional");
            email_regional = request.getParameter("email_regional");
            telefono_regional = request.getParameter("telefono_regional");
            departamento_regional = request.getParameter("codigo_departamento");
            municipio_regional = request.getParameter("municipio_regional");
            if (actualizar) {
                Regionales_CRUD misDatos = new Regionales_CRUD();               
                Regionales miRegional2 = new Regionales(
                        codigo_regional,
                        nombre_regional,
                        direccion_regional,
                        email_regional,
                        telefono_regional,
                        municipio_regional);
                miRegional2.setId_regional(Integer.parseInt(r));
                misDatos.updateRegional(miRegional2);
                mensaje = "";
                //  }
            }
        %>
        <!---------------------------Actualizar Regionales----------------------------------------------->
        <div class="res">
            <form class="form-horizontal"   action="Tabla_Regional.jsp"  method="POST"> 
                <div id="myModalMod" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">                      
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <center> <h4 class="modal-title">Actualizar Regionales</h4></center>
                            </div>
                            <div class="modal-body"> 
                                <input type="text" class="form-control" name="id_regional" id="id_regional"  style="display: none;" value="<%=r%>" />  
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Codigo Regional</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" name="codigo_regional" id="codigo_regional" value="<%=codigo_regional%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" data-toggle="tooltip" data-placement="top" title="Actualizar el código de la regional" >
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Nombre Regional:</label>
                                    <div class="col-xs-7">
                                        <input type="text"  autocomplete="off" name="nombre_regional" id="nombre_regional" value="<%=nombre_regional%>" style="cursor:pointer;" class="material-control tooltips-general input-check-user"  onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Actualizar el nombre de la regional">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Direccion Regional:</label>
                                    <div class="col-xs-7">
                                        <input type="text"  autocomplete="off" name="direccion_regional" id="direccion_regional" value="<%=direccion_regional%>" style="cursor:pointer;" class="material-control tooltips-general input-check-user"  onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Actualizar la direccion de la regional">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Correo Regional:</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" name="email_regional" id="correo_regional" value="<%=email_regional%>" style="cursor:pointer;" class="material-control tooltips-general input-check-user" onkeypress="return tabF(this, event)" data-toggle="tooltip" data-placement="top" title="Actualizar el correo de la regional" >
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Telefono Regional:</label>
                                    <div class="col-xs-7">
                                        <input type="text" autocomplete="off" name="telefono_regional" id="telefono_regional" value="<%=telefono_regional%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" data-toggle="tooltip" data-placement="top" title="Actualizar el telefono de la regional">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Departamento:</label>
                                    <div class="col-xs-7">
                                        <select  class="material-control tooltips-general"  name="departamento_regional" id="codigo_departamento" style="cursor:pointer;" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" data-toggle="tooltip" data-placement="top" title="Actualizar el departamento de la regional">
                                            <%
                                                Conexion_bd cn = new Conexion_bd();
                                                try {
                                                    out.println("<option value=''>Seleccione</option>");
                                                    cn.control();
                                                    String sql = "select codigo_departamento,nombre_departamento from departamento;";
                                                    cn.st = cn.con.createStatement();
                                                    cn.rt = cn.st.executeQuery(sql);
                                                    while (cn.rt.next()) {
                                                        out.println("<option   value='" + cn.rt.getString(1) + "' >" + cn.rt.getString(2) + " </option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e.toString());
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-2">Municipio:</label>
                                    <div class="col-xs-7">
                                        <select class="material-control tooltips-general input-check-user"   name="municipio_regional" id="codigo_municipio" value="<%=municipio_regional%>" style="cursor:pointer;" onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Actualizar el municipio de la regional"></select>
                                    </div>
                                </div>
                            </div>
                            <center>
                                <div id="mensajeScript" style="color:#fc7323"><%=mensaje%></div> 
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
            <!---------------------------Tabla Regionales----------------------------------------------->
            <div class="content-page-container full-reset custom-scroll-containers">
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation" class="active"><a href="Tabla_Regional.jsp">Actualizar Regionales</a></li>
                                <li role="presentation"><a href="Tabla_Centro.jsp">Actualizar Centros</a></li>
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
                                                    <div class="title-flat-form title-flat-blue">Actualizar Regionales</div>
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
                                                                    <th class="col-sm-1">Nombre</th>
                                                                    <th class="col-sm-1">Direccion</th>
                                                                    <th class="col-sm-1">Correo</th>
                                                                    <th class="col-sm-1">Telefono</th>
                                                                    <th class="col-sm-1">Departamento</th>
                                                                    <th class="col-sm-1">Municipio</th>
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
                                                                        String sql = "SELECT regional.id_regional,"
                                                                                + "  regional.codigo_regional, "
                                                                                + " regional.nombre_regional,  "
                                                                                + " regional.direccion_regional, "
                                                                                + " regional.correo_regional, "
                                                                                + " regional.telefono_regional, "
                                                                                + " departamento.codigo_departamento, "
                                                                                + " departamento.nombre_departamento, "
                                                                                + " municipio.codigo_municipio,  "
                                                                                + "municipio.nombre_municipio "
                                                                                + "FROM  regional "
                                                                                + "INNER JOIN  municipio ON regional.codigo_municipio = municipio.codigo_municipio  INNER JOIN  departamento ON municipio.codigo_departamento = departamento.codigo_departamento order by regional.id_regional desc";
                                                                        cn.st = cn.con.createStatement();
                                                                        cn.rt = cn.st.executeQuery(sql);
                                                                        while (cn.rt.next()) {
                                                                            r = cn.rt.getString("id_regional");
                                                                            codigo_regional = cn.rt.getString("codigo_regional");
                                                                            nombre_regional = cn.rt.getString("nombre_regional");
                                                                            direccion_regional = cn.rt.getString("direccion_regional");
                                                                            email_regional = cn.rt.getString("correo_regional");
                                                                            telefono_regional = cn.rt.getString("telefono_regional");
                                                                            departamento_regional = cn.rt.getString("codigo_departamento");
                                                                            municipio_regional = cn.rt.getString("codigo_municipio");
                                                                            out.println("<tr>");
                                                                            out.println("<td><button type=\"button\" data-toggle=\"modal\" data-target=\"#myModalMod\" onclick='meth(\"" + r + "\",\"" + codigo_regional + "\",\"" + nombre_regional + "\",\"" + direccion_regional + "\",\"" + email_regional + "\",\"" + telefono_regional + "\",\"" + departamento_regional + "\",\"" + municipio_regional + "\")' class=\"glyphicon glyphicon-edit\" title=\"Actualizar Registro\"></td>\n ");
                                                                            out.println("<td>" + cn.rt.getString("codigo_regional") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_regional") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("direccion_regional") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("correo_regional") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("telefono_regional") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_departamento") + "</td>");
                                                                            out.println("<td>" + cn.rt.getString("nombre_municipio") + "</td>");
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
