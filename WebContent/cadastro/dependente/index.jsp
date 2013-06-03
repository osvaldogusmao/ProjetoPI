<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="/layout/header.jsp"></c:import>
	<form method="post"
		action="${pageContext.request.contextPath}/DependenteController">
			<fieldset>
				<legend>Dados Pessoais</legend>
			<div class="controls controls-row">
				<label class="span4"> Nome da Pessoa: </label>
			</div>
			<div class="controls controls-row">
						<input class="span4" type="text" name="nomeDaPessoa" value="${pessoa.nome}" readonly="true" />
						<input type="hidden" name="cpfPessoa" value="${pessoa.cpf}" />
			</div>
			<div class="controls controls-row">
				<label class="span4" for="nomeDependente" >Nome do Dependente:</label>
				<label class="span2" for="rg">RG:</label> 
				<label class="span2" for="orgaoExpeditor">Orgão Expeditor:</label>
				<label class="span2" for="cpf">CPF:</label>  
			</div>
			<div class="controls controls-row">	
				<input class="span4" type="text" name="nomeDependente" id="nomeDependente" />
				<input class="span2" type="text" name="rgDependente" id="rg"/>
				<select class="span2" name="orgaoExpeditorDependente" form="orgaoExpeditor">
					<option value=" ">Selecione</option>
					<option value="IFP">IFP</option>
					<option value="IPF">IPF</option>
					<option value="SSP">SSP</option>
					<option value="MA">MA</option>
					<option value="MM">MM</option>
					<option value="MT">MT</option>
					<option value="OAB">OAB</option>
					<option value="CREA">CREA</option>
					<option value="CRM">CRM</option>
					<option value="CRA">CRA</option>
					<option value="ME">ME</option>
					<option value="CBM">CBM</option>
					<option value="CRO">CRO</option>
					<option value="CRF">CRF</option>
				</select> 
				<input class="span2" type="text" name="cpfDependente" id="cpf" />
			</div>
			<div class="controls controls-row">
				<label class="span2" for="dataNascimento">Data de Nascimento:</label>
			</div>
			<div class="controls controls-row">
				<input class="span2" type="text" name="dataNascimentoDependente" id="dataNascimento" />
			</div>
		</fieldset>
				<input type="hidden" name="logica" value="adicionar" /> 
				<input type="submit" value="Adicionar" class="btn btn-primary"> <br> <br>
	</form>
		<fieldset>
			<legend>Dependentes Cadastrados</legend>
					<table class="table table-condensed table-hover table-bordered">
					<tr>
						<th>Nome Pessoa</th>
						<th>Nome do Dependente</th>
						<th>Data de Nascimento</th>
					</tr>
				<c:forEach items="${dependentes}" var="dependente">
					<tr>
						<td>${dependente.pessoa.nome}</td>
						<td>${dependente.nome}</td>
						<td>${dependente.dataNascimento}</td>
						<td>			
							<form action="${pageContext.request.contextPath}/DependenteController" method="post">
								<input type="hidden" name="logica" value="visualizarDetalhesDependente" /> 
								<input type="hidden" name="codigoPessoa" value="${pessoa.codigo}">
								<input type="hidden" name="codigoDependente" value="${dependente.codigo}"/>
								<input type="submit" value="Visualizar Detalhes" class="btn-mini btn btn-info">
							</form>
						</td>
						<td>
							<form action="${pageContext.request.contextPath}/DependenteController" method="post">
								<input type="hidden" name="logica" value="deletarDependente" /> 
								<input type="hidden" name="codigoPessoa" value="${pessoa.codigo}">
								<input type="hidden" name="codigoDependente" value="${dependente.codigo}"/>
								<input type="submit" value="Deletar" class="btn-mini btn btn-danger">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
		<a href="${pageContext.request.contextPath }/paginaInicial/index.jsp" class="btn pull-right">Voltar</a>
<c:import url="/layout/footer.jsp"></c:import>