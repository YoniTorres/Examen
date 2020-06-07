<%-- 
    Document   : pidido
    Created on : 16/05/2020, 06:36:56 PM
    Author     : Kenneth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Double resul = null;
    resul = (Double) request.getAttribute("resul");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Total a Pagar</h1>
        
        <c:forEach items="${ProductoServlet}" var="ProductoServlet">
            <td>${resul}</td>
        </c:forEach>
    <BR><BR><BR>
     <%-- Agregando codigo --%>
        <div>Descargar de Archivos</div>
        <a href="/ExamenParcial/DescargaServlet">Descargar</a>
    </body>
</html>
