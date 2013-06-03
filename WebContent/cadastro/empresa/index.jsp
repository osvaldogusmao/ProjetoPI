<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"/>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/cidades-estados-1.2-utf8.js"></script>
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
            		<select id="estado1" value="Selecione um estado" name="uf"></select>
            		<label>Cidade:</label>
            		<select id="cidade1" value="Selecione uma cidade" name="cidade"></select>
            		<script type="text/javascript" charset="utf-8">
            			new dgCidadesEstados({
            				cidade: document.getElementById('cidade1'),
            				estado: document.getElementById('estado1')});
            		</script>
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