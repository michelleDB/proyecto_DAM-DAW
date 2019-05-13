<%-- 
    Document   : header_sesion_iniciada
    Created on : 10-may-2019, 12:10:34
    Author     : Fresita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!-- Barra superior -->
        <div id="barra-superior" class="container-fluid text-center  header-top">
            <p class="pt-1 pb-1 small">Gastos de envio GRATIS a partir de 40€</p>
        </div>
        <!-- Fin Barra superior -->

        <!-- Logo -->
        <div id="logo-superior" class="container-fluid text-center pt-1 pb-1">
            <img src="imagenes/header/logo-gris-rosa.png" class="img-responsive img-fluid center-block"/>
        </div>
        <!-- Fin Logo -->

        <!-- Menú -->
        <nav id="menu-principal" class="navbar" >
            <!-- <div class="container-fluid">-->
            <!--<div class="row">-->
            <!--<div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">-->
            <ul id="items-menu" class="nav justify-content-start">
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Personalizado</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Pulseras</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Collares</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Anillos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Pendientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Hombre</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Niños</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold text-uppercase letter-spacing" href="#">Regalos</a>
                </li>
            </ul>
            <!-- </div> -->
            <!--  <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">-->
            <ul id="iconos-menu" class="nav">

                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">
                        <img src="imagenes/iconos/boton-de-encendido.png" width="24" height="24">
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">
                        <p>Cerrar sesión</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="panel_control_usuario.jsp">
                        <img src="imagenes/header/usuario2.png">
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="panel_control_usuario.jsp">
                        <p>Nombre usuario<%  %></p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><img src="imagenes/header/carrito2.png"></a>
                </li>
            </ul>
            <!-- </div>-->
            <!--</div>-->
            <!--</div>-->
        </nav>
        <!-- Fin Menú -->
    </body>
</html>
