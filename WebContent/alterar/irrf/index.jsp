<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Alterar IRRF</title>
<style type="text/css">
	body{
	padding: 20px 20px 20px 20px;
	}
</style>
</head>
<body>
	
	<form action="${pageContext.request.contextPath}/IRRFController" method="post">
	
	<h1>Alterar parametros IRRF cadastrados</h1>
	
	<table class="table table-bordered">
			<tr>
				<th>De</th>
				<th>Até</th>
				<th>Porcentagem</th>
				<th>Dedução</th>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorFaixaUm" value="${irrf.valorFaixaUm}"/></td>
				<td><input type="text" required="" name="valorLimiteFaixaUm" value="${irrf.valorLimiteFaixaUm}" /></td>
				<td><input type="text" required="" name="percentualFaixaUm" value="${irrf.percentualFaixaUm}" /></td>
				<td><input type="text" required="" name="deducaoFaixaUm" value="${irrf.deducaoFaixaUm}" /></td>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorFaixaDois" value="${irrf.valorFaixaDois}" /></td>
				<td><input type="text" required="" name="valorLimiteFaixaDois" value="${irrf.valorLimiteFaixaDois}" /></td>
				<td><input type="text" required="" name="percentualFaixaDois" value="${irrf.percentualFaixaDois}" /></td>
				<td><input type="text" required="" name="deducaoFaixaDois" value="${irrf.deducaoFaixaDois}" /></td>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorFaixaTres" value="${irrf.valorFaixaTres}" /></td>
				<td><input type="text" required="" name="valorLimiteFaixaTres" value="${irrf.valorLimiteFaixaTres}"/></td>
				<td><input type="text" required="" name="percentualFaixaTres" value="${irrf.percentualFaixaTres}" /></td>
				<td><input type="text" required="" name="deducaoFaixaTres" value="${irrf.deducaoFaixaTres}" /></td>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorLimiteFaixaQuatro" value="${irrf.valorLimiteFaixaQuatro}"/></td>
				<td><input type="text" required="" name="" disabled="disabled"/></td>
				<td><input type="text" required="" name="percentualFaixaQuatro"value="${irrf.percentualFaixaQuatro}" /></td>
				<td><input type="text" required="" name="deducaoFaixaQuatro" value="${irrf.deducaoFaixaQuatro}"/></td>
			</tr>
		</table>
		
		<br>
		
		<label>Dedução por dependente:
			<input type="text" required="" name="deducaoPorDependente" value="${irrf.deducaoPorDependente}" />
		</label>
		
		<input type="hidden" name="anoreferencia" value="${irrf.anoReferente}">
		<input type="hidden" name="id" value="${irrf.id}">
		
		<input type="hidden" name="logica" value="update">
		
		<input type="submit" value="Salvar alterações" class="btn btn-warning"/>
	
	</form>


</body>
</html>