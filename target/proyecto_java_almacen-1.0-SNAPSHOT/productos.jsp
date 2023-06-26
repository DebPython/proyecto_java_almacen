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

        <title>PRODUCTOS</title>
    </head>
    <body class="box">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="productos" />
        </jsp:include>
        <div class="container-fluid">
            
            <center>
                <div class="loader">
                    <h1>
                        <span>PRODUCTOS</span>
                        
                    </h1>

                </div>
            </center>

            
            <a  class="btn btn-primary btn-lg" href="ProductoControlador?action=add" style="margin-bottom: 10px">
                <i class="fa-solid fa-circle-plus"></i> Nuevo </a>
            <table class="table  table-striped table-bordered">
                <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Stock</th>
                    <th>Marca</th>
                    <th>Acciones</th>
                    
                </tr>
                </thead>
                <c:forEach var="item" items="${productos}">
                <tbody>    
                    <tr>
                        <td>${item.id_producto}</td>
                        <td>${item.nombre}</td>
                        <td>${item.stock}</td>              
                        <td>${item.marcas}</td>
                        <td><div class='btn-group'>
                            <a type='button' href="ProductoControlador?action=edit&id_producto=${item.id_producto}" class="btn btn-warning">
                                <i class="fas fa-pencil-alt"></i></a>
                            <a type='button' href="ProductoControlador?action=delete&id_producto=${item.id_producto}" onclick="return(confirm('Esta Seguro ??'))" class="btn btn-danger">
                                <i class="fas fa-trash-alt"></i></a>
                            </div>
                        </td>
                    </tr>
                </tbody>
                </c:forEach>

            </table>
        </div>

</div>
</div>



        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>
</html>
