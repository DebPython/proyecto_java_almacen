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
        <title>TIPOS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="productos" />
        </jsp:include>
        <div class="container-fluid">

            <h1>Formulario de Productos</h1>

            <br>
            <form action="ProductoControlador" method="post">
                <input type="hidden" name="id_producto" value="${producto.id_producto}" >
                <div class="mb-3">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" value="${producto.nombre}" placeholder="Escriba su Nombre">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Stock</label>
                    <input type="text" class="form-control" name="stock" value="${producto.stock}" placeholder="Escriba su Stock">
                </div>
                
                <div class="mb-3">
                    <label for="" class="form-label">Marcas</label>
                    <select name="id_marcas" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_marcas}">
                            <option value="${item.id_marcas}" 
                                    <c:if test="${producto.id_marcas == item.id_marcas}">
                                        selected
                                    </c:if>
                                    >${item.nombre}</option>
                        </c:forEach>
                    </select>
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