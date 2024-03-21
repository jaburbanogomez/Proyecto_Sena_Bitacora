<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpSession sesion= request.getSession();
sesion.removeAttribute("usuari");
sesion.invalidate();
response.sendRedirect("../INDEX/index.jsp");
%>



