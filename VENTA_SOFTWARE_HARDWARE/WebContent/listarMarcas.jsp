<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<!--   <link rel="stylesheet" href="css/estilos_todos_productos.css"> -->
</head>
<body>
	<section> 
 
   <div class="container">
  
        <div class=row>
            
            <div class="col-lg-12">      
          		<br/>
          		
				<h1>Mantenimiento de Productos</h1>
				
				<br/>
			
            	<a class="btn btn-primary" href="listaMarcas">Listar</a>
			 	<a class="btn btn-primary" href="">Registrar</a>
            
            
           		<br/>
           		<br/>
            	<table class="table table-bordered table-striped  ">
			
					<tr>
						<th>Id</th>
						<th>Descripcion</th>
					</tr>
					
			
						<s:iterator value="marcas">
							
							<tr class="grilla_campo">
								
								<td><s:property value="cod_catalogo"/> </td>
								<td><s:property value="descrip_catalogo"/></td>
							</tr>
						</s:iterator>
				</table>
            

            </div>
           
            
            
            
        </div>
       
   	
    </div>   
 
</section>




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