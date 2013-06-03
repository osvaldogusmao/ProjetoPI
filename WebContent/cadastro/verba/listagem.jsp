<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/layout/header.jsp"></c:import>
	
	<table class="table table-condensed table-hover table-bordered">
	<thead>
		<tr>
			<th>Descrição</th>
			<th>Tipo de verba</th>
			<th style="width: 100px; text-align: center;">Ação</th>
		</tr>
	</thead>
		<tbody>
			<c:forEach items="${verbas }" var="verba">
			<tr>
				<td>${verba.descricao }</td>
				<td>${verba.tipoVerba.descricao }</td>
				<td id="${verba.id}">
					<a href="${pageContext.request.contextPath }/cadastro/verba?edita&id=${verba.id}" class="btn btn-link"><i class="icon-edit"></i></a>
					<a href="#modalDeletaRegistro" class="delete btn btn-link" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="${pageContext.request.contextPath }/cadastro/verba?novo" class="btn btn-info">Nova Verba</a>

	<div id="modalDeletaRegistro" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">Atenção</h3>
		</div>
		<div class="modal-body">
			<p>Você realmente deseja deletar este registro?</p>
			<form action="${pageContext.request.contextPath }/cadastro/verba?deleta" method="post" id="frmDeletaRegistro">
				<input type="hidden" name="verba_id" id="verba_id">
		</div>
		<div class="modal-footer">
				<button type="submit" class="btn btn-danger">Sim</button>
			</form>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
	  </div>



<script type="text/javascript">

$(document).ready(function(){
	
	window.setTimeout(function(){
		$('.alert').fadeOut('middle');
	},2000);
	
	$('.delete').click(function(){
		$('#verba_id').val($(this).parent().attr('id'));
	});
	
	
});

</script>

<c:import url="/layout/footer.jsp"></c:import>