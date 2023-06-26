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
    <body class="box">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="ventas" />
        </jsp:include>
        <div class="container-fluid">
            
            <center>
                <div class="loader">
                    <h1>
                        <span>VENTAS</span>
                       
                    </h1>

                </div>
            </center>

            
            <a  class="btn btn-primary btn-lg" href="VentaControlador?action=add" style="margin-bottom: 10px">
                <i class="fa-solid fa-circle-plus"></i> Nuevo </a>
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Usuario</th>
                    <th>Cliente</th>
                    <th>Descripcion</th>
                    <th>Fecha</th>
                    <th>Acciones</th>
                    
                </tr>
                </thead>
                <c:forEach var="item" items="${ventas}">
                <tbody>
                    <tr>
                        <td>${item.id_ventas}</td>
                        <td>${item.usuario}</td>
                        <td>${item.cliente}</td>
                        <td>${item.descripcion}</td>
                        <td>${item.fecha}</td>
                        <td><div class="btn-group">
                                <a type="button" href="VentaControlador?action=edit&id_ventas=${item.id_ventas}" class="btn btn-warning">
                                    <i class="fas fa-pencil-alt"></i></a>
                                <a type="button" href="VentaControlador?action=delete&id_ventas=${item.id_ventas}" onclick="return(confirm('Esta Seguro ??'))" class="btn btn-danger">
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
