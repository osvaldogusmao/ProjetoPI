<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>IRRF cadastrados</title>
<style type="text/css">
	body{
	padding: 20px 20px 20px 20px;
	}
</style>
</head>
<body>
	<h1>IRRF cadastrados no banco de dados do sistema</h1>
	
	<c:forEach var="irrf" items="${lista}">
	<fieldset>
		<legend>Ano: ${irrf.anoReferente}</legend>
		<table class="table table-bordered">
			<tr>
				<th>De</th>
				<th>Até</th>
				<th>Porcentagem</th>
				<th>Dedução</th>
			</tr>
			<tr>
				<td>${irrf.valorFaixaUm}</td>
				<td>${irrf.valorLimiteFaixaUm}</td>
				<td>${irrf.percentualFaixaUm}</td>
				<td>${irrf.deducaoFaixaUm}</td>
			</tr>
			<tr>
				<td>${irrf.valorFaixaDois}</td>
				<td>${irrf.valorLimiteFaixaDois}</td>
				<td>${irrf.percentualFaixaDois}</td>
				<td>${irrf.deducaoFaixaDois}</td>
			</tr>	
			<tr>
				<td>${irrf.valorFaixaTres}</td>
				<td>${irrf.valorLimiteFaixaTres}</td>
				<td>${irrf.percentualFaixaTres}</td>
				<td>${irrf.deducaoFaixaTres}</td>
			</tr>
			<tr>
				<td>${irrf.valorLimiteFaixaQuatro}</td>
				<td></td>
				<td>${irrf.percentualFaixaQuatro}</td>
				<td>${irrf.deducaoFaixaQuatro}</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				
				<td>
					<form action="${pageContext.request.contextPath}/IRRFController" method="post">
						<input type="hidden" name="logica" value="alterar">
						<input type="hidden" value="${irrf.id}" name="id">
						<input type="submit" value="Alterar" class="btn btn-warning">
					</form>				
				</td>
					
				<td>
					<form action="${pageContext.request.contextPath}/IRRFController" method="post">
						<input type="hidden" name="logica" value="apagar">
						<input type="hidden" value="${irrf.id}" name="id">
						<input type="submit" value="Apagar" class="btn btn-danger">
					</form>
				</td>
				
			</tr>
		</table>
		<p>Dedução por dependente: ${irrf.deducaoPorDependente}</p>
	</fieldset>
</c:forEach>


<br>
<br>

<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>

</body>
</html>