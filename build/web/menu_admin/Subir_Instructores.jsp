<%@page import="conexion_bd.leerArchivoExcel_Instructor"%>
<%@page import="conexion_bd.Bitacora"%>
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
        <title>Subir Instructores</title>
        <link rel="Shortcut Icon" type="image/x-icon" href="assets/logo_bitacora/logo_bitacora.png" charset="UTF-8"/>
        <script src="js/shortcut.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script type="text/javascript">
            function validarCampos() {
                var ruta = document.getElementById("ruta").value;
                if (ruta === "") {
                    document.getElementById("mensajeScript").innerHTML = "DEBE INGRESAR LA RUTA DEL ARCHIVO ";
                } else {
                    //document.getElementById("mensajeScript").innerHTML = "Centro Actualizado Exitosamente";
                    // var d=document.getElementById("actualiza").value;
                    enviardate();
                }
            }

            function enviardate()
            {
                var submitBtn = document.getElementById('subir');
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
            // variable que muestra los mensajes
            String mensaje = "";
            //declarar una variables que nos definan cual fue el boton que presionaron
            boolean subir = false;
            boolean limpiar = false;
            if (request.getParameter("subir") != null) {
                subir = true;
            }
            if (request.getParameter("limpiar") != null) {
                limpiar = true;
            }
            // obtenemos el valor como fue llamado el formulario          
            String ruta = "";
            // obtenemos los valores y validamos si estas variables estan

            if (request.getParameter("ruta") != null) {
                ruta = request.getParameter("ruta");
            }
            //Metodo limpiar
            if (limpiar) {
                ruta = "";
            }
            //Metodo guardar  
            if (subir) {
                leerArchivoExcel_Instructor ob = new leerArchivoExcel_Instructor();
                if (ob.leerArchivoExcel(ruta) == 1) {
                    mensaje = "LOS INSTRUCTORES A SUBIR YA SE ENCUENTRAN REGISTRADOS";
                } else {
                    mensaje = "INSTRUCTORES REGISTRADOS EXITOSAMENTE";
                }
                ob.cerrarconexion();
            }
        %>
        <!--------------------------------INICIO DISEÑO DEL FORMULARIO SUBIR ALUMNO--------------------->
        <div class="content-page-container full-reset custom-scroll-containers" >
            <form class="form-horizontal" action="Subir_Instructores.jsp" method="POST"> 
                <div class="container-fluid">
                    <div class="container-flat-form">
                        <div class="container-fluid">
                            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                                <li role="presentation"  class="active"><a href="Subir_Instructores.jsp">Subir Instructores</a></li>
                                <li role="presentation"><a href="Subir_Aprendices.jsp">Subir Aprendices</a></li>                                           
                            </ul>
                        </div>
                        <div class="title-flat-form title-flat-blue">Formulario Subir Instructores</div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2">                         
                                <div class="group-material">
                                    <input type="text"  name="ruta" autocomplete="off"  id="ruta" class="material-control tooltips-general input-check-user" placeholder="Ingrese la ruta del archivo"  onkeypress="return tabE(this, event)" data-toggle="tooltip" data-placement="top" title="Escribe la ruta del archivo">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Ruta del Archivo</label>
                                </div>  
                                <center>
                                    <div id="mensajeScript" style="color:#fc7323"> <%=mensaje%></div> 
                                </center>
                                <p class="text-center">
                                    <button type="button"  value="subir" onclick="validarCampos()"  class="btn btn-primary"><i class="zmdi fa fa-upload"></i> &nbsp;&nbsp; subir</button>
                                    <button  name="subir" type="submit"  style="display: none;" id="subir"></button>
                                    <button type="submit" name="limpiar" value="limpiar" id="limpiar" class="btn btn-primary"><i class="zmdi fa fa-repeat"></i> &nbsp;&nbsp; Limpiar</button>
                                </p> 
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="pie_pagina.jsp" />
            </form>
        </div>     
        <!--------------------------------FIN DISEÑO DEL FORMULARIO SUBIR INSTRUCTORES--------------------->
    </body>
</html>
