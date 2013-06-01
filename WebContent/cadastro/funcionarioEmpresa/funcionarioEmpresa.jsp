<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Cadastro de Funcionario Empresa e Cargo</title>
</head>
<body>
<fieldset>
<legend align="center"><h1>Cadastro de Funcionario Empresa e Cargo</h1></legend>
<br>
<div align="center">
<label>Funcionario:</label>
<select size="1" name="Combo">
<option selected value="Selecione">Selecione</option>
<option value="Funcionario">Funcionario 1</option>
<option value="Funcionario2">Funcionario 2</option>
</select>

<label>Empresa:</label>
<select size="1" name="Combo2">
<option selected value="Selecione">Selecione</option>
<option value="Empresa">Empresa 1</option>
<option value="Empresa2">Empresa 2</option>
</select>

<label>Cargo:</label>
<select size="1" name="Combo3">
<option selected value="Selecione">Selecione</option>
<option value="Cargo">Cargo 1 </option>
<option value="Cargo2">Cargo 2</option>
</select>
<br>
</div>
&nbsp;
&nbsp;
</fieldset>
<p>
<div align="center">
<input type="submit" name="inserir" value="Inserir">
<input type="submit" name="alterar" value="Alterar">
<input type="submit" name="deletar" value="Deletar">
<input type="submit" name="visualizar" value="Visualizar">
<p>
<table align="center" width="600px" height="100px" border="1">
<thead>
<th width="320px">Funcionario</th>
<th>Empresa</th>
<th>Cargo</th>
</thead>
<tbody>
 <tr>
<th>Funcionario 1
<td>Empresa 2 
<td>Cargo 1

<tr>
<th>Funcionario 2
<td>Empresa 1
<td>Cargo 2
<tr> 
</tbody>


</table>
</div>


</body>
</html>