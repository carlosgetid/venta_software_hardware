<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<sj:head jqueryui="true"/>
<sb:head/>
</head>
<body>
	<s:actionerror theme="bootstrap"/>
	<s:actionmessage theme="bootstrap"/> 
	<s:fielderror theme="bootstrap"/>
	<s:form action="iniciarSesionUsuario" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" label="Login">
		<s:textfield name = "username" id="username" type="text" placeholder="Usuario"/>
<%--     <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --%>
<!--     <label for="exampleInputPassword1">Password</label> -->
<%-- 	<s:textfield name = "email" id="email" type="email"/> --%>
		<s:password name = "password" id="repeatPassword" type="password" class="validate" placeholder="Contraseña"/>
  		<s:checkbox
                        label="Recuerdame"
                        name="chckRecuerdame"/>
  		<a href="">¿Se te olvidó tu contraseña?</a>
  		<br />
  		<s:submit cssClass="btn btn-primary" value="Ingresar"/>
	</s:form>
  


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