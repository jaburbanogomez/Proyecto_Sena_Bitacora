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
    <title>Registrar Regionales</title>
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/shortcut.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#departamento').change(function (event) {
                $.post('../cargar', {
                    departamento: $('#departamento').val()
                }, function (responseText) {
                    $('#municipio').html(responseText);
                });
            });
        });
        function validarCampos() {
            var codigo_regional = document.getElementById("codigo_regional").value;
            var nombre_regional = document.getElementById("nombre_regional").value;
            var direccion_regional = document.getElementById("direccion_regional").value;
            var telefono_regional = document.getElementById("telefono_regional").value;
            var email_regional = document.getElementById("email_regional").value;
            var departamento = document.getElementById("departamento").value;
            var municipio = document.getElementById("municipio").value;
            var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
            if (codigo_regional === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL CODIGO DE LA REGIONAL";
            } else if (nombre_regional === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL NOMBRE DE LA REGIONAL ";
            } else if (direccion_regional === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR LA DIRECCION DE LA REGIONAL ";
            } else if (telefono_regional === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL TELEFONO DE LA REGIONAL ";
            } else if (email_regional === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR EL EMAIL DE LA REGIONAL ";
            } else if (departamento === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER UN DEPARTAMENTO";
            } else if (municipio === "") {
                document.getElementById("mensajeScript").innerHTML = "DEBE ESCOGER UN MUNICIPIO ";
            } else if (!patron.test(email_regional)) {
                document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR UN CORREO VALIDO";
            } else {
                enviardate();
            }
        }
        function enviardate()
        {
            var submitBtn = document.getElementById('guardar');
            submitBtn.click();
        }
        function mostrar() {
            document.getElementById('oculto').style.display = 'block';
        }
        function mostrar2() {
            document.getElementById('oculto').style.display = 'block';
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
    <body oncontextmenu="return false">
        <jsp:include page="menu_admin.jsp" />
        <%
            String mensaje = "";
            boolean guardar = false;
            boolean limpiar = false;
            if (request.getParameter("guardar") != null) {
                guardar = true;
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
            if (guardar) {
                Regionales_CRUD misDatos = new Regionales_CRUD();// de esta manera tenemos conexion a la base de datos
                Regionales miRegional = misDatos.consultarRegionales(codigo_regional,nombre_regional);
                if (miRegional != null) {
                    mensaje = "REGIONAL YA EXISTE";
                } else {
                    miRegional = new Regionales(
                            codigo_regional,
                            nombre_regional,
                            direccion_regional,
                            email_regional,
                            telefono_regional,
                            municipio_regional);
                    misDatos.nuevo_regional(miRegional);
                    mensaje = "REGIONAL GUARDADA EXITOSAMENTE";
                    codigo_regional = "";
                    nombre_regional = "";
                    direccion_regional = "";
                    email_regional = "";
                    telefono_regional = "";
                    departamento_regional = "";
                    municipio_regional = "";
                }
                misDatos.cerrarconexion();
            }
        %>
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO REGIONALES--------------------->
        <div class="content-page-container full-reset custom-scroll-containers">
            <form class="form-horizontal" action="registrar_regionales.jsp"  method="POST"> 
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"   class="active"><a href="registrar_regionales.jsp">Registrar Regionales</a></li>
                                <li role="presentation"><a href="registrar_centros.jsp">Registar Centros</a></li>
                                <li role="presentation"><a href="registrar_areas.jsp">Registrar Areas</a></li> 
                                <li role="presentation"><a href="registrar_titulaciones.jsp">Registrar Titulaciones</a></li> 
                                <li role="presentation"><a href="registrar_fichas.jsp">Registrar Fichas</a></li> 
                            </ul>
                        </div>                        
                        <div class="title-flat-form title-flat-blue">Registrar Regionales</div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                                <div class="col-md-6">
                                    <div class="group-material">
                                        <input type="text" style="cursor:pointer;" autocomplete="off" name="codigo_regional" id="codigo_regional" value="<%=codigo_regional%>"  onkeypress="return tabE(this, event)" class="material-control tooltips-general"  placeholder="Ingrese código regional"  data-toggle="tooltip" data-placement="top" title="Escribe el código de la regional">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Código</label>
                                    </div>
                                    <div class="group-material">
                                        <input type="text" style="cursor:pointer;" autocomplete="off" name="nombre_regional" id="nombre_regional"  value="<%=nombre_regional%>" onkeypress="return tabE(this, event)" class="material-control tooltips-general"  placeholder="Ingrese nombre regional"  data-toggle="tooltip" data-placement="top" title="Escribe el nombre de la regional">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Nombre</label>
                                    </div>
                                    <div class="group-material">
                                        <input type="text" style="cursor:pointer;" autocomplete="off" name="direccion_regional" id="direccion_regional" value="<%=direccion_regional%>" onkeypress="return tabE(this, event)" class="material-control tooltips-general input-check-user" placeholder="Ingrese direccion regional"   data-toggle="tooltip" data-placement="top" title="Escribe la direccion de la regional">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Direccion</label>
                                    </div>
                                    <div class="group-material">
                                        <input type="text" style="cursor:pointer;" autocomplete="off" name="telefono_regional" id="telefono_regional" value="<%=telefono_regional%>" onkeypress="return tabE(this, event)" class="material-control tooltips-general"  placeholder="Ingrese telefono regional" data-toggle="tooltip" data-placement="top" title="Escribe el telefono de la regional">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Telefono</label>
                                    </div>
                                </div>
                                <div class="col-md-6"> 
                                    <div class="group-material">
                                        <input type="text" style="cursor:pointer;" autocomplete="off" name="email_regional" id="email_regional" value="<%=email_regional%>" onkeypress="return tabE(this, event)"  class="material-control tooltips-general input-check-user" placeholder="Ingrese email regional"  data-toggle="tooltip" data-placement="top" title="Escribe la direccion de la regional">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Email</label>
                                    </div>
                                    <div class="row">
                                        <div class="group-material">
                                            <select   name="departamento_regional" id="departamento" value="<%=departamento_regional%>" onkeypress="return tabE(this, event)" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige un departamento">
                                                <%
                                                    Conexion_bd cn = new Conexion_bd();
                                                    try {
                                                        out.println("<option value=''  >:.</option>");
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
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>Departamento</label>
                                        </div>
                                    </div>
                                    <div class="group-material">
                                        <select  name="municipio_regional" id="municipio"  value="<%=municipio_regional%>" onkeypress="return tabE(this, event)" class="material-control tooltips-general" data-toggle="tooltip"  data-placement="top" title="Elige un municipio"></select>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Municipio</label>
                                    </div>
                                </div> 
                            </div>
                        </div> 
                        <center>
                            <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                        </center>
                        <p class="text-center">
                            <button type="button"  value="guardar"  onclick="validarCampos();" data-toggle="tooltip" title="Guardar Registro" class="btn btn-primary tooltips-general"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                            <button  name="guardar" type="submit"  style="display: none;" id="guardar"></button>
                            <button type="submit" name="limpiar" value="limpiar" id="limpiar" data-toggle="tooltip" title="Limpiar Formulario" class="btn btn-primary tooltips-general"><i class="zmdi fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                        </p>   
                    </div>           
                </div>   
                <jsp:include page="pie_pagina.jsp" />
            </form>
        </div>
        <!--------------------------------FIN DISEÑO DEL FORMULARIO REGIONALES--------------------->
    </body>
</html>

