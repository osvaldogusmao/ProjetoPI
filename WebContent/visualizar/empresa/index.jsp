<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Empresa</title>
</head>
<body>
<h1>Empresas Cadastradas</h1>
<c:forEach var="empresa" items="${listaEmpresas}">
<fieldset>
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>RAZÃO SOCIAL</th>
			<th>NOME FANTASIA</th>
			<th>CNPJ</th>
			<th>INSC. ESTADUAL</th>
			<th>INSC. MUNICIPAL</th>
			<th>LOGRADOURO</th>
			<th>NUMERO</th>
			<th>COMPLEMENTO</th>
			<th>BAIRRO</th>
			<th>UF</th>
			<th>CEP</th>
			<th>CIDADE</th>
			<th>TELEFONE 1</th>
			<th>TEFEFONE 2</th>
			<th>TELEFONE 3</th>
			<th>E-MAIL</th>
			<th>SITE</th>
		</tr>
		<tr>
			<td>${empresa.id}</td>
			<td>${empresa.razaoSocial}</td>
			<td>${empresa.nomeFantasia}</td>
			<td>${empresa.cnpj}</td>
			<td>${empresa.inscricaoEstadual}</td>
			<td>${empresa.inscricaoMuncipal}</td>
			<td>${empresa.Logradouro}</td>
			<td>${empresa.numero}</td>
			<td>${empresa.complemento}</td>
			<td>${empresa.bairro}</td>
			<td>${empresa.uf}</td>
			<td>${empresa.cep}</td>
			<td>${empresa.cidade}</td>
			<td>${empresa.telefone1}</td>
			<td>${empresa.telefone2}</td>
			<td>${empresa.telefone3}</td>
			<td>${empresa.email}</td>
			<td>${empresa.site}</td>
		</tr>
	</table>
</fieldset>
</c:forEach>
</body>
</html>