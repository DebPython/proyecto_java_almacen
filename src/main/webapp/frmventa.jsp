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

        <title>VENTAS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="ventas" />
        </jsp:include>
        <div class="container-fluid">

            <h1>Formulario de Ventas</h1>

            <br>
            <form action="VentaControlador" method="post">
                <input type="hidden" name="id_ventas" value="${venta.id_ventas}" >
                <div class="mb-3">
                    <label for="" class="form-label">Usuario</label>
                    <select name="id_usuario" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_usuarios}">
                            <option value="${item.id_usuario}" 
                                    <c:if test="${venta.id_usuario == item.id_usuario}">
                                        selected
                                    </c:if>
                                    >${item.usuario}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Cliente</label>
                    <input type="text" class="form-control" name="cliente" value="${venta.cliente}" placeholder="Escriba el Cliente">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Descripcion</label>
                    <input type="text" class="form-control" name="descripcion" value="${venta.descripcion}" placeholder="Escriba su Descripcion">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Fecha</label>
                    <input type="text" class="form-control" name="fecha" value="${venta.fecha}" placeholder="Escriba la Fecha">
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
