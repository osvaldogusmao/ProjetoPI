<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/layout/header.jsp"></c:import>
<script type="text/javascript" src="/ProjetoPI/bootstrap/js/cidades-estados-1.2-utf8.js"></script>
<script language="JavaScript" type="text/javascript" src="/ProjetoPI/bootstrap/js/MascaraValidacao.js"></script> 

	<form method="post"
		action="${pageContext.request.contextPath}/PessoaController">
		<fieldset>
					
			<legend >Dados Pessoais</legend>
			
			<div class="controls controls-row">
				<label class="label-span7" for="nome"> Nome: </label>
				<label class="label-span2" for="cpf">CPF:</label>  
			</div>
			
			<div class="controls controls-row">
				<input class="span7" type="text" name="nomePessoa" id="nome" />
				<input class="span2" type="text" name="cpfPessoa" id="cpf">
			</div>
			
			<div class="controls controls-row">
				<label class="label-span2" for="rg"> RG:  </label> 
				<label class="label-span2" for="orgaoExpeditor"> Orgão Expeditor:</label> 
			</div>
			<div class="controls controls-row">
				<input class="span2" type="text" name="rgPessoa" id="rg"/>
				<select class="span2" name="orgaoExpeditorPessoa" id="orgaoExpeditor">
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
			</div>	
			<div class="controls controls-row">
				<label class="label-span2" for="dataNascimento">Data de Nascimento:</label>	
			</div>
			<div class="controls controls-row">
				<input class="span2" type="text" name="dataNascimentoPessoa" id="dataNascimento"/>
			</div>
			<div class="controls controls-row">
				<label class="label-span2" for="estadoCivil">Estado Civil:</label> 
			</div>
			<div class="controls controls-row">
					<select class="span2" name="estadoCivilPessoa" id="estadoCivil">
					<option value=" ">Selecione</option>
					<option value="solteiro(a)">Solteiro(a)</option>
					<option value="casado(a)">Casado(a)</option>
					<option value="separado(a)">Separado(a)</option>
					<option value="divorciado(a)">Divorciado(a)</option>
					<option value="viuvo(a)">Viúvo(a)</option>
				</select>
			</div>
			<div class="controls controls-row">
				<label class="label-span2" for="cnh">CNH:</label>  
			</div>
			<div class="controls controls-row">
				<select class="span2" name="cnhPessoa" id="cnh">
						<option value=" ">Selecione</option>
						<option value="">Não Possui</option>
						<option value="categoria A">Categoria A</option>
						<option value="categoria B">Categoria B</option>
						<option value="categoria C">Categoria C</option>
						<option value="categoria D">Categoria D</option>
						<option value="categoria E">Categoria E</option>
				</select>
			</div>	
			<div class="controls controls-row">		
				<label for="deficiencia" class="label-span2"> Tipo de deficiência:</label>
			</div>
			<div>
						<select class="span2" name="deficienteFisicoPessoa" id="deficiencia">
						<option value=" ">Selecione</option>
						<option value="">Não tem</option>
						<option value="fisica">Fisica</option>
						<option value="auditiva">Auditiva</option>
						<option value="visual">Visual</option>
						<option value="mental">Mental</option>
						<option value="multipla">Multipla</option>
				</select>
			</div>
			<div class="controls controls-row">
				<label class="label-span8" for="nomeMae"> Nome da mãe: </label>
			</div>
			
			<div class="controls controls-row">
				<input class="span8" type="text" name="nomeDaMae" id="nomeMae"/>
			</div>
		</fieldset>
		
		<fieldset>
			<legend>Endereço</legend>
			
			<div class="controls controls-row">	
				<label class="label-span8" for="logradouro"> Logradouro: </label> 
			</div>
			
			<div class="controls controls-row">	
				<input class="span8" type="text"name="logradouro" id="logradouro" />
			</div>
			<div class="controls controls-row">
				<label class="label-span2" for="numero"> Numero: </label> 
				<label class="label-span6" for="bairro"> Bairro:</label>
			</div>
			<div class="controls controls-row">
				<input class="span2" type="text" name="numero" id="numero"/>
				<input class="span6" type="text" name="bairro" id="bairro"/>
			</div>
			<div class="controls controls-row">	
				<label class="label-span3" for="estado"> Estado:</label>	
				<label class="label-span3" for="cidade"> Cidade:</label>
				<label class="label-span3" for="cep"> CEP:</label> 
			</div>
			<div class="controls controls-row">	
				<select class="span3" name="uf"  id="estado"></select>
				<select class="span3" name="cidade"  id="cidade"></select>	
				<input class="span3" type="text" name="cep" id="cep" OnKeyPress="MascaraCep(cep)" maxlength="10"/>
			</div>
		</fieldset>
			<a href="${pageContext.request.contextPath }/paginaInicial/index.jsp" class="btn pull-right">Voltar</a>
			<input type="hidden" name="logica" value="cadastrar" /> 
			<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form>
	
			<script>
		
			window.onload = function() {
			new dgCidadesEstados({
				estado: document.getElementById('estado'),
				cidade: document.getElementById('cidade')
				});
			

			/* Formatação para qualquer mascara */

			function formatar(src, mask){
			  var i = src.value.length;
			  var saida = mask.substring(0,1);
			  var texto = mask.substring(i);
			if (texto.substring(0,1) != saida){
			    src.value += texto.substring(0,1);
			  };
			};
			};
		</script>
	
<c:import url="/layout/footer.jsp"></c:import>