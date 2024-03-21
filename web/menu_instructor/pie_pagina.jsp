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
            response.sendRedirect("../index/index.jsp");//lo devuelve a index y no al menu
//request.getRequestDispatcher("../index/index.jsp").forward(request, response);
        }
    } catch (Exception e) {
        response.sendRedirect("../index/index.jsp");
//request.getRequestDispatcher("../index/index.jsp").forward(request, response);
    }
%>
<footer class="footer full-reset">
    <div class="container-fluidpie">
        <div class="row">
            <div class="col-sm-4">                
                <h4 class="all-tittles">Acerca de</h4>
                <p>
                    Bitácora del Aprendiz<br>Creada para el Sena Centro Agropecuario<br>(Regional Cauca)
                </p>
            </div>
            <div class="col-sm-4">
                <h4 class="all-tittles">Desarrolladores</h4>
                <ul class="list-unstyled">
                    <p>Titulación<br>ADSI<br>Ficha 1135869</p>                      
                </ul>    
            </div>
            <div class="col-sm-4">
                <h4 class="all-tittles">Visita</h4>
                <ul class="list-unstyled">
                    <li>
                        <a  title="BlackBoard"  target="_blank" href="https://senaintro.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_547_1"> <img class="footer-social"  src="assets/img/blackboard_logo2.fw.png" style="width:35px;"> </a>
                        <a  title="SofiaPlus"  target="_blank" href="http://oferta.senasofiaplus.edu.co/sofia-oferta/"> <img class="footer-social"  src="assets/img/sp_logo.fw.png" style="width:70px;"></a>
                    </li>
                </ul>    
            </div>
        </div>
        <div class="footer-copyright full-reset all-tittles">            
            <ul class="list-unstyled">
                <p>© Sena 2017</p>                      
            </ul> 
        </div>
</footer>



