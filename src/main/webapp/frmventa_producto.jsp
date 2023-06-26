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

        <title>VENTA_PRODUCTO</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="venta_productos" />
        </jsp:include>
        <div class="container-fluid">

            <h1>Formulario de Venta Productos</h1>

            <br>
            <form action="Venta_productoControlador" method="post">
                <input type="hidden" name="id_venta_producto" value="${venta_producto.id_venta_producto}" >
                <div class="mb-3">
                    <label for="" class="form-label">Venta</label>
                    <select name="id_ventas" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_ventas}">
                            <option value="${item.id_ventas}" 
                                    <c:if test="${venta_producto.id_venta_producto == item.id_ventas}">
                                        selected
                                    </c:if>
                                    >${item.cliente}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Producto</label>
                    <select name="id_producto" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_productos}">
                            <option value="${item.id_producto}" 
                                    <c:if test="${venta_producto.id_producto == item.id_producto}">
                                        selected
                                    </c:if>
                                    >${item.nombre}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Cantidad</label>
                    <input type="text" class="form-control" name="cantidad" value="${venta_producto.cantidad}" placeholder="Escriba la Cantidad">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Descuento</label>
                    <input  type="text" class="form-control" name="descuento" value="${venta_producto.descuento}" placeholder="Escriba su Descuento">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Precio</label>
                    <input  type="text" class="form-control" name="precio" value="${venta_producto.precio}" placeholder="Escriba el Precio">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Total</label>
                    <input  type="text" class="form-control" name="total" value="${venta_producto.total}" placeholder="Escriba el Total">
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
