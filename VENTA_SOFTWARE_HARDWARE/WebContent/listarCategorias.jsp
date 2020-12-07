<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<!-- layout librerias -->
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
    
<!DOCTYPE html>
<html>
<head>
<!-- layout estilos -->
<jsp:include page="Navigate/styleLayout.jsp"></jsp:include>

<meta charset="UTF-8">
<title>Listado de categorias</title>
 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
	
<!-- 	layout superior -->
	<jsp:include page="Navigate/superior.jsp"></jsp:include>
	
<!-- 	contenido inicio -->
	<script>
	function eliminarCategoria() {
		$('#idForm').attr('action', 'eliminarCategoria');
	}
	</script>
	<section> 
 
   <div class="container">
  
        <div class=row>
            
            <div class="col-lg-12">      
          		<br/>
          		
				<h1>Mantenimiento de Categorias</h1>
				
				<br/>
			
            	<a id="botonListar" class="btn btn-primary" href="listaCategorias">Listar</a>
			 	<br/>
			 	<s:form id="idForm" action="registrarCategoria" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" label="Detalle Categoria">
					<s:hidden id="idCategoria" name="idCategoria" />

					<label id="idMantLabelCategoria">Descripcion</label>
					<s:textfield id="idtxtCategoria" name="descrip_catalogo" />
				<br/>
				<s:submit cssClass="btn btn-success" value="Registrar"/>
				<s:submit cssClass="btn btn-warning" value="Actualizar"/>
				<sj:submit value="Eliminar" button="true" cssClass="btn btn-danger" formIds="idForm"
				onclick="javascript:eliminarCategoria();" />
				</s:form>
				
           		<br/>
           		<br/>
            	<table class="table table-bordered table-striped  ">
			
					<tr>
						<th>Id</th>
						<th>Descripcion</th>
					</tr>
					
			
						<s:iterator value="Categorias">
							<tr class="delbtn">
								<td><s:property value="cod_catalogo"/> </td>
								<td><s:property value="descrip_catalogo" /></td>
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

<script>
jQuery('.delbtn').on('click', function() {
    var $row = jQuery(this).closest('tr');
    var $columns = $row.find('td');

    $columns.addClass('row-highlight');
    var arr = new Array();
    var values = "";

    jQuery.each($columns, function(i, item) {
    	arr.push(item.innerHTML);
    	console.log(arr[i]);
    });
    $("#idCategoria").val(arr[0]);    
    $("#idtxtCategoria").val(arr[1]);
});

</script>
<!-- contenido fin	 -->

<!-- layout inferior -->
	<jsp:include page="Navigate/inferior.jsp"></jsp:include>
</body>
</html>