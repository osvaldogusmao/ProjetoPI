<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Cargo</title>
</head>
<body>
<h1>Cargos cadastrados</h1>
<fieldset>
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>CARGO</th>
		</tr>
		<c:forEach var="cargo" items="${lista}">
			<tr>
			<td>${cargo.id}</td>
			<td>${cargo.nome}</td>
			</tr>
			</c:forEach>
		</table>
		</fieldset>
		<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
</body>
</html>