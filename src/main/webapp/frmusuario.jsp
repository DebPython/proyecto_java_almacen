<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       <link href="css/" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <title>USUARIOS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="usuarios" />
        </jsp:include>
        <div class="container-fluid">

            <h1>Formulario de USUARIOS</h1>

            <br>
            <form action="UsuarioControlador" method="post">
                <input type="hidden" name="id_usuario" value="${usuario.id_usuario}" >

                <div class="mb-3">
                    <label for="" class="form-label">Usuario</label>
                    <input type="text" class="form-control" name="usuario" value="${usuario.usuario}" placeholder="Escriba su usuario">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" value="${usuario.password}" placeholder="Escriba su contraseña">
                </div>
                <button type="submit" class="btn btn-primary btn-lg">Enviar</button>
            </form>    

        </div>

</div>
</div>



        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>
</html>
