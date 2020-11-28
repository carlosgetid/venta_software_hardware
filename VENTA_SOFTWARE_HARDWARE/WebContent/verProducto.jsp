	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilosVerProducto.css">
    <jsp:include page="Navigate/layoutCliente.jsp"></jsp:include>
    <title>Bienvenido a ... </title>
</head>
<body>
	

<div class="container">

    <!--Carousel Wrapper-->
    <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails row" data-ride="carousel">
	<!-- columna miniaturas -->
	<div class="col-md-1">
		<!--/.Controls-->
      <ol class="carousel-indicators h-100 indicadores-ol">
        <li data-target="#carousel-thumb" data-slide-to="0" class="row w-100 active indicadores-li"> <img class="d-block w-100" src="images/verProducto/1.jpg"
            class="img-fluid"></li>
        <li data-target="#carousel-thumb" data-slide-to="1" class="row w-100 indicadores-li"><img class="d-block w-100" src="images/verProducto/2.jpg"
            class="img-fluid"></li>
        <li data-target="#carousel-thumb" data-slide-to="2" class="row w-100 indicadores-li"><img class="d-block w-100" src="images/verProducto/3.jpg"
            class="img-fluid"></li>
      </ol>
	</div>
	<!-- columna miniaturas -->
	<!-- columna carrusel y flechas -->
      <div class="col-md-5">
      	<!--Slides-->
      <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
          <img class="d-block w-100" src="images/verProducto/1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="images/verProducto/2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="images/verProducto/3.jpg" alt="Third slide">
        </div>
      </div>

      <!--/.Slides-->
      <!--Controls-->
      <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
      </div>
	<!-- columna carrusel y flechas -->
      
    </div>
    <!--/.Carousel Wrapper-->

  </div>
	
	
	<!-- JS, Popper.js, and jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
</body>
</html>