<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="/layout/header.jsp"></c:import>
<script type="text/javascript" src="/ProjetoPI/bootstrap/js/cidades-estados-1.2-utf8.js"></script>
	<form method="post"
		action="${pageContext.request.contextPath}/PessoaController">
	
		<fieldset>			
			<legend >Dados Pessoais</legend>
				<div class="controls controls-row">
				<label class="label-span7" for="nome"> Nome: </label>
				<label class="label-span2" for="cpf">CPF:</label>  
			</div>
			
			<div class="controls controls-row">
				<input class="span7" type="text" name="nomePessoa" id="nome" value="${pessoa.nome}" />
				<input class="span2" type="text" name="cpfPessoa" id="cpf" value="${pessoa.cpf }">
			</div>
			
			<div class="controls controls-row">
				<label class="label-span2" for="rg"> RG:</label> 
				<label class="label-span2" for="orgaoExpeditor"> Orgão Expeditor:</label> 
			</div>
			<div class="controls controls-row">
				<input class="span2" type="text" name="rgPessoa" id="rg" value="${pessoa.rg }"/>
				<select class="span2" name="orgaoExpeditorPessoa" id="orgaoExpeditor">
					<option value="${pessoa.orgaoExpeditor}">${pessoa.orgaoExpeditor }</option>
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
				<input class="span2" type="text" name="dataNascimentoPessoa" id="dataNascimento" value="${pessoa.dataNascimento }"/>
			</div>
			<div class="controls controls-row">
				<label class="label-span2" for="estadoCivil">Estado Civil:</label> 
			</div>
			<div class="controls controls-row">
					<select class="span2" name="estadoCivilPessoa" id="estadoCivil">
					<option value="${pessoa.estadoCivil }">${pessoa.estadoCivil}</option>
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
						<option value="${pessoa.cnh }">${pessoa.cnh}</option>
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
						<option value="${pessoa.deficienteFisico }">${pessoa.deficienteFisico}</option>
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
				<input class="span8" type="text" name="nomeDaMae" id="nomeMae" value="${pessoa.nomeMae}"/>
			</div>
		</fieldset>
		
		<fieldset>
			<legend>Endereço</legend>
			
			<div class="controls controls-row">	
				<label class="label-span8" for="logradouro"> Logradouro: </label> 
			</div>
			
			<div class="controls controls-row">	
				<input class="span8" type="text"name="logradouro" id="logradouro" value="${pessoa.logradouro}" />
			</div>
			<div class="controls controls-row">
				<label class="label-span2" for="numero"> Numero: </label> 
				<label class="label-span6" for="bairro"> Bairro:</label>
			</div>
			<div class="controls controls-row">
				<input class="span2" type="text" name="numero" id="numero" value="${pessoa.numero}"/>
				<input class="span6" type="text" name="bairro" id="bairro" value="${pessoa.bairro}"/>
			</div>
			<div class="controls controls-row">	
				<label class="label-span3" for="estado"> Estado:</label>	
				<label class="label-span3" for="cidade"> Cidade:</label>
				<label class="label-span3" for="cep"> CEP:</label> 
			</div>
			<div class="controls controls-row">	
				<select class="span3" name="uf"  id="estado">
					<option value="${pessoa.uf}">${pessoa.uf}</option>
				</select>
				<select class="span3" name="cidade"  id="cidade">
					<option value="${pessoa.cidade}">${pessoa.cidade}</option>
				</select>	
				<input class="span3" type="text" name="cep" id="cep" value="${pessoa.cep}"/>
			</div>		
		</fieldset>
			<input type="hidden" name="logica" value="alterar" /> 
			<input type="hidden" name="codigo" value="${pessoa.codigo}">
			<input type="submit" value="Alterar" class="btn btn-primary">
	</form>
		<fieldset>
			<legend>Dependentes</legend>
					<table class="table table-condensed table-hover table-bordered">
					<tr>
						<th>Nome do Dependente</th>
						<th>Data de Nascimento</th>
					</tr>
				<c:forEach items="${dependentes}" var="dependente">
					<tr>
						<td>${dependente.nome}</td>
						<td>${dependente.dataNascimento}</td>
						<td>			
							<form action="${pageContext.request.contextPath}/DependenteController" method="post">
								<input type="hidden" name="logica" value="visualizarDetalhesDependente" /> 
								<input type="hidden" name="codigoPessoa" value="${pessoa.codigo}">
								<input type="hidden" name="codigoDependente" value="${dependente.codigo}"/>
								<input type="submit" value="Visualizar Detalhes" class="btn-mini btn btn btn-info">
							</form>
						</td>
						<td>
							<form action="${pageContext.request.contextPath}/DependenteController" method="post">
								<input type="hidden" name="logica" value="deletarDependente" /> 
								<input type="hidden" name="codigoPessoa" value="${pessoa.codigo}">
								<input type="hidden" name="codigoDependente" value="${dependente.codigo}"/>
								<input type="submit" value="Deletar" class="btn-mini btn btn-danger">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
<a href="${pageContext.request.contextPath }/paginaInicial/index.jsp" class="btn pull-right">Voltar</a>
			<script>
		
		window.onload = function() {
			new dgCidadesEstados({
				estado: document.getElementById('estado'),
				cidade: document.getElementById('cidade')
				});
			};
		</script>
<c:import url="/layout/footer.jsp"></c:import>	