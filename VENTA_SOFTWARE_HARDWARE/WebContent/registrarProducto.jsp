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
</head>
<body>
	<s:actionerror theme="bootstrap"/>
	<s:actionmessage theme="bootstrap"/> 
	<s:fielderror theme="bootstrap"/>
	<h1>Registrar producto</h1>
	<s:form action="registrarProducto" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" label="Detalle Producto">
		<s:textfield
			label="Titulo"
			name="tituloLb"
		/>
		<s:textfield
			label="Precio"
			name="precioLb"
		/>
		<s:textfield
			label="Cantidad"
			name="cantidadLb"
		/>
		<s:textfield
			label="Origen"
			name="origenLb"
		/>
		<s:url id="id_tema" action="listarTemas"></s:url>
		<sj:select
			label="Tema"
			name="codigoTm"
			href="%{id_tema}"
			list="lstTemas"
			listKey="idTema"
			listValue="nombreTema"
			headerKey="-1"
			headerValue="--Seleccione--"
		>
		</sj:select>
		<div align="left" style="font-size: 18px;"><font color="red"><s:property value="mensaje" /></font></div>
		<s:submit cssClass="btn" value="Registrar"/>
		<a class="btn btn-primary" href="aquiListando">Listar</a>
	</s:form>
</body>
</html>