<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<sj:head jqueryui="true"/>
	<sb:head/>
</head>
<body>
	<s:actionerror theme="bootstrap"/>
    <s:actionmessage theme="bootstrap"/>
    <s:fielderror theme="bootstrap"/>
 
 
    <s:form action="ActualizarUsuario" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
            >
       
         <s:textfield
                label="Estado"
                name="usuario.estado_usu" />
        <!--  
		<s:select                
                label="Estado"
                list="{'Activo','Baneeado','Otros'}"
                name="usuario.estado_usu"                
                headerKey="-1"
                headerValue="--Seleccione--"/>
           -->
        
        <s:submit cssClass="btn btn-primary" value="Actualizar"/>   
    </s:form>
    
    <a class="btn btn-primary" href="listaUsuario">Ver data</a>
</body>
</html>