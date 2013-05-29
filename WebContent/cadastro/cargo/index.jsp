<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script>  
    function habilita(campo, idCampo) {  
        document.getElementById(idCampo).disabled = campo.checked;  
    }  
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Cadastro de Cargos</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/CargosController" method="post">
		<fieldset>
			<legend>
			Cadastro de Cargo:
			</legend>
			
			<label>Descrição:</label>
			<input type="text" name="descricao" size="50">
			
			<label>Insalubridade:</label>
			<input type="checkbox" onclick="javascript: habilita(this, 'campo');" /> 
			<input type="text" id="campo"/> 
			
			
			<label>Periculosidade:</label>
			<input type="checkbox" name="periculosidade">
			<input type="text" name="porcentagempericulosidade">
			
		</fieldset>
	</form>
</body>
</html>