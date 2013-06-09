<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/layout/header.jsp"></c:import>

<h1>Empresas Cadastradas</h1>
<fieldset>
	<table class="table table-condensed table-hover table-bordered table-striped">
		<tr>
			<th>CÓDIGO</th>
			<th>RAZÃO SOCIAL</th>
			<th>NOME FANTASIA</th>
			<th>CNPJ</th>
			<th>CIDADE</th>
			<th>UF</th>
			<th>ALTERAR</th>
			<th>DELETAR</th>
		</tr>
		<c:forEach var="empresa" items="${lista}">
			<tr>
			<td>${empresa.id}</td>
			<td>${empresa.razaoSocial}</td>
			<td>${empresa.nomeFantasia}</td>
			<td>${empresa.cnpj}</td>
			<td>${empresa.cidade}</td>
			<td>${empresa.uf}</td>
				
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

<c:import url="/layout/footer.jsp"></c:import>	