<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<html>
<head>
	
   <jsp:include page="Navigate/aside.jsp"></jsp:include>
   

</head>
<body>

<section> 
 
   <div class="container">
  
        <div class=row>
            
            <div class="col-lg-12">      
          		<br/>
          		
				<h1>Mantenimiento de Productos</h1>
				
				<br/>
			
            	<a class="btn btn-primary" href="ListadoProductos">Listar</a>
			 	<a class="btn btn-primary" href="IniciandoRegistro">Registrar</a>
            
           		<br/>
           		<br/>
            	<table class="table table-bordered table-striped  ">
			
					<tr>
						<th>Id</th>
						<th>Marca</th>
						<th>Categoria</th>
						<th>Area</th>
						<th>Producto</th>
						<th>Caracteristica</th>
						<th>Precio</th>
						<th>Stock</th>
						<th></th>
						<th></th>
					</tr>
					
			
						<s:iterator value="lstProducto">
							
							<tr class="grilla_campo">
								
								<td><s:property value="cod_prod"/> </td>
								<td><s:property value="descrp_marca"/></td>
								<td><s:property value="nom_cat"/></td>
								<td><s:property value="descrp_cat"/></td>
								<td><s:property value="descrip_prod"/></td>
								<td><s:property value="mem_ram"/></td>
								<td><s:property value="precio"/></td>
								<td><s:property value="stock"/></td>
								<td>
									<s:url id="idEliminar" action="EliminarLibro">
										<s:param name="idLibro" value="idLibro"></s:param>
									</s:url>
									<s:a href="%{idEliminar}"><img  src="img/delete.gif" title="Eliminar"/></s:a>
								</td>
								<td>
									<s:url id="idActualizar" action="BuscarLibro">
										<s:param name="idLibro" value="idLibro"></s:param>
									</s:url>
									<s:a href="%{idActualizar}"><img  src="img/edit.gif" title="Actualizar"/></s:a>
								</td>
							</tr>
						</s:iterator>
				</table>
            

            </div>
           
            
            
            
        </div>
       
   	
    </div>   
 
</section>





<!--       Footer -->
<!--        <footer class="site-footer"> -->
<!--             <div class="footer-inner bg-white"> -->
<!--                 <div class="row"> -->
<!--                     <div class="col-lg-12"> -->
<!--                         Copyright &copy; 2018 Ela Admin -->
<!--                     </div> -->
<!--                     <div class="col-sm-6 text-right"> -->
<!--                         Designed by <a href="https://colorlib.com">Colorlib</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </footer> -->
<!--         /.site-footer -->








</body>
</html>