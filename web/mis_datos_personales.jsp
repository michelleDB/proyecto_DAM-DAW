<%-- 
    Document   : mis_datos_personales
    Created on : 09-may-2019, 20:59:03
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
        
        <div class="container">
            <h1>Mis datos personales</h1>
            <div class="row">
                <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
                    <label>Nombre</label>
                </div>
                <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">
                    <input type="text" name="nombre" class="form-control" placeholder="Nombre">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
                    <label>Primer apellido</label>
                </div>
                <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">
                    <input type="text" name="apellido1" class="form-control" placeholder="Primer apellido">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
                    <label>Nombre</label>
                </div>
                <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">
                    <input type="text" name="nombre" class="form-control" placeholder="Nombre">
                </div>
            </div>
        </div>
        
        <!-- Footer -->
        <%@ include file="includes/footer.html" %>
    </body>
</html>
