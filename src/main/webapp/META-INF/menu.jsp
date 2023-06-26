<%
    String opcion = request.getParameter("opcion");
    HttpSession ses = request.getSession();
    String usuario = (String) ses.getAttribute("usuario");
%>
<style>
    #wrapper {
      overflow-x: hidden;
    }
  
    #sidebar-wrapper {
      min-height: 100vh;
      margin-left: -15rem;
      overflow-y: auto;
      width: 15rem;
      background-color: #212529;
      color: #ffffff;
    }
  
    #sidebar-wrapper .sidebar-heading {
      padding: 0.875rem 1.25rem;
      font-size: 1.2rem;
    }
  
    #sidebar-wrapper .list-group {
      width: 100%;
    }
  
    #page-content-wrapper {
      min-width: 100vw;
    }
  
    #wrapper.toggled #sidebar-wrapper {
      margin-left: 0;
    }
  
    @media (min-width: 768px) {
      #sidebar-wrapper {
        margin-left: 0;
      }
  
      #page-content-wrapper {
        min-width: 0;
        width: 100%;
      }
  
      #wrapper.toggled #sidebar-wrapper {
        margin-left: -15rem;
      }
    }
  
    .border-bottom-header {
      border-bottom: 1px solid #000000;
    }
  
    .logout-icon {
      margin-left: 10px;
    }
  </style>

  <div class="d-flex" id="wrapper">
    <div class="bg-dark border-right" id="sidebar-wrapper">
        <div class="sidebar-heading text-center"><a href="index.jsp"><img src="img/logo.png" width="45%"></a></div>
      <div class="list-group list-group-flush">
        <a href="#menu1" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">
            <i class="fas fa-bars fa-fw mr-2"></i>
            Usuarios
        </a>
        <div class="collapse" id="menu1">
            
          <a href="UsuarioControlador" class="list-group-item list-group-item-action bg-dark text-white pl-4">
            <span class="icon-list <%= (opcion.equals("usuarios") ? "active" : "")%>">
              <i class="fas fa-users fa-fw mr-2"></i>
            </span>
            Usuarios
          </a>
            
          <a href="EmpleadoControlador" class="list-group-item list-group-item-action bg-dark text-white pl-4">
            <span class="icon-list <%= (opcion.equals("empleados") ? "active" : "")%>">
              <i class="fas fa-user-tie fa-fw mr-2"></i>
            </span>
            Empleados
          </a>
        </div>
        
        <a href="#menu3" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">
          <i class="fas fa-bars fa-fw mr-2"></i>
          Caracteristicas
        </a>
        <div class="collapse" id="menu3">
            
          <a href="MarcaControlador" class="list-group-item list-group-item-action bg-dark text-white pl-4">
            <span class="icon-list <%= (opcion.equals("marcas") ? "active" : "")%>">
              <i class="fas fa-tags fa-fw mr-2"></i>
            </span>
            Marcas
          </a>
              
          
        </div>
        <a href="#menu4" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">
          <i class="fas fa-bars fa-fw mr-2"></i>
          Productos
        </a>
        <div class="collapse" id="menu4">
            
          <a href="ProductoControlador" class="list-group-item list-group-item-action bg-dark text-white pl-4">
            <span class="icon-list <%= (opcion.equals("productos") ? "active" : "")%>">
              <i class="fas fa-box fa-fw mr-2"></i>
            </span>
            Productos
          </a>

        </div>
        <a href="#menu5" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">
            <i class="fas fa-bars fa-fw mr-2"></i>
            Ventas
        </a>
        <div class="collapse" id="menu5">
            
            <a href="VentaControlador" class="list-group-item list-group-item-action bg-dark text-white pl-4">
              <span class="icon-list <%= (opcion.equals("ventas") ? "active" : "")%>">
                <i class="fas fa-shopping-basket fa-fw mr-2"></i>
              </span>
              Ventas
            </a>
            
            <a href="Venta_productoControlador" class="list-group-item list-group-item-action bg-dark text-white pl-4">
              <span class="icon-list <%= (opcion.equals("venta_productos") ? "active" : "")%>">
                <i class="fas fa-chart-bar fa-fw mr-2"></i>
              </span>
                Ventas Productos
            </a>
            
          </div>
                
        <a href="Logout" class="list-group-item list-group-item-action bg-dark text-white">
          <span class="icon-list <%= (opcion.equals("logout") ? "active" : "")%>">
            <i class="fas fa-sign-out-alt fa-fw mr-2"></i>
          </span>
          Cerrar Sesión
        </a>
      </div>
    </div>
    <div id="page-content-wrapper">
      <header class="bg-light border-bottom-header">
        <div class="container-fluid">
          <div class="d-flex justify-content-between align-items-center py-3">
            <h1 class="h4">URBAN STYLE ROPA A MEDIDA</h1>
            <div class="d-flex align-items-center">
              <span class="icon-list <%= (opcion.equals("logout") ? "active" : "")%>">${usuario}</span>
              <i class="fas fa-user-circle fa-fw logout-icon"></i>
              <a href="Logout" class="btn btn-outline-dark ml-2">Cerrar Sesión</a>
            </div>
          </div>
        </div>
      </header>
      <script>
    $(document).ready(function () {
      // Toggle sidebar
      $("#sidebar-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
      });
    });
  </script>
