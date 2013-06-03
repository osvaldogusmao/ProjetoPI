<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<style type="text/css">
	body{
		padding: 20px 20px 20px 20px;
	}
</style>
<title>Sucesso</title>
</head>
<body>
	<div class="hero-unit center">
	<h1> Operação concluída com sucesso!</h1>
	<h2>${sucesso}</h2>
	</div>
	<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
	<c:import url="/layout/footer.jsp"></c:import>
</body>
</html>