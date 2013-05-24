<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Cadastro de Pessoa</title>
</head>
<body>
	<form id="Login" method="post" action="${pageContext.request.contextPath}/CadastroDePessoaController">
		<fieldset>
		<legend>Dados Pessoais</legend>
		<label>
			Nome:
			<input type="text" name="nome" size="30"/>
		</label>
		<label>
			RG:
			<input type="text" name="rg" size="10" />
		</label>	
		<label>
			Orgão Expeditor:
				<select>
  					<option value="exemplo1">Exemplo1</option>
  					<option value="exemplo2">Exemplo2</option>
  					<option value="exemplo3">Exemplo3</option>
  					<option value="exemplo4">Exemplo4</option>
				</select>
		</label>
		<label>
			CPF:
			<input type="text" name="cpf" size="12" />
		</label>
			<label>
			Data de Nascimento:
			<input type="text" name="dataNascimento" size="10" />
		</label>	
		<label>
			Estado Civil:
				<select>
  					<option value="exemplo1">Exemplo1</option>
  					<option value="exemplo2">Exemplo2</option>
  					<option value="exemplo3">Exemplo3</option>
  					<option value="exemplo4">Exemplo4</option>
				</select>
		</label>
		<label>
			Deficiente Fisico:
			<input type="checkbox"/>Sim
			<input type="checkbox"/>Não
		</label>
			<label>
			CNH:
				<select>
  					<option value="exemplo1">Exemplo1</option>
  					<option value="exemplo2">Exemplo2</option>
  					<option value="exemplo3">Exemplo3</option>
  					<option value="exemplo4">Exemplo4</option>
				</select>
		</label>
		<label>
			Nome da mãe:
			<input type="text" name="nomeDaMae" size="30/">
		</label>			
		</fieldset>
		
		<fieldset>
			<legend>Dependentes</legend>
		</fieldset>
		
		<fieldset>
			<legend>Endereço</legend>
			<label>
			Logradouro:
				<input type="text" name="logradouro" size="50"/>
			</label>
			<label>
			Numero:
				<input type="text" name="numero" size="5"/>
			</label>
			<label>
			Bairro:
				<input type="text" name="bairro" size="30"/>
			</label>
			<label>
			Estado:
				<select>
  					<option value="exemplo1">Exemplo1</option>
  					<option value="exemplo2">Exemplo2</option>
  					<option value="exemplo3">Exemplo3</option>
  					<option value="exemplo4">Exemplo4</option>
				</select>
			</label>
			<label>
				Cidade:
				<input type="text" name="cidade" size="30"/>
			</label>
			<label>
				CEP:
				<input type="text" name="cep" size="10"/>
			</label>	
			
		</fieldset>
		<input type="hidden" name="logica" value="cadastrar"/>
		<input type="submit" value="Cadastrar">
	</form>
</body>
</html>