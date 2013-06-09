<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/layout/header.jsp"></c:import>

	<form action="${pageContext.request.contextPath}/CargoController" method="post">
		
		<h1 align="center">Alterar Cargos Cadastrados</h1>
		
		<fieldset>
			<legend>
			Cadastro de Cargo:
			</legend>
			
			<div class="controls controls-row">
			<label class="span" for="cod">Código:</label>
			</div>
			
			<div class="controls controls-row">
				<input class="span1" type="text" name="id" id="cod" value="${cargo.id}" readonly="readonly" />
			</div>

			
			<label>Descrição:</label>
			<input type="text" name="descricao" size="50" value="${cargo.nome}">
			
			<label>Insalubridade:</label>
			<label id="porcinsalu">Porcentagem:</label>
			<input type="text" id="txtinsalu" name="txtinsalibridade" value="${cargo.insalubridade}"/>
			 
			<label>Periculosidade:</label>
			<label id="porcperic">Porcentagem:</label>
			<input type="text" id="txtperic" name="txtpericulosidade" value="${cargo.periculosidade}">
			<br>
			<input type="hidden" name="logica" value="atualizar">
			<input type="submit" value="Salvar" class="btn btn-primary">
		</fieldset>
	</form>
	

<c:import url="/layout/footer.jsp"></c:import>