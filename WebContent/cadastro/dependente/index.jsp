<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Dependente</title>
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css" />
</head>
<body>
	<form class="cadastros" method="post"
		action="${pageContext.request.contextPath}/DependenteController">
		
			<h1>Cadastro de Dependente</h1>
			<fieldset>
				<legend>Dados Pessoais</legend>
				<label> 
					Pessoa: 
						<input type="text" name="nomeDaPessoa" value="<%=request.getParameter("nomePessoa")%>" readonly="true" />
						<input type="hidden" name="cpfPessoa" value="<%=request.getParameter("cpfPessoa")%>" />
				</label> 
				<label> 
					Nome do Dependente: 
						<input type="text" name="nomeDependente" />
				</label> 
				<label> 
					RG: 
						<input type="text" name="rgDependente" />
				</label>
				<label> 
					Orgão Expeditor: 
				<select name="orgaoExpeditorDependente">
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
				</label> 
				<label> 
					CPF: 
						<input type="text" name="cpfDependente" />
				</label> 
				<label> 
					Data de Nascimento: 
					<input type="text" name="dataNascimentoDependente" />
				</label>
		</fieldset>
				<input type="hidden" name="logica" value="adicionar" /> 
				<input type="submit" value="Adicionar"> <br> <br>
		<fieldset>
			<legend>Dependentes Cadastrados</legend>
				<table class="table table-bordered">
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
					</tr>
				</c:forEach>
			</table>
		</fieldset>
	</form>
</body>
</html>