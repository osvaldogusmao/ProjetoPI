<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Identificação do Usuário</title>
</head>
<body>
	<form  method="post" action="${pageContext.request.contextPath}/LoginController">
		<fieldset class="control-group">
		<legend>Identificação do Usuário</legend>
			<label>
				Usuário:
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