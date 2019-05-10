<%-- 
    Document   : iniciar_sesion
    Created on : 07-may-2019, 12:16:34
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
        <title>JSP Page</title>
    </head>
    <body>
        
        <!-- Header -->
        <%@ include file="includes/header.html" %>
        <% if (getServletContext().getAttribute("cuenta_creada") == "valida") { %>
        <div class="alert alert-primary" role="alert">
            Cuenta creada!
        </div>
        <%}%>


        <!-- Contenido Iniciar Sesión -->
        <div class="container">
            <div class="row vertical-divider">
                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                    <h1>Título</h1>
                    <form action="iniciar_sesion" method="POST">
                        <input type="hidden" name="pagina" value="iniciar_sesion">
                        <input type="email" name="email" class="form-control" aria-describedby="emailHelp" placeholder="Introduzca su email">
                        <input type="password" name="password" class="form-control" placeholder="Contraseña">
                        <button type="submit" class="btn btn-primary">Iniciar sesión</button>
                    </form>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                    <h1>Título</h1>
                    <p>Párrafo</p>
                    <a class="btn btn-primary" href="crear_cuenta.jsp" role="button">Crear cuenta</a>
                </div>
            </div>
        </div>
        <!-- Fin Contenido Iniciar Sesión -->

        <!-- Footer -->
        <%@ include file="includes/footer.html" %>
    </body>
</html>
