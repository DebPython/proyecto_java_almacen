<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String opc = request.getParameter("opcion");

    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("login.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALMACEN</title>
        <link href="css/" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>

    <body  class="box">

        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="index" />
        </jsp:include>
        <div class="container-fluid">
            
        </div>
        </div>
    </div>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
