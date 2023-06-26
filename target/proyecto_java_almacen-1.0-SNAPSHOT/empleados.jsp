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
    <body class="box">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="empleados" />
        </jsp:include>
        <div class="container-fluid">
            
            <center>
                <div class="loader">
                    <h1>
                        <span>EMPLEADOS</span>
                    </h1>

                </div>
            </center>

                    <a  class="btn btn-primary btn-lg" href="EmpleadoControlador?action=add" style="margin-bottom: 10px">
                        <i class="fa-solid fa-circle-plus" >
                        </i> Nuevo </a>
            
            <table class="table table-striped">
                <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Usuario</th>
                    <th>Ci</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Direccion</th>
                    <th>Numero</th>
                    <th>Telefono</th>
                    <th>Acciones</th>
                    
                </tr>
                </thead>
                <c:forEach var="item" items="${empleados}">
                <tbody>    
                    <tr>
                        <td>${item.id_empleados}</td>
                        <td>${item.usuario}</td>
                        <td>${item.ci}</td>
                        <td>${item.nombre}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.direccion}</td>
                        <td>${item.numero}</td>
                        <td>${item.telefono}</td>
                        <td><div class='btn-group'>
                            <a type='button' href="EmpleadoControlador?action=edit&id_empleados=${item.id_empleados}" class="btn btn-warning">
                                <i class="fas fa-pencil-alt"></i></a>
                            <a type='button' href="EmpleadoControlador?action=delete&id_empleados=${item.id_empleados}" onclick="return(confirm('Esta Seguro ??'))" class="btn btn-danger">
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
