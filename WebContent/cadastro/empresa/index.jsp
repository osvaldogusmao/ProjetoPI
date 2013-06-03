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
			<h1 align="center">Cadastro de Empresas</h1>
		<fieldset>
			<legend>Dados da Empresa</legend>
			<label>Razão Social:
			<input type="text" name="razaosocial" />
			</label>
			
			<label>Nome Fantasia:
			<input type="text" name="nomefantasia" />
			</label>
			
			<label>CNPJ:
			<input type="text" name="cnpj" class="cep"/>
			</label>
			
			<label>Inscrição Estadual:
			<input type="text" name="inscricaoestadual" />
			</label>
			
			<label>Inscrição Municipal:
			<input type="text" name="inscricaomunicipal" />
			</label>
			
		</fieldset>
		
		<fieldset>
			<legend>Endereço</legend>
			<label>Logradouro:
			<input type="text" name="logradouro" />
			</label>
			
			<label>Número:
			<input type="text" name="numero"/>
			</label>
			
			<label>Complemento:
			<input type="text" name="complemento" />
			</label>
			
			<label>Bairro:
			<input type="text" name="bairro" />
			</label>
			
			<label>CEP:
			<input type="text" name="cep"/>
			</label>
			
			<label>UF:
			<select id="estado1" value="Selecione um estado" name="uf"></select>
			</label>
			
			<label>Cidade:
			<select id="cidade1" value="Selecione uma cidade" name="cidade"></select>
			</label>
			
			<script type="text/javascript" charset="utf-8">
			new dgCidadesEstados({cidade: document.getElementById('cidade1'),estado: document.getElementById('estado1')});
			</script>
		</fieldset>
		
		<fieldset>
			<legend>Contato</legend>
			<label>Telefone 1:
			<input type="text" name="telefone1" />
			</label>
			
			<label>Telefone 2:
			<input type="text" name="telefone2" />
			</label>
			
			<label>Telefone 3:
			<input type="text" name="telefone3" />
			</label>
			
			<label>e-mail:
			<input type="text" name="email" />
			</label>
			
			<label>site:
			<input type="text" name="site" />
			</label>
			
		</fieldset>
		
		<input type="hidden" name="logica" value="salvar"/>
		<input type="submit" value="Salvar" class="btn btn-primary"/>
	</form>   
	<a href="/ProjetoPI/paginaInicial/index.jsp"><input type="submit" value="Voltar"></a>          
</body>
</html>