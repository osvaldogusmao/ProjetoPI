
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Cadastro de Empresas</title>
</head>
<body>
        <form method="post" action="${pageContext.request.contextPath}/EmpresaController">
            <fieldset>
            	<legend>Cadastro de Empresas</legend>
                	<label>Razão Social:</label>
                	<input type="text" name="razaosocial" size="20"/>
                	<label>Nome Fantasia:</label>
                	<input type="text" name="nomefantasia" size="20"/>
                	<label>CNPJ:</label>
                	<input type="text" name="cnpj" size="20"/>
                	<label>Inscrição Estadual:</label>
                	<input type="text" name="inscricaoestadual" size="20"/>
                	<label>Inscrição Municipal:</label>
                	<input type="text" name="inscricaoMunicipal" size="20"/>
            </fieldset>
            <fieldset>
            	<legend>Endereço</legend>
            		<label>Logradouro:</label>
            		<input type="text" name="logradouro" size="20"/>
            		<label>Número:</label>
            		<input type="text" name="numero" size="20"/>
            		<label>Complemento:</label>
            		<input type="text" name="complemento" size="20"/>
            		<label>Bairro:</label>
            		<input type="text" name="bairro" size="20"/>
            		<label>CEP:</label>
            		<input type="text" name="cep" size="20"/>
            		<label>UF:</label>
            		<input type="text" name="uf" size="20"/>
            		<label>Cidade:</label>
            		<input type="text" name="cidade" size="20"/>
            </fieldset>
            <fieldset>
            	<legend>Contato</legend>
            		<label>Telefone 1:</label>
            		<input type="text" name="telefone1" size="20"/>
            		<label>Telefone 2:</label>
            		<input type="text" name="telefone2" size="20"/>
            		<label>Telefone 3:</label>
            		<input type="text" name="telefone3" size="20"/>
            		<label>e-mail:</label>
            		<input type="text" name="email" size="20"/>
            		<label>site:</label>
            		<input type="text" name="site" size="20"/>
            </fieldset>
            <input type="hidden" name="logica" value="salvar"/>
            
                <input type="submit" value="Salvar"/>
            </form>
               
</body>
</html>