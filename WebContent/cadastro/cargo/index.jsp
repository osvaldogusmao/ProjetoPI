<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>
<title>Cadastro de Cargos</title>
<script> 

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
</head>
<body>

	<form action="${pageContext.request.contextPath}/CargoController" method="post">
	
		<fieldset>
			<legend>
			Cadastro de Cargo:
			</legend>
			
			<label>Descrição:</label>
			<input type="text" name="descricao" size="50">
			
			<label>Insalubridade:</label>
			<input type="checkbox" id="chinsalu"/><br>
			<label id="porcinsalu">Porcentagem:</label>
			<input type="text" id="txtinsalu" name="txtinsalibridade"/>
			 
			<label>Periculosidade:</label>
			<input type="checkbox" id="chperic"><br>
			<label id="porcperic">Porcentagem:</label>
			<input type="text" id="txtperic" name="txtpericulosidade">
			<br>
			<input type="hidden" name="logica" value="salvar">
			<input type="submit" value="Salvar" class="btn btn-primary">
		</fieldset>
	</form>
</body>
</html>