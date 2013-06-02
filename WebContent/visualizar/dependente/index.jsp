<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dependentes Cadastrados</title>
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css" />
</head>
<body>
	<form method="post"
		action="${pageContext.request.contextPath}/DependenteController">
		
			<h1 align="center">Dependente Cadastrado</h1>
			<fieldset>
				<legend>Dados Pessoais</legend>
				<label> 
					Pessoa: 
						<input type="text" name="nomeDaPessoa" value="${pessoa.nome}" readonly="true" />
						<input type="hidden" name="cpfPessoa" value="${pessoa.cpf}" />
				</label> 
				<label> 
					Nome do Dependente: 
						<input type="text" name="nomeDependente" value="${dependente.nome}" />
				</label> 
				<label> 
					RG: 
						<input type="text" name="rgDependente" value="${dependente.rg}" />
				</label>
				<label> 
					Orgão Expeditor: 
				<select name="orgaoExpeditorDependente">
					<option value="${dependente.orgaoExpeditor}">${dependente.orgaoExpeditor}</option>
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
				</label> 
				<label> 
					CPF: 
						<input type="text" name="cpfDependente" value="${dependente.cpf}" />
				</label> 
				<label> 
					Data de Nascimento: 
					<input type="text" name="dataNascimentoDependente" value="${dependente.dataNascimento}" />
				</label>
		</fieldset>
				<input type="hidden" name="logica" value="editar" /> 
				<input type="hidden" name="codigoDependente" value="${dependente.codigo}">
				<input type="hidden" name="codigoPessoa" value="${pessoa.codigo}">
				<input type="submit" value="Editar"> <br> <br>
	</form>
	<br><br>
		<fieldset>
			<legend>Dependentes</legend>
					<table class="table table-hover">
					<tr>
						<th>Nome do Dependente</th>
						<th>Data de Nascimento</th>
					</tr>
				<c:forEach items="${dependentes}" var="dependente">
					<tr>
						<td>${dependente.nome}</td>
						<td>${dependente.dataNascimento}</td>
						<td>			
							<form action="${pageContext.request.contextPath}/DependenteController" method="post">
								<input type="hidden" name="logica" value="visualizarDetalhesDependente" /> 
								<input type="hidden" name="codigoPessoa" value="${pessoa.codigo}">
								<input type="hidden" name="codigoDependente" value="${dependente.codigo}"/>
								<input type="submit" value="Visualizar Detalhes" class="btn-mini">
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
		<a class="btn btn-link" href="/ProjetoPI/paginaInicial/">Pagina Inicial </a>
</body>
</html>