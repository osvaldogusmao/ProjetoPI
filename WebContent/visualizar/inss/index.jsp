<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>INSS</title>
<style type="text/css">
	body{
	padding: 20px 20px 20px 20px;
	}
</style>
</head>
<body>

	<h1>INSS cadastrados no banco de dados do sistema</h1>
	
	<c:forEach var="inss" items="${lista}">
	<fieldset>
		<legend>Ano: ${inss.anoRereferente} </legend>
			<table class="table table-bordered">
				<tr>
					<th>De</th>
					<th>Até</th>
					<th>Porcentagem</th>
				</tr>
				<tr>
					<td>${inss.valorFaixaUm}</td>
					<td>${inss.valorLimiteFaixaUm}</td>
					<td>${inss.percentualFaixaUm}</td>
				</tr>
				<tr>
					<td>${inss.valorFaixaDois}</td>
					<td>${inss.valorLimiteFaixaDois}</td>
					<td>${inss.percentualFaixaDois}</td>
				</tr>	
				<tr>
					<td>${inss.valorFaixaTres}</td>
					<td>${inss.valorLimiteFaixaTres}</td>
					<td>${inss.percentualFaixaTres}</td>
				</tr>
				<tr>
					<td></td>
					
					<td>
						<form action="${pageContext.request.contextPath}/INSSController" method="post">
							<input type="hidden" name="logica" value="alterar">
							<input type="hidden" value="${inss.id}" name="id">
							<input type="submit" value="Alterar" class="btn btn-warning">
						</form>
					</td>
					
					<td>
						<form action="${pageContext.request.contextPath}/INSSController" method="post">
							<input type="hidden" name="logica" value="apagar">
							<input type="hidden" value="${inss.id}" name="id">
							<input type="submit" value="Apagar" class="btn btn-danger">
						</form>
					</td>
					
				</tr>
			</table>
	</fieldset>
</c:forEach>


<br>
<br>

<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
	
</body>
</html>