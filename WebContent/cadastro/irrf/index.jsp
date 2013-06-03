<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de IRRF</title>
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<style type="text/css">
	body {
	padding: 20px 20px 20px 20px;
}
</style>
</head>
<body>

	<form action="${pageContext.request.contextPath}/IRRFController" method="post">

		<label>Ano de referencia:
			<select name="anoreferencia">
				<option value="2010">2010</option>
				<option value="2011">2011</option>
				<option value="2012">2012</option>
				<option value="2013">2013</option>
				<option value="2014">2014</option>
				<option value="2015">2015</option>
				<option value="2016">2016</option>
				<option value="2017">2017</option>
			</select>
		</label>
		
		<table>
			<tr>
				<th>De</th>
				<th>Até</th>
				<th>Porcentagem</th>
				<th>Dedução</th>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorFaixaUm" /></td>
				<td><input type="text" required="" name="valorLimiteFaixaUm" /></td>
				<td><input type="text" required="" name="percentualFaixaUm" /></td>
				<td><input type="text" required="" name="deducaoFaixaUm" /></td>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorFaixaDois" /></td>
				<td><input type="text" required="" name="valorLimiteFaixaDois" /></td>
				<td><input type="text" required="" name="percentualFaixaDois" /></td>
				<td><input type="text" required="" name="deducaoFaixaDois" /></td>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorFaixaTres" /></td>
				<td><input type="text" required="" name="valorLimiteFaixaTres" /></td>
				<td><input type="text" required="" name="percentualFaixaTres" /></td>
				<td><input type="text" required="" name="deducaoFaixaTres" /></td>
			</tr>
			
			<tr>
				<td><input type="text" required="" name="valorLimiteFaixaQuatro" /></td>
				<td><input type="text" required="" name="" disabled="disabled"/></td>
				<td><input type="text" required="" name="percentualFaixaQuatro" /></td>
				<td><input type="text" required="" name="deducaoFaixaQuatro" /></td>
			</tr>
		</table>
		
		<br>
		
		<label>Dedução por dependente:
			<input type="text" required="" name="deducaoPorDependente" />
		</label>
		
		<input type="hidden" name="logica" value="salvar"/>
		<input type="submit" value="Salvar" class="btn btn-primary"/>

	</form>

</body>
</html>