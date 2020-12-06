<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<!-- layout librerias -->
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<html>
<head>
<!-- layout estilos -->
<jsp:include page="Navigate/styleLayout.jsp"></jsp:include>
   

</head>
<body>
	
<!-- 	layout superior -->
<jsp:include page="Navigate/superior.jsp"></jsp:include>
<!-- 	contenido inicio -->

<section> 
 
   <div class="container">
  
        <div class=row>
            
            <div class="col-lg-12">      
          		<br/>
          		
				<h1>Listado de Usuarios</h1>
				
				<br/>
			
            	<a class="btn btn-primary" href="listaUsuario">Listar</a>            
          		<br/>
           		<br/>
            	<table class="table table-bordered table-striped  ">
			
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Email</th>
						<th>Telefono</th>
						<th>Fecha</th>
						<th>Dni</th>
						<th>Estado</th>
						<th></th>
					</tr>
					
			
						<s:iterator value="lstUsuario">
							
							<tr class="grilla_campo">
								
								<td><s:property value="codigo_usu"/> </td>
								<td><s:property value="nombre_usu"/></td>
								<td><s:property value="ape_usu"/></td>
								<td><s:property value="email_usu"/></td>
								<td><s:property value="telf_usu"/></td>
								<td><s:property value="fec_nac_usu"/></td>
								<td><s:property value="dni_usu"/></td>
								<td><s:property value="estado_usu"/></td>
								<td>
									<s:url id="idActualizar" action="BuscarUsuario">
										<s:param name="codigo_usu" value="codigo_usu"></s:param>
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





<!-- contenido fin	 -->

<!-- layout inferior -->
	<jsp:include page="Navigate/inferior.jsp"></jsp:include>

</body>
</html>