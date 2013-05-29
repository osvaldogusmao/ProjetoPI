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
			<input type="text" name="cpf" size="12" />
		</label>
			<label>
			Data de Nascimento:
			<input type="text" name="dataNascimento" size="10" />
		</label>	
		<label>
			Estado Civil:
				<select name="estado_civil">
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
			<input type="checkbox"/>Sim
			<input type="checkbox"/>Não
		</label>
			<label>
			CNH:
				<select name="cnh">
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
			<input type="text" name="nomeDaMae" size="30/">
		</label>			
		</fieldset>
		
		<fieldset>
			<legend>Dependentes</legend>
			 <table>
            <tr>
                <th>Nome</th>
                <th>Idade</th>
            </tr>
            <tr>
                 <td>Vanessa</td>
                 <td>20 </td>
                 <td>deletar</td>
                 <td>alterar</td>
            </tr>
        </table>
			<form id="dependente" method="post" action="${pageContext.request.contextPath}/CadastroDePessoaController">
				<input type="hidden" name="logica" value="adicionar"/>
				<input type="submit" value="Adicionar">
			</form>
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
				<select name="estado">
					<option value=""> Selecione </option>
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