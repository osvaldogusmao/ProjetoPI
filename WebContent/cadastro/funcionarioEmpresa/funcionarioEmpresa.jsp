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
<option value="Funcionario2">Ivan Simionato</option>
<option value="Funcionario">Larissa Machado</option>
<option value="Funcionario2">Osvaldo Gusmão</option>
<option value="Funcionario2">Rafael Padua</option>
<option value="Funcionario2">Vanessa Rossi</option>
</select>

<label>Empresa:</label>
<select size="1" name="Combo2">
<option selected value="Selecione">Selecione</option>
<option value="Empresa">Unifeob</option>
<option value="Empresa2">Microsoft</option>
</select>

<label>Cargo:</label>
<select size="1" name="Combo3">
<option selected value="Selecione">Selecione</option>
<option value="Cargo">Analista de Sistemas</option>
<option value="Cargo2">Programador</option>
<option value="Cargo2">Gerente de Infraestrutura</option>
<option value="Cargo2">Arquiteto de BI</option>
<option value="Cargo2">Coordenador de Projetos</option>
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
<th>Ivan Simionato
<td>Unifeob
<td>Analista de Sistemas

<tr>
<th>Larissa Machado
<td>Microsoft
<td>Arquiteto de BI
<tr> 

<tr>
<th>Osvaldo Gusmão
<td>Unifeob
<td>Coordenado de Projetos
<tr> 

<tr>
<th>Rafael Padua
<td>Unifeob
<td>Programador
<tr> 

<tr>
<th>Vanessa Rossi
<td>Microsoft
<td>Gerente de Infraestrutura
<tr> 



</tbody>


</table>
<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
</div>


</body>
</html>