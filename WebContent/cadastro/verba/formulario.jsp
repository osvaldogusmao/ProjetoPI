<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/layout/header.jsp"></c:import>

	<div class="alert alert-error alert-block" style='<c:if test="${msg == null }">display:none;</c:if>'>
	  <button type="button" class="close" data-dismiss="alert">&times;</button>
	  <h4>Erro!</h4>
	  Houve um erro ao tentar salvar o registro. <br/>
	  Verifique os dados e tente salva-lo novamente.
	</div>
	
	<legend>Cadastro de Verbas</legend>
	<form action="${pageContext.request.contextPath }/cadastro/verba?salva" method="post">
	
		<div class="controls controls-row">
			<label class="label-span1">Código</label>
			<label class="label-span4">Descrição</label>
		</div>
		
		<div class="controls controls-row">
			<input type="hidden" name="verba_id" id="verba_id" value='<c:if test="${verba != null }">${verba.id }</c:if>'>
			<input type="text" class="span1" value='<c:if test="${verba != null }">${verba.id }</c:if>' disabled>
			<input type="text" name="verba_descricao" id="verba_descricao" class="span4" value='<c:if test="${verba != null }">${verba.descricao }</c:if>'>
		</div>
		
		<div class="controls controls-row">
			<label class="label-span2">Tipo de Verba</label>
		</div>
		
		<label class="radio">
			<input type="radio" name="verba_tipoVerba" id="verba_tipoVerba" value='${tipoVerbas[0]}' <c:if test="${verba != null && verba.tipoVerba == tipoVerbas[0] }">checked</c:if> > ${tipoVerbas[0].descricao}
		</label>
		<label class="radio">
			<input type="radio" name="verba_tipoVerba" id="verba_tipoVerba" value='${tipoVerbas[1]}' <c:if test="${verba != null && verba.tipoVerba == tipoVerbas[1] }">checked</c:if> > ${tipoVerbas[1].descricao}
		</label>
		
		<div class="controls controls-row">
			<label class="label-span2">Tipo de Cálculo</label>
		</div>
		
		<div class="controls controls-row">
			<label class="radio label-span1">
				<input type="radio" name="verba_tipoValor" id="verba_tipoValor_0" value='${tipoValores[0]}' <c:if test="${verba != null && verba.tipoValor == tipoValores[0] }">checked</c:if> > ${tipoValores[0].descricao}
			</label>
			<input type="text" name="verba_valorPercentual" id="verba_valorPercentual" class="span2" value='<c:if test="${verba != null }">${verba.valorPercentualFormatado}</c:if>' placeholder="Quantos %" <c:if test="${verba == null || verba.tipoValor != tipoValores[0] }">style="display: none;"</c:if>>
			<br/><br/>
			<label class="radio">
				<input type="radio" name="verba_tipoValor" id="verba_tipoValor_1" value='${tipoValores[1]}' <c:if test="${verba != null && verba.tipoValor == tipoValores[1] }">checked</c:if> > ${tipoValores[1].descricao}
			</label>
		</div> 
	
		<div class="controls controls-row">
			<label class="label-span2">Incide em :</label>
		</div>

		<label class="checkbox">
			<input type="checkbox" name="verba_incideINSS" id="verba_incideINSS" value='true' <c:if test="${verba != null && verba.incideINSS }">checked</c:if> > INSS
		</label>
		<label class="checkbox">
			<input type="checkbox" name="verba_incideIRRF" id="verba_incideIRRF" value='true' <c:if test="${verba != null && verba.incideIRRF }">checked</c:if> > IRRF
		</label> 

		<div class="form-actions">
			<a href="${pageContext.request.contextPath }/cadastro/verba" class="btn pull-right">Voltar</a>
			<input type="submit" class="btn btn-success" value="Salvar">
		</div>

	</form>
	
	<script>
		$('#verba_tipoValor_0').click(function(){
			$('#verba_valorPercentual').fadeIn('fast');	
		});
		
		$('#verba_tipoValor_1').click(function(){
			$('#verba_valorPercentual').fadeOut('fast');	
		});

	</script>

<c:import url="/layout/footer.jsp"></c:import>