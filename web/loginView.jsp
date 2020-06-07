<%-- 
    Document   : loginView
    Created on : 06/06/2020, 06:37:13 PM
    Author     : YONI
--%>
<%
    Boolean respuesta = (Boolean) request.getAttribute("respuesta");
    String username = (String) session.getAttribute("username");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body class="container">
        <h1>Bienvenindo!!</h1>
        <%-- =respuesta 
        <br>--%>
        <%=username%>
        <hr style="">
    </form>		
    <form action="ProductoServlet" >
        <h1>Pedidos Trentino</h1>
        <p>Producto</p>
        <input type="text" name="nombre">
        <p>Cantidad</p>
        <input type="number" name="cantidad"><br><br>
        <p>Si cuentas con codigo por favor ingresar</p>
        <p>codigo</p>
        <input type="text" name="nombreProm"><br><br>
        <input  type="submit" class="btn btn-primary btn-block btn-ms" style="width: 10%" value="Enviar">

        <br>
        <br>
        <br>
    </form>
</body>
</html>
