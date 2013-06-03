<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="/layout/header.jsp"></c:import>
	<form method="post"
		action="${pageContext.request.contextPath}/PessoaController">
	
		<fieldset>			
			<legend >Dados Pessoais</legend>
			
			<div class="controls controls-row">
				<label class="span5" for="nome"> Nome: </label> 
				<label class="span2" for="rg"> RG:  </label> 
				<label class="span2" for="orgaoExpeditor"> Orgão Expeditor:</label> 
				<label class="span2" for="cpf">CPF:</label> 
			</div>
			
			<div class="controls controls-row">
				<input class="span5" type="text" name="nomePessoa" id="nome" value="${pessoa.nome}" />
				<input class="span2" type="text" name="rgPessoa" id="rg" value="${pessoa.rg }" />
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
				<input class="span2" type="text" name="cpfPessoa" id="cpf" value="${pessoa.cpf }" >
			</div>
				
			<div class="controls controls-row">
				<label class="span2" for="dataNascimento">Data Nascimento:</label>
				<label class="span2" for="estadoCivil">Estado Civil:</label> 
				<label class="span2" for="cnh">CNH:</label>  
				<label class="span5" for="nomeMae"> Nome da mãe: </label>	
			</div>
			<div class="controls controls-row">
				<input class="span2" type="text" name="dataNascimentoPessoa" id="dataNascimento" value="${pessoa.dataNascimento }"/>
				<select class="span2" name="estadoCivilPessoa" id="estadoCivil">
					<option value="${pessoa.orgaoExpeditor }">${pessoa.estadoCivil}</option>
					<option value="solteiro">Solteiro(a)</option>
					<option value="casado">Casado(a)</option>
					<option value="separado">Separado(a)</option>
					<option value="divorciado">Divorciado(a)</option>
					<option value="viuvo">Viúvo(a)</option>
				</select>
				<select class="span2" name="cnhPessoa" id="cnh">
						<option value="${pessoa.cnh }">${pessoa.cnh}</option>
						<option value="">Não Possui</option>
						<option value="categoria A">Categoria A</option>
						<option value="categoria B">Categoria B</option>
						<option value="categoria C">Categoria C</option>
						<option value="categoria D">Categoria D</option>
						<option value="categoria E">Categoria E</option>
				</select>
				<input class="span5" type="text" name="nomeDaMae" id="nomeMae" value="${pessoa.nomeMae}"/>
			</div>

			<div class="controls controls-row">		
				<label class="span3"> Deficiente Fisico:</label>
			</div>
				<label  class="checkbox">
					Sim	<input class="span1" type="checkbox" name="deficienteFisicoPessoa" value="nao" /> 
				</label>
				<label  class="checkbox">
					Não <input class="span1" type="checkbox" name="deficienteFisicoPessoa" value="sim"> 
				</label>
		</fieldset>
		
		<fieldset>
			<legend>Endereço</legend>
			
			<div class="controls controls-row">	
				<label class="span4" for="logradouro"> Logradouro: </label> 
				<label class="span2" for="numero"> Numero: </label> 
				<label class="span4" for="bairro"> Bairro:</label>
				<label class="span1" for="estado"> Estado:</label> 
			</div>
			
			<div class="controls controls-row">	
				<input class="span4" type="text"name="logradouro" id="logradouro" value="${pessoa.logradouro}" />
				<input class="span2" type="text" name="numero" id="numero" value="${pessoa.numero}"/>
				<input class="span4" type="text" name="bairro" id="bairro" value="${pessoa.bairro}"/>
				<select class="span2" name="uf" id="estado">
					<option value="${pessoa.uf}">${pessoa.uf}</option>
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
			</div>
			<div class="controls controls-row">	
				<label class="span4" for="cidade"> Cidade:</label>
				<label class="span3" for="cep"> CEP:</label> 
			</div>
			<div class="controls controls-row">	
				<input class="span4" type="text"name="cidade" id="cidade" value="${pessoa.cidade}" />
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