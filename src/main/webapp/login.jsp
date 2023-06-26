<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <title>Iniciar sesión - Urban Style</title>
  <style>
    body {
      background-image: url('img/background-image.jpg'); /* Reemplaza la URL con tu propia imagen de fondo */
      background-size: cover;
      background-position: center;
    }
    .login-form {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.8);
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      margin-top: 50vh;
      transform: translateY(-50%);
    }
    .login-form .logo {
      font-size: 32px;
      color: #333;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <div class="login-form">
          <h2 class="text-center logo"><img src="img/logo.png" width="30%"> Iniciar Sesión</h2>
          <form action="Login" method="post">
            <div class="mb-3">
              <label for="username" class="form-label">Usuario</label>
              <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Ingrese su usuario" required>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Contraseña</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese su contraseña" required>
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Iniciar sesión</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>