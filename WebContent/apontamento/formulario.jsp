<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/layout/header.jsp"></c:import>
	
	<form method="post" action="${pageContext.request.contextPath }/apontamento?salva" id="frmNovoApontamento">	
		<fieldset>
			<legend>Apontamentos</legend>
			<label>Referência</label>
			<input type="text" name="apontamento_referencia" id="apontamento_referencia" class="span2" data-mask="99/9999">
			<blockquote>
				<p>Empresa</p>
			</blockquote>
			<div class="controls controls-row">
				<label class="label-span1">Código</label>
				<label class="label-span3">Descrição</label>
			</div>
			
			<div class="controls controls-row">
				<input type="hidden" name="empresa_id" id="empresa_id">
				<span id="empresa_id_span" class="uneditable-input span1"></span>
				<span id="empresa_descricao" class="uneditable-input span4"></span>
				&nbsp;
				<a href="#modalPesquisaEmpresa" role="button" data-toggle="modal" class="btn btn-inverse"><i class="icon-search icon-white"></i></a>
			</div>
			
			<blockquote>
				<p>Funcionário</p>
			</blockquote>
			<div class="controls controls-row">
				<label class="label-span1">Código</label>
				<label class="label-span5">Descrição</label>
				<label class="label-span2">Salário</label>
			</div>
			<div class="controls controls-row">
				<input type="text" name="funcionario_id" id="funcionario_id" class="span1">
				<input type="text" name="funcionario_nome" id="funcionario_nome" class="span5" placeholder="Digite parte do nome do funcionário">
				<span id="funcionario_salario" class="uneditable-input span2"></span>
			</div>
			
			<div class="controls controls-row">
				<button type="button" class="btn btn-primary label-span2" id="btnSalvarApontamento">Salvar</button>
			</div>
		</fieldset>
	</form>
	
		<br/>
		<!--  style="display: none;"  -->
		<div  id="dvCadastroVerba">
			<form method="post" action="${pageContext.request.contextPath }/apontamento?adicionaVerba" id=frmNovaVerbaApontamento">
				<blockquote>
					<p>Verbas</p>
				</blockquote>
				<div class="controls controls-row">
					<label class="label-span1">Código</label>
					<label class="label-span4">Descrição</label>
					<label class="label-span1" style="margin-left: 75px;">Qtd</label>
				</div>
				
				<div class="controls controls-row">
					<input type="hidden" id="verba_id" name="verba_id" >
					<span id="verba_id_span" class="uneditable-input span1"></span>
					<span id="verba_descricao" class="uneditable-input span4"></span>
					<a href="#modalPesquisaVerba" role="button" class="btn btn-inverse span1" data-toggle="modal"><i class="icon-search  icon-white"></i></a>
					<input type="text" id="apontamento_qtd" name="apontamento_qtd" class="span1">
					&nbsp;&nbsp;
					<button type="button" class="btn btn-success" id="btnAdicionaVerba"><i class="icon-plus icon-white"></i></button>
				</div>
			</form>
			<hr />
			
			<i class="icon-"></i>
			
			<table class="table table-condensed table-bordered table-hover" id="tbVerbas">
				<thead>
					<tr>
						<th width="10%">Código</th>
						<th width="60%">Descrição</th>
						<th width="10%" style="text-align: center;">Quantidade</th>
						<th width="10%" style="text-align: center;">#</th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div>
	
<!-- Modal Pesquisa Empresa -->
<div id="modalPesquisaEmpresa" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Pesquisa de Empresa</h3>
	</div>
	<div class="modal-body">
		<table class="table table-condensed table-bordered table-hover" id="tbEmpresas">
			<thead>
				<tr>
					<th width="10%">Código</th>
					<th width="60%">Empresa</th>
					<th width="30%">CNPJ</th>
				</tr>
			</thead>
			<tbody style="cursor: pointer;">
				<c:if test="${empresas.size() < 0 || empresas == null }">
					<tr>
						<td colspan="3" style="text-align: center;"><strong>Não há empresas cadastradas!</strong></td>
					</tr>
				</c:if>
				<c:forEach items="${empresas }" var="empresa">
				<tr id="${empresa.id }">
					<td>${empresa.id }</td>
					<td>${empresa.nomeFantasia }</td>
					<td>${empresa.cnpj }</td>
				</tr>
				</c:forEach>
				<tr id="15">
					<td>15</td>
					<td>Empresa Teste</td>
					<td>11.111.111/0001-01</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
		<button class="btn btn-info" id="btnSelecionaEmpresa">Selecionar</button>
	</div>
</div>
<!-- Fim Modal Pesquisa Empresa -->

<!-- Modal Pesquisa Verba -->
<div id="modalPesquisaVerba" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Pesquisa de Verbas</h3>
	</div>
	<div class="modal-body">
		<table class="table table-condensed table-bordered table-hover" id="tbVerbas">
			<thead>
				<tr>
					<th width="10%">Código</th>
					<th width="70%">Descrição</th>
					<th width="20%">Tipo de Verba</th>
				</tr>
			</thead>
			<tbody style="cursor: pointer;">
				<c:if test="${verbas.size() < 0 || verbas == null }">
					<tr>
						<td colspan="3" style="text-align: center;"><strong>Não há verbas cadastradas!</strong></td>
					</tr>
				</c:if>
				<c:forEach items="${verbas }" var="verba">
				<tr id="${verba.id}" name="${verba.tipoValor }">
					<td>${verba.id }</td>
					<td>${verba.descricao }</td>
					<td>${verba.tipoVerba }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
		<button class="btn btn-info" id="btnSelecionaVerba">Selecionar</button>
	</div>
</div>
<!-- Fim Modal Pesquisa Verbas -->
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap-inputmask.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/custom/apontamento.js"></script>

<c:import url="/layout/footer.jsp"></c:import>