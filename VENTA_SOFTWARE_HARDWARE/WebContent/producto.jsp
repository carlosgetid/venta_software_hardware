<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<html>
<head>
	
    <jsp:include page="Navigate/layout.jsp"></jsp:include>
   

</head>
<body>

<section> 
 
   <div class="container">
  
        <div class=row>
            
            <div class="col-lg-12">      
          		<br/>
          		
				<h1>Mantenimiento de Productos</h1>
				
				<br/>
			
            	<a class="btn btn-primary" href="lista">Listar</a>
			 	<a class="btn btn-primary" href="IniciandoRegistro">Registrar</a>
            
           		<br/>
           		<br/>
            	<table class="table table-bordered table-striped  ">
			
					<tr>
						<th>Id</th>
						<th>Rol</th>
						<th>Ruc</th>
						<th>Razon Social</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Dni</th>
						<th>Email</th>
						<th></th>
						<th></th>
					</tr>
					
			
						<s:iterator value="lstTrabajador">
							
							<tr class="grilla_campo">
								
								<td><s:property value="cod_trab"/> </td>
								<td><s:property value="cod_rol"/></td>
								<td><s:property value="nro_ruc"/></td>
								<td><s:property value="razon_soc"/></td>
								<td><s:property value="nom_trab"/></td>
								<td><s:property value="ape_trab"/></td>
								<td><s:property value="dni_trab"/></td>
								<td><s:property value="email_trab"/></td>
								<td>
									<s:url id="idEliminar" action="EliminarLibro">
										<s:param name="idLibro" value="idLibro"></s:param>
									</s:url>
									<s:a href="%{idEliminar}"><img  src="images/delete.gif" title="Eliminar"/></s:a>
								</td>
								<td>
									<s:url id="idActualizar" action="BuscarLibro">
										<s:param name="idLibro" value="idLibro"></s:param>
									</s:url>
									<s:a href="%{idActualizar}"><img  src="images/edit.gif" title="Actualizar"/></s:a>
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