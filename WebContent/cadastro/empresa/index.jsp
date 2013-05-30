
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Cadastro de Empresas</title>
</head>
<body>
        <form action="${pageContext.request.contextPath}/EmpresaController" method="post">
            <fieldset>
            	<legend>Cadastro de Empresas</legend>
                	<label>Razão Social:</label>
                	<input type="text" name="razaosocial" />
                	<label>Nome Fantasia:</label>
                	<input type="text" name="nomefantasia" />
                	<label>CNPJ:</label>
                	<input type="text" name="cnpj" />
                	<label>Inscrição Estadual:</label>
                	<input type="text" name="inscricaoestadual" />
                	<label>Inscrição Municipal:</label>
                	<input type="text" name="inscricaomunicipal" />
            </fieldset>
            <fieldset>
            	<legend>Endereço</legend>
            		<label>Logradouro:</label>
            		<input type="text" name="logradouro" />
            		<label>Número:</label>
            		<input type="text" name="numero"/>
            		<label>Complemento:</label>
            		<input type="text" name="complemento" />
            		<label>Bairro:</label>
            		<input type="text" name="bairro" />
            		<label>CEP:</label>
            		<input type="text" name="cep"/>
            		<label>UF:</label>
            		<select name="estado">
						<option selected="" value="">Selecione o Estado (UF)</option>
						<option value="Acre">Acre</option>
						<option value="Alagoas">Alagoas</option>
						<option value="Amapá">Amapá</option>
						<option value="Amazonas">Amazonas</option>
						<option value="Bahia">Bahia</option>
						<option value="Ceará">Ceará</option>
						<option value="Distrito Federal">Distrito Federal</option>
						<option value="Espírito Santo">Espírito Santo</option>
						<option value="Goiás">Goiás</option>
						<option value="Maranhão">Maranhão</option>
						<option value="Mato Grosso">Mato Grosso</option>
						<option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
						<option value="Minas Gerais">Minas Gerais</option>
						<option value="Pará">Pará</option>
						<option value="Paraíba">Paraíba</option>
						<option value="Paraná">Paraná</option>
						<option value="Pernambuco">Pernambuco</option>
						<option value="Piauí">Piauí</option>
						<option value="Rio de Janeiro">Rio de Janeiro</option>
						<option value="Rio Grande do Sul">Rio Grande do Sul</option>
						<option value="Rio Grande do Norte">Rio Grande do Norte</option>
						<option value="Rondônia">Rondônia</option>
						<option value="Roraima">Roraima</option>
						<option value="Santa Catarina">Santa Catarina</option>
						<option value="São Paulo">São Paulo</option>
						<option value="Sergipe">Sergipe</option>
						<option value="Tocantins">Tocantins</option>
					</select>
            		<label>Cidade:</label>
            		<input type="text" name="cidade" />
            </fieldset>
            <fieldset>
            	<legend>Contato</legend>
            		<label>Telefone 1:</label>
            		<input type="text" name="telefone1" />
            		<label>Telefone 2:</label>
            		<input type="text" name="telefone2" />
            		<label>Telefone 3:</label>
            		<input type="text" name="telefone3" />
            		<label>e-mail:</label>
            		<input type="text" name="email" />
            		<label>site:</label>
            		<input type="text" name="site" />
            </fieldset>
            <input type="hidden" name="logica" value="salvar"/>
            <input type="submit" value="Salvar"/>
            </form>
            
            <form action="${pageContext.request.contextPath}/EmpresaController"></form>
               
</body>
</html>