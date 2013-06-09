<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Alterar INSS</title>
<style type="text/css">
	body{
	padding: 20px 20px 20px 20px;
	}
</style>
</head>
<body>

<form action="${pageContext.request.contextPath}/INSSController" method="post">

	<h1>Alterar parametros INSS cadastrados</h1>

	<table class="table table-bordered">
		<tr>
			<th>De</th>
			<th>Até</th>
			<th>Porcentagem alíquota</th>
		</tr>
		
		<tr>
			<td><input type="text" required="" name="valorFaixaUm" value="${inss.valorFaixaUm}" /></td>
			<td><input type="text" required="" name="valorLimiteFaixaUm" value="${inss.valorLimiteFaixaUm}"/></td>
			<td><input type="text" required="" name="percentualFaixaUm" value="${inss.percentualFaixaUm}"/></td>
		</tr>
			<tr>
			<td><input type="text" required="" name="valorFaixaDois" value="${inss.valorFaixaDois}"/></td>
			<td><input type="text" required="" name="valorLimiteFaixaDois" value="${inss.valorLimiteFaixaDois}"/></td>
			<td><input type="text" required="" name="percentualFaixaDois" value="${inss.percentualFaixaDois}"/></td>
		</tr>
			<tr>
			<td><input type="text" required="" name="valorFaixaTres" value="${inss.valorFaixaTres}"/></td>
			<td><input type="text" required="" name="valorLimiteFaixaTres" value="${inss.valorLimiteFaixaTres}"/></td>
			<td><input type="text" required="" name="percentualFaixaTres" value="${inss.percentualFaixaTres}"/></td>
		</tr>
		<tr>
			<td><input type="text" required="" name="valorMaximo" value="${inss.valorMaximo}"/></td>
			<td>Valor que será deduzido: <input type="text" required="" name="deducao" value="${inss.deducao}"/></td>
		</tr>
	</table>
	
	<input type="hidden" name="anoreferencia" value="${inss.anoRereferente}">
	<input type="hidden" name="id" value="${inss.id}">
	
	<input type="hidden" name="logica" value="update">
		
		<input type="submit" value="Salvar alterações" class="btn btn-warning"/>
	
</form>
</body>
</html>