<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>ERRO!</title>
</head>
<body>
	
	<div class="hero-unit center">
		<h1>Erro ocorrido durante a execução!</h1>
		<h3>${erro}</h3>
		<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
	</div>

<c:import url="/layout/footer.jsp"></c:import>
</body>
</html>