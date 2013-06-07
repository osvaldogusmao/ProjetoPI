<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/layout/header.jsp"></c:import>
<script type="text/javascript" src="/ProjetoPI/bootstrap/js/cidades-estados-1.2-utf8.js"></script>
<script language="JavaScript" type="text/javascript" src="/ProjetoPI/bootstrap/js/MascaraValidacao.js"></script> 
	
	<form action="${pageContext.request.contextPath}/EmpresaController" method="post">
		<h1 align="center">Alteração de Cadastro de Empresas</h1>
		<fieldset>
		<legend>Dados da Empresa</legend>
		
			<div class="controls controls-row">
				<label class="span12"for="rs"> Razão Social: </label> 
			</div>
		
			<div class="controls controls-row">
				<input class="span12" type="text" name="razaosocial" id="rs" value="${empresa.razaoSocial}" />
			</div>
		
			<div class="controls controls-row">
				<label class="span12" for="nf"> Nome Fantasia:  </label>	
			</div>
		
			<div class="controls controls-row">
				<input class="span12" type="text" name="nomefantasia" id="nf" value="${empresa.nomeFantasia}" />
			</div>
		
			<div class="controls controls-row">
				<label class="span4" for="cnpj"> CNPJ:</label> 
				<label class="span4" for="ie">Inscrição Estadual:</label>
				<label class="span4" for="im">Inscrição Municipal:</label> 
			</div>
		
			<div class="controls controls-row">
				<input class="span4" type="text" name="cnpj" id="cnpj" value="${empresa.cnpj}" OnKeyPress="MascaraCNPJ(cnpj);" maxlength="18" onblur="ValidarCNPJ(cnpj)"/>
				<input class="span4" type="text" name="inscricaoestadual" id="ie" value="${empresa.inscricaoEstadual}"/>
				<input class="span4" type="text" name="inscricaomunicipal" id="im" value="${empresa.inscricaoMuncipal}"/>
			</div>
		
		</fieldset>
		
		<fieldset>
			<legend>Endereço</legend>
			
			<div class="controls controls-row">
				<label class="span7" for="log">Logradouro:</label>
				<label class="span2" for="num">Número:</label>
				<label class="span2" for="com">Complemeto:</label>
			</div>
			
			<div class="controls controls-row">
				<input class="span7" type="text" name="logradouro" id="log" value="${empresa.logradouro}"/>
				<input class="span2" type="text" name="numero" id="num" value="${empresa.numero}" onkeypress="SomenteNumeros();">
				<input class="span3" type="text" name="complemento" id="com" value="${empresa.complemento}">
			</div>
			
			<div class="controls controls-row">
				<label class="span2" for="bai">Bairro:</label>
				<label class="span2" for="cep">Cep:</label>
				<label class="span3" for="uf">Uf:</label>
				<label class="span4" for="cid">Cidade:</label>
				
			</div>
			
			<div class="controls controls-row">
				<input class="span2" type="text" name="bairro" id="bai" value="${empresa.bairro}">
				<input class="span2" type="text" name="cep" id="cep" value="${empresa.cep}" OnKeyPress="MascaraCep(cep)" maxlength="10">
				<input class="span3" type="text" name="uf" id="uf" value="${empresa.uf}">
				<input class="span5" type="text" name="uf" id="cid" value="${empresa.cidade}">	
			</div>
		</fieldset>
		
		<fieldset>
			<legend>Contato</legend>
			
			<div class="controls controls-row">
				<label class="span4" for="tel1">Telefone 1:</label>
				<label class="span4" for="tel2">Telefone 2:</label>
				<label class="span3" for="tel3">Telefone 3:</label>
			
			</div>
			
			<div>
				<input class="span4" type="text" name="telefone1" onKeyPress="MascaraTelefone(telefone1);" maxlength="14" value="${empresa.telefone1}">
				<input class="span4" type="text" name="telefone2" onKeyPress="MascaraTelefone(telefone2);" maxlength="14" value="${empresa.telefone2}">
				<input class="span4" type="text" name="telefone3" onKeyPress="MascaraTelefone(telefone3);" maxlength="14" value="${empresa.telefone3}">				
			</div>
	
			
			<label>e-mail:
			<input type="text" name="email" />
			<input class="span2" type="text" name="email" id="mail" value="" OnKeyPress="ValidarEmail(email)" maxlength="10">
			</label>
			
			<label>site:
			<input type="text" name="site" />
			</label>
			
		</fieldset>
		
		<input type="hidden" name="logica" value="salvar"/>
		<input type="submit" value="Salvar" class="btn btn-primary"></input>
	</form>   
	<a href="/ProjetoPI/paginaInicial/index.jsp"><input type="submit" value="Voltar" class="btn"></a>          

		<script language="javascript">
		
		window.onload = function() {
			new dgCidadesEstados({
				estado: document.getElementById('estado'),
				cidade: document.getElementById('cidade')
				});
			};
			
			
			/* Formatação para qualquer mascara */
			
			function formatar(src, mask){
			  var i = src.value.length;
			  var saida = mask.substring(0,1);
			  var texto = mask.substring(i);
			if (texto.substring(0,1) != saida){
			    src.value += texto.substring(0,1);
			  };
			};
			
		</script>
		


<c:import url="/layout/footer.jsp"></c:import>	