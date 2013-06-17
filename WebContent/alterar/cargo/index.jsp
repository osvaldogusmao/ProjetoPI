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
			
			<div class="controls controls-row">
				<label class="span2" for="des">Descrição:</label>
			</div>
			
			<div class="controls controls-row">
				<input class="span10" type="text" name="descricao" size="50" value="${cargo.nome}" id="des">
			</div>
			
			<br>
			
			<div class="controls controls-row">
				<label class="span2" for="porinsalu">Insalubridade:</label>
				<label  class="span2" id="porcinsalu">Porcentagem:</label>
				<input class="span3" type="text" id="txtinsalu" name="txtinsalibridade" value="${cargo.insalubridade}"/>
			</div>
			
			<br>
			
			<div class="controls controls-row">
			<label class="span2" for="porperic" >Periculosidade:</label>
			<label class="span2" id="porcperic">Porcentagem:</label>
			<input class="span3" type="text" id="txtperic" name="txtpericulosidade" value="${cargo.periculosidade}">
			</div>
			
			<br>
			
			<input type="hidden" name="logica" value="atualizar">
			<input type="submit" value="Salvar" class="btn btn-primary">
		</fieldset>
	</form>
	

<c:import url="/layout/footer.jsp"></c:import>