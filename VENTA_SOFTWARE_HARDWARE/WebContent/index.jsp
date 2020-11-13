<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN </title>

    
</head>
<body>
	<div class="container-fluid contenedor">
    <div class="row">
      <div class="col-lg-12">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="#">Logo</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="#">Todos los productos <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#">Sobre nosotros<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#">Contacto<span class="sr-only">(current)</span></a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </div>

    <div class="row justify-content-center contenedorBanner" style="padding: 20px;">
      <div id="carouselExampleIndicators" class="carousel slide col-md-7 h-100" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li> 
        </ol>
        <div class="carousel-inner h-100">
          <div class="carousel-item active h-100">
            <img class="d-block w-100 h-100" src="img/1.jpg" alt="First slide">
          </div>
          <div class="carousel-item h-100">
            <img class="d-block w-100 h-100" src="img/2.jpg" alt="Second slide">
          </div>
          <div class="carousel-item h-100">
            <img class="d-block w-100 h-100" src="img/3.jpg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>

    <!-- bootstrap 4
      alineacion vertical
        align-items-center
      alineacion horizontal
        justify-content-center -->

    <div class="row justify-content-center">
      <div class="col-md-5">
        <input class="form-control" type="text" name="buscador">
        <p class="slogan m-2">Todo lo que necesitas esta aquí</p>
      </div>
    </div>
  </div>









</body>
</html>