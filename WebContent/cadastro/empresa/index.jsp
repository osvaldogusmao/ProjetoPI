<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/layout/header.jsp"></c:import>
<script type="text/javascript" src="/ProjetoPI/bootstrap/js/cidades-estados-1.2-utf8.js"></script>
	<form action="${pageContext.request.contextPath}/EmpresaController" method="post">
		<h1 align="center">Cadastro de Empresas</h1>
		<fieldset>
		<legend>Dados da Empresa</legend>
		
			<div class="controls controls-row">
				<label class="span12"for="rs"> Razão Social: </label> 
			</div>
		
			<div class="controls controls-row">
				<input class="span12" type="text" name="razaosocial" id="rs" />
			</div>
		
			<div class="controls controls-row">
				<label class="span12" for="nf"> Nome Fantasia:  </label>	
			</div>
		
			<div class="controls controls-row">
				<input class="span12" type="text" name="nomefantasia" id="nf" />
			</div>
		
			<div class="controls controls-row">
				<label class="span4" for="cnpj"> CNPJ:</label> 
				<label class="span4" for="ie">Inscrição Estadual:</label>
				<label class="span4" for="im">Inscrição Municipal:</label> 
			</div>
		
			<div class="controls controls-row">
				<input class="span4" type="text" name="cnpj" id="cnpj"/>
				<input class="span4" type="text" name="inscricaoestadual" id="ie" />
				<input class="span4" type="text" name="inscricaomunicipal" id="im"/>
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
				<input class="span7" type="text" name="logradouro" id="log" />
				<input class="span2" type="text" name="numero" id="num">
				<input class="span3" type="text" name="complemento" id="com">
			</div>
			
			<div class="controls controls-row">
				<label class="span2" for="bai">Bairro:</label>
				<label class="span2" for="cep">Cep:</label>
				<label class="span3" for="estado1">Uf:</label>
				<label class="span4" for="cid">Cidade:</label>
				
			</div>
			
			<div class="controls controls-row">
				<input class="span2" type="text" name="bairro" id="bai">
				<input class="span2" type="text" name="cep" id="cep">
				<select class="span3" name="uf"  id="estado"></select>
				<select class="span5" name="cidade"  id="cidade"></select>	
			</div>
	
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
	<a href="/ProjetoPI/paginaInicial/index.jsp"><input type="submit" value="Voltar" class="btn"></a>          

		<script>
		
		window.onload = function() {
			new dgCidadesEstados({
				estado: document.getElementById('estado'),
				cidade: document.getElementById('cidade')
				});
			};
		</script>


<c:import url="/layout/footer.jsp"></c:import>	