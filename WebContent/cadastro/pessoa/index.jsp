<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css" />
<title>Cadastro de Pessoa</title>
</head>
<body>
	<form method="post"
		action="${pageContext.request.contextPath}/PessoaController">
		<fieldset>
			<h1 align="center">Cadastro de Pessoa</h1>
			<legend >Dados Pessoais</legend>
				<label> 
					Nome: 
					<input class="span5" type="text" name="nomePessoa" />
				</label> 
				
				<label> 
					RG: 
					<input class="span3" type="text" name="rgPessoa" />
				</label> 
				
				<label> 
					Orgão Expeditor: 
					<select class="span2" name="orgaoExpeditorPessoa">
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
					<input class="span3" type="text" name="cpfPessoa" />
				</label> 
				
				<label> 
					Data de Nascimento: 
					<input class="span2" type="text" name="dataNascimentoPessoa" />
				</label> 
				
				<label> 
					Estado Civil: 
					<select class="span2" name="estadoCivilPessoa">
						<option value=" ">Selecione</option>
						<option value="solteiro">Solteiro(a)</option>
						<option value="casado">Casado(a)</option>
						<option value="separado">Separado(a)</option>
						<option value="divorciado">Divorciado(a)</option>
						<option value="viuvo">Viúvo(a)</option>
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
						<option value=" ">Selecione</option>
						<option value="">Não Possui</option>
						<option value="categoria A">Categoria A</option>
						<option value="categoria B">Categoria B</option>
						<option value="categoria C">Categoria C</option>
						<option value="categoria D">Categoria D</option>
						<option value="categoria E">Categoria E</option>
					</select>
				</label>
				
				<label>
					Nome da mãe:
					<input class="span5" type="text" name="nomeDaMae" />
				</label>
		</fieldset>
		
		<fieldset>
			<legend>Endereço</legend>
			<label> 
				Logradouro: 
				<input class="span5" type="text"name="logradouro" />
			</label>
			
			<label> 
				Numero: 
				<input class="span2" type="text" name="numero" />
			</label>
			
			<label> 
				Bairro:
				<input class="span5" type="text" name="bairro" />
			</label>
			
			<label> 
				Estado: 
				<select class="span3" name="uf">
					<option value="">Selecione</option>
					<option value="AC">Acre</option>
					<option value="AL">Alagoas</option>
					<option value="AP">Amapá</option>
					<option value="AM">Amazonas</option>
					<option value="BA">Bahia</option>
					<option value="CE">Ceará</option>
					<option value="DF">Distrito Federal</option>
					<option value="GO">Goiás</option>
					<option value="ES">Espírito Santo</option>
					<option value="MA">Maranhão</option>
					<option value="MT">Mato Grosso</option>
					<option value="MS">Mato Grosso do Sul</option>
					<option value="MG">Minas Gerais</option>
					<option value="PA">Pará</option>
					<option value="PB">Paraiba</option>
					<option value="PR">Paraná</option>
					<option value="PE">Pernambuco</option>
					<option value="PI">Piauí­</option>
					<option value="RJ">Rio de Janeiro</option>
					<option value="RN">Rio Grande do Norte</option>
					<option value="RS">Rio Grande do Sul</option>
					<option value="RO">Rondônia</option>
					<option value="RR">Roraima</option>
					<option value="SP">São Paulo</option>
					<option value="SC">Santa Catarina</option>
					<option value="SE">Sergipe</option>
					<option value="TO">Tocantins</option>
				</select>
			</label>
			
			<label> 
				Cidade: 
				<input class="span4" type="text"name="cidade" />
			</label> 
			
			<label> 
				CEP: 
				<input class="span3" type="text" name="cep" />
			</label>
		</fieldset>
		
		<br>
		<input type="hidden" name="logica" value="cadastrar" /> 
		<input type="submit" value="Cadastrar" class="btn btn-primary">
		<a class="btn btn-link" href="/ProjetoPI/paginaInicial/">Pagina Inicial </a>
	</form>
</body>
</html>