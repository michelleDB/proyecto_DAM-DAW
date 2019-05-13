<%-- 
    Document   : crear_cuenta
    Created on : 07-may-2019, 12:32:36
    Author     : Fresita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Header -->
        <%@ include file="includes/header.jsp" %>

        <div class="container">
            <div>
                 <h1>Crear cuenta</h1>
            </div>
            <form action="crear_cuenta" method="POST">
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                        <h3>Datos personales</h3>
                        <input type="hidden" name="pagina" value="crear_cuenta">
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre">
                        <input type="text" name="apellido1" class="form-control" placeholder="Primer apellido">
                        <input type="text" name="apellido2" class="form-control" placeholder="Segundo apellido">
                        <input type="text" name="telefono" class="form-control" placeholder="Telefono">
                        <h3>Datos para inciar sesión</h3>
                        <input type="email" name="email" class="form-control" aria-describedby="emailHelp" placeholder="Introduzca su email">
                        <input type="password" name="password" class="form-control" placeholder="Contraseña">
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                         <h3>Dirección de envío</h3>
                        <p>Puede rellenar la dirección de envío ahora o mas adelante.</p>
                        <input type="text" name="direccion" class="form-control" placeholder="Direccion">
                        <input type="text" name="municipio" class="form-control" placeholder="Municipio">
                        <input type="text" name="codigo_postal" class="form-control" placeholder="Código postal">
                        <button type="submit" class="btn btn-primary">Crear cuenta</button>
                    </div>
                </div>
            </form>
        </div>
        
        <!-- Footer -->
        <%@ include file="includes/footer.jsp" %>
    </body>
</html>
