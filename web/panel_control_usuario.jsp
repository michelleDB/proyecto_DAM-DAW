<%-- 
    Document   : panel_control_usuario
    Created on : 09-may-2019, 13:24:27
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
        <%@ include file="includes/header_sesion_iniciada.jsp" %>
        
        <div class="container">
            <h1>Mi cuenta</h1>
            <p>Bienvenido a tu cuenta. Desde aquí puedes administrar tus direcciones y pedidos.</p>
            <div class="row">
                <div class="col">
                    <a class="nav-link" href="mis_datos_personales.jsp">
                        <div class="row">
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1"><img src="boton-de-inicio.png"></div>
                            <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3"><p>Mis datos personales</p></div>
                        </div>
                    </a>
                </div>
                <div class=""></div>
            </div>
            <div class="row">
                <div class="col">
                    <a class="nav-link" href="">
                        <div class="row">
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1"><img src="boton-de-inicio.png"></div>
                            <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3"><p>Mis direcciones</p></div>
                        </div>
                    </a>
                </div>
                <div class=""></div>
            </div>
            <div class="row">
                <div class="col">
                    <a class="nav-link" href="">
                        <div class="row">
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1"><img src="boton-de-inicio.png"></div>
                            <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3"><p>Historial y detalles de mis pedidos</p></div>
                        </div>
                    </a>
                </div>
                <div class=""></div>
            </div>
            <div class="row">
                <div class="col">
                    <a class="nav-link" href="">
                        <div class="row">
                            <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1"><img src="boton-de-inicio.png"></div>
                            <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3"><p>Mis devoluciones</p></div>
                        </div>
                    </a>
                </div>
                <div class=""></div>
            </div>
            <div class="row">
                <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2">
                    <a class="btn btn-primary" href=".jsp" role="button">Cerrar sesión</a>
                </div>
                <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1">
                    <a class="btn btn-primary" href=".jsp" role="button">Inicio</a>
                </div>
            </div>
        </div>
        
        <!-- Footer -->
        <%@ include file="includes/footer.jsp" %>
    </body>
</html>
