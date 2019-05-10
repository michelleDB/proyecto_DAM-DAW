<%-- 
    Document   : index
    Created on : 07-may-2019, 11:07:43
    Author     : Fresita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>Inicio</title>
    </head>
    <body>

        <!-- Header -->
        <%-- <%@ include file="includes/header.html" %> --%>
        <%
            
            HttpSession sesion = request.getSession();
            if (sesion.getAttribute("sesion_usuario") == null) {%>
                <%@ include file="includes/header.html" %>
          <%} else { %>
                <%@ include file="includes/header_sesion_iniciada.html" %>
          <%}%>

        <!-- Contenido Inicio -->
        <!-- Slide -->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagenes/carousel/slide1.jpeg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagenes/carousel/slide22.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagenes/carousel/slide33.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- Fin Slide -->

        <!-- 3 Botones -->
        <div class="container mt-5 mb-5">
            <div class="row">
                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                    <div class="block-two-1">
                        <img title="Pendientes - Oui Petit" alt="Pendientes de oro y plata para mujer - Oui Petit" src="imagenes/botones/ultnovedades1.png">
                        <div class="content-block-two-1">
                            <div class="sub-content-block-two-1">
                                <p class="text-block-two-1">&nbsp;</p>
                                <p class="text-block-two-1"><a title="Pendientes online - Oui Petit" href="">Ultimas novedades</a></p>
                            </div>
                        </div>
                        <div class="contenedor-oscurecedor"></div>
                    </div> 
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                    <div class="block-two-1">
                        <img title="Pendientes - Oui Petit" alt="Pendientes de oro y plata para mujer - Oui Petit" src="imagenes/botones/ultnovedades2.jpg">
                        <div class="content-block-two-1">
                            <div class="sub-content-block-two-1">
                                <p class="text-block-two-1">&nbsp;</p>
                                <p class="text-block-two-1"><a title="Pendientes online - Oui Petit" href="">Ultimas novedades</a></p>
                            </div>
                        </div>
                        <div class="contenedor-oscurecedor"></div>
                    </div> 
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                    <div class="block-two-1">
                        <img title="Pendientes - Oui Petit" alt="Pendientes de oro y plata para mujer - Oui Petit" src="imagenes/botones/ultnovedades3.jpg">
                        <div class="content-block-two-1">
                            <div class="sub-content-block-two-1">
                                <p class="text-block-two-1">&nbsp;</p>
                                <p class="text-block-two-1"><a title="Pendientes online - Oui Petit" href="">Ultimas novedades</a></p>
                            </div>
                        </div>
                        <div class="contenedor-oscurecedor"></div>
                    </div> 
                </div>
            </div>
        </div>
        <!-- Fin 3 Botones -->

        <!-- Texto taller + imágen -->
        <div class="container-fluid  mt-5 mb-5">
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 bg-light pt-5 pb-5">
                    <h3>Taller</h3>
                    <p>Párrafo</p>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 fondo-taller pt-5 pb-5">
                    <!--<img class="img-fluid img-responsive" src="imagenes/newsletter/taller.png" alt="Máquina de grabados">-->
                </div>
            </div>
        </div>
        <!-- Fin Texto taller + imágen -->

        <!-- 3 Botones -->
        <div class="container  mt-5 mb-5">
            <div class="row">
                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                    <div class="block-two-1">
                        <img title="Pendientes - Oui Petit" alt="Pendientes de oro y plata para mujer - Oui Petit" src="imagenes/botones/ultnovedades1.png">
                        <div class="content-block-two-1">
                            <div class="sub-content-block-two-1">
                                <p class="text-block-two-1">&nbsp;</p>
                                <p class="text-block-two-1"><a title="Pendientes online - Oui Petit" href="">Ultimas novedades</a></p>
                            </div>
                        </div>
                        <div class="contenedor-oscurecedor"></div>
                    </div> 
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                    <div class="block-two-1">
                        <img title="Pendientes - Oui Petit" alt="Pendientes de oro y plata para mujer - Oui Petit" src="imagenes/botones/ultnovedades2.jpg">
                        <div class="content-block-two-1">
                            <div class="sub-content-block-two-1">
                                <p class="text-block-two-1">&nbsp;</p>
                                <p class="text-block-two-1"><a title="Pendientes online - Oui Petit" href="">Ultimas novedades</a></p>
                            </div>
                        </div>
                        <div class="contenedor-oscurecedor"></div>
                    </div> 
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                    <div class="block-two-1">
                        <img title="Pendientes - Oui Petit" alt="Pendientes de oro y plata para mujer - Oui Petit" src="imagenes/botones/ultnovedades3.jpg">
                        <div class="content-block-two-1">
                            <div class="sub-content-block-two-1">
                                <p class="text-block-two-1">&nbsp;</p>
                                <p class="text-block-two-1"><a title="Pendientes online - Oui Petit" href="">Ultimas novedades</a></p>
                            </div>
                        </div>
                        <div class="contenedor-oscurecedor"></div>
                    </div> 
                </div>
            </div>
        </div>
        <!-- Fin 3 Botones -->

        <!-- Formulario newsletter -->
        <div class="container-fluid  mt-5 mb-5">
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 bg-light pt-5 pb-5">
                    <form>
                        <input type="hidden" name="pagina" value="newsletter">
                        <div class="row ">
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 ">
                                <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Introduzca su email">
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                <button type="submit" class="btn btn-primary">Suscribírse</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 bg-danger pt-5 pb-5">
                    <h2>Incríbete</h2>
                </div>
            </div>
        </div>
        <!-- Fin Formulario newsletter -->
        <!-- Fin Inicio -->

        <!-- Footer -->
        <%@ include file="includes/footer.html" %>
    </body>
</html>
