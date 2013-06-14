<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/layout/header.jsp"></c:import>

<div style=" margin: 0 auto; padding-left: 60px;">
	<form action="${pageContext.request.contextPath}/CargoController" method="post">
	
		<h1 align="center">Cadastro de Cargos</h1>
		
		<fieldset>
			
			<div class="controls controls-row">
				<label class="span2" for="des">Descrição:</label>
			</div>
			
			<div class="controls controls-row">
				<input class="span10" type="text" name="descricao" id="des">
			</div>
			
			<br>
			
			<div class="controls controls-row">
				<label class="span2" for="ins"> Insalubridade:</label>
				<input class="span0" type="checkbox" id="chinsalu"/>
				<label class="span2" id="porcinsalu">Porcentagem:</label>
				<input class="span3" type="text" id="txtinsalu" name="txtinsalibridade" />
			</div>
			
			<br>
			
			<div class="controls controls-row">
				<label class="span2" for="per">Periculosidade:</label>
				<input class="span0" type="checkbox" id="chperic">
				<label class="span2" id="porcperic">Porcentagem:</label>
				<input class="span3" type="text" id="txtperic" name="txtpericulosidade"/>
			</div>
			
			<br>

				<input type="hidden" name="logica" value="salvar">
				<input type="submit" value="Salvar" class="btn btn-primary">
				
		</fieldset>
	</form>
</div>

<script type="text/javascript">

$(document).ready(function(){
	
	$("#txtinsalu").hide();
	$("#porcinsalu").hide();

	$("#chinsalu").click(function(){
		if($("#chinsalu").is(":checked")){
			$("#porcinsalu").fadeIn('middle');
			$("#txtinsalu").fadeIn('middle');	
		}else{
			$("#porcinsalu").fadeOut('middle');
			$("#txtinsalu").fadeOut('middle');
		}
		
	});	
	
	$("#txtperic").hide();
	$("#porcperic").hide();
	
	$("#chperic").click(function(){
		if($("#chperic").is(":checked")){
			$("#porcperic").fadeIn("middle");
			$("#txtperic").fadeIn("middle");
		}else{
			$("#porcperic").fadeOut("middle");
			$("#txtperic").fadeOut("middle");
		}
	});
});
</script>

<c:import url="/layout/footer.jsp"></c:import>