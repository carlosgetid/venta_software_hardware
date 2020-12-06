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
          		
				<h1>Listado de Sugerencias</h1>
				
				<br/>
			
            	<a class="btn btn-primary" href="listaSugerencia">Listar</a>            
          		<br/>
           		<br/>
            	<table class="table table-bordered table-striped  ">
			
					<tr>
						<th>Id</th>
						<th>Descripcion</th>
						<th>Usuario</th>
						<th>Fecha</th>
					</tr>
					
			
						<s:iterator value="lstSugerencia">
							
							<tr class="grilla_campo">
								
								<td><s:property value="cod_sug"/> </td>
								<td><s:property value="desc_sug"/></td>
								<td><s:property value="desc_usu"/></td>
								<td><s:property value="fec_sug"/></td>
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