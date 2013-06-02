<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css" />
<title>Visualizar Pessoa</title>
</head>
<body>
	<form method="post"
		action="${pageContext.request.contextPath}/PessoaController">
			<h1 align="center">Cadastro de Pessoa Completo</h1>
		<fieldset>
			<legend>Dados Pessoais</legend>
				<label> 
					Nome: 
					<input class="span5" type="text" name="nomePessoa" value="${pessoa.nome}"/>
				</label> 
				<label> 
					RG: 
					<input class="span3" type="text" name="rgPessoa" value="${pessoa.rg }"/>
				</label> 
				<label> 
					Orgão Expeditor: 
					<select class="span2" name="orgaoExpeditorPessoa">
						<option value="${pessoa.orgaoExpeditor}">${pessoa.orgaoExpeditor }</option>
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
					<input class="span3" type="text" name="cpfPessoa" value="${pessoa.cpf }" />
				</label> 
				<label> 
					Data de Nascimento: 
					<input class="span2" type="text" name="dataNascimentoPessoa" value="${pessoa.dataNascimento }" />
				</label> 
				<label> 
					Estado Civil: 
					<select class="span2" name="estadoCivilPessoa">
						<option value="${pessoa.orgaoExpeditor }">${pessoa.estadoCivil}</option>
						<option value="solteiro(a)">Solteiro(a)</option>
						<option value="casado(a)">Casado(a)</option>
						<option value="separado(a)">Separado(a)</option>
						<option value="divorciado(a)">Divorciado(a)</option>
						<option value="viuvo(a)">Viúvo(a)</option>
					</select>
				</label> 
				<label> 
					Deficiente Fisico: 
					<input class="span1" type="checkbox" name="deficienteFisicoPessoa" value="sim" />Sim 
					<input class="span1" type="checkbox" name="deficienteFisicoPessoa" value="nao" />Não
				</label>
				<label> 
					CNH: 
					<select class="span2" name="cnhPessoa">
						<option value="${pessoa.cnh }">${pessoa.cnh}</option>
						<option value="nao possui">Não Possui</option>
						<option value="categoria A">Categoria A</option>
						<option value="categoria B">Categoria B</option>
						<option value="categoria C">Categoria C</option>
						<option value="categoria D">Categoria D</option>
						<option value="categoria E">Categoria E</option>
					</select>
				</label>
				<label>
					Nome da mãe:
					<input class="span5" type="text" name="nomeDaMae" value="${pessoa.nomeMae }"/>
				</label>
		</fieldset>
		<fieldset>
			<legend>Endereço</legend>
			<label> 
				Logradouro: 
				<input class="span5" type="text"name="logradouro" value="${pessoa.logradouro}" />
			</label>
			<label> 
				Numero: 
				<input class="span2" type="text" name="numero" value="${pessoa.numero}" />
			</label>
			<label> 
				Bairro:
				<input class="span5" type="text" name="bairro" value="${pessoa.bairro}"/>
			</label>
			<label> 
				Estado: 
				<select class="span3" name="uf">
					<option value="${pessoa.uf}">${pessoa.uf}</option>
					<option value="AC">Acre</option>
					<option value="AL">Alagoas</option>
					<option value="AP">Amapa</option>
					<option value="AM">Amazonas</option>
					<option value="BA">Bahia</option>
					<option value="CE">Ceara</option>
					<option value="DF">Distrito Federal</option>
					<option value="GO">Goias</option>
					<option value="ES">Espírito Santo</option>
					<option value="MA">Maranhao</option>
					<option value="MT">Mato Grosso</option>
					<option value="MS">Mato Grosso do Sul</option>
					<option value="MG">Minas Gerais</option>
					<option value="PA">Para</option>
					<option value="PB">Paraiba</option>
					<option value="PR">Parana</option>
					<option value="PE">Pernambuco</option>
					<option value="PI">Piaui</option>
					<option value="RJ">Rio de Janeiro</option>
					<option value="RN">Rio Grande do Norte</option>
					<option value="RS">Rio Grande do Sul</option>
					<option value="RO">Rondonia</option>
					<option value="RR">Roraima</option>
					<option value="SP">Sao Paulo</option>
					<option value="SC">Santa Catarina</option>
					<option value="SE">Sergipe</option>
					<option value="TO">Tocantins</option>
				</select>
			</label>
			<label> 
				Cidade: 
				<input class="span4" type="text"name="cidade" value="${pessoa.cidade}" />
			</label> 
			<label> 
				CEP: 
				<input class="span3" type="text" name="cep" value="${pessoa.cep}" />
			</label>
		</fieldset>
		<br>
		<input type="hidden" name="logica" value="alterar" /> 
		<input type="hidden" name="codigo" value="${pessoa.codigo}">
		<input type="submit" value="Alterar" class="btn btn-primary">
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