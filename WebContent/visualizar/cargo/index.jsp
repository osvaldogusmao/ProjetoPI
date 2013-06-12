<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/layout/header.jsp"></c:import>
<h1>Cargos cadastrados</h1>
<fieldset>
	<table class="table table-condensed table-hover table-bordered table-striped">
		<tr>
			<th>ID</th>
			<th>CARGO</th>
			<th>ALTERAR</th>
			<th>DELETAR</th>
		</tr>
		<c:forEach var="cargo" items="${lista}">
			<tr>
			<td>${cargo.id}</td>
			<td>${cargo.nome}</td>
			<td>
			<form action="${pageContext.request.contextPath}/CargoController" method="post">
			<input type="hidden" name="logica" value="alterar">
			<input type="hidden" name="codigo" value="${cargo.id}">
			<input type="submit" value="Alterar" class="btn btn-warning">
			</form>
			</td>
			
			<td>
			<form action="${pageContext.request.contextPath}/CargoController" method="post">
			<input type="hidden" name="logica" value="deletar">
			<input type="hidden" name="codigo" value="${cargo.id}">
			<input type="submit" value="Deletar">
			</form>
			</td>
			
			</tr>
			</c:forEach>
		</table>
		</fieldset>
		<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
<c:import url="/layout/footer.jsp"></c:import>	