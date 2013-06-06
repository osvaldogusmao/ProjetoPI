<%@page import="javax.swing.JOptionPane"%>
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
<fieldset>
	<table class="table table-striped">
		<tr>
			<th>RAZÃO SOCIAL</th>
			<th>NOME FANTASIA</th>
			<th>CNPJ</th>
			<th>LOGRADOURO</th>
			<th>NUMERO</th>
			<th>COMPLEMENTO</th>
			<th>BAIRRO</th>
			<th>UF</th>
			<th>CEP</th>
			<th>CIDADE</th>
			<th>TELEFONE 1</th>
			<th>E-MAIL</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="empresa" items="${lista}">
			<tr>
			<td>${empresa.razaoSocial}</td>
			<td>${empresa.nomeFantasia}</td>
			<td>${empresa.cnpj}</td>
			<td>${empresa.logradouro}</td>
			<td>${empresa.numero}</td>
			<td>${empresa.complemento}</td>
			<td>${empresa.bairro}</td>
			<td>${empresa.uf}</td>
			<td>${empresa.cep}</td>
			<td>${empresa.cidade}</td>
			<td>${empresa.telefone1}</td>
			<td>${empresa.email}</td>
			
			<td>
			<form action="${pageContext.request.contextPath}/EmpresaController" method="post">
			<input type="hidden" name="logica" value="alterar">
			<input type="hidden" name="codigo" value="${empresa.id}">
			<input type="submit" value="Alterar" class="btn btn-warning">
			</form>
			</td>
					
			<td>
			<form action="${pageContext.request.contextPath}/EmpresaController" method="post">
			<input type="hidden" name="logica" value="deletar">
			<input type="hidden" name="codigo" value="${empresa.id}">
			<input type="submit" value="Deletar">
			</form>
			</td>
			</tr>
			</c:forEach>
		</table>
		</fieldset>
		<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
</body>
</html>