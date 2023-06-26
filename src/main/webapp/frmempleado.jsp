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

        <title>EMPLEADOS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="empleados" />
        </jsp:include>
        <div class="container-fluid">

            <h1>Formulario de Empleados</h1>

            <br>
            <form action="EmpleadoControlador" method="post">
                <input type="hidden" name="id_empleados" value="${empleado.id_empleados}" >
                <div class="mb-3">
                    <label for="" class="form-label">Usuario</label>
                    <select name="id_usuario" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_usuarios}">
                            <option value="${item.id_usuario}" 
                                    <c:if test="${empleado.id_usuario == item.id_usuario}">
                                        selected
                                    </c:if>
                                    >${item.usuario}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Ci</label>
                    <input type="text" class="form-control" name="ci" value="${empleado.ci}" placeholder="Escriba su CI">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" value="${empleado.nombre}" placeholder="Escriba su Nombre">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Apellidos</label>
                    <input type="text" class="form-control" name="apellidos" value="${empleado.apellidos}" placeholder="Escriba sus Apellidos">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Direccion</label>
                    <input type="text" class="form-control" name="direccion" value="${empleado.direccion}" placeholder="Escriba su Direccion">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Numero#</label>
                    <input type="text" class="form-control" name="numero" value="${empleado.numero}" placeholder="Escriba su N°">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Telefono</label>
                    <input type="text" class="form-control" name="telefono" value="${empleado.telefono}" placeholder="Escriba su Telefono">
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