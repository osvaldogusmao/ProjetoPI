<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Identifica��o do Usu�rio</title>
</head>
<body>
	<form  method="post" action="${pageContext.request.contextPath}/LoginController">
		<fieldset class="control-group">
		<legend>Identifica��o do Usu�rio</legend>
			<label>
				Usu�rio:
				<input type="text" name="usuario"/>
			</label>
			<label>
				Senha:
				<input type="password" name="senha"/>
			</label>	 		
				<input type="hidden" name="logica" value="entrar"/>
				<input type="submit" value="Entrar"/>	
		</fieldset>	
	</form>
	<c:out value="${msg}"/>
</body>
</html>