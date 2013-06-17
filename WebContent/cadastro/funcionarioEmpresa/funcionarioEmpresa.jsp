<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/layout/header.jsp"></c:import>
<script type="text/javascript" src="/ProjetoPI/bootstrap/js/cidades-estados-1.2-utf8.js"></script>
<script language="JavaScript" type="text/javascript" src="/ProjetoPI/bootstrap/js/MascaraValidacao.js"></script> 

  <form method="post"
    action="${pageContext.request.contextPath}/PessoaController">
    <fieldset>
          
      <legend >Cadastro de Funcionario Empresa e Cargo</legend>
      
      
      <div class="controls controls-row">
        <input class="span2" type="text" name="Funcionario" id="Funcionario"/>
        <select class="span2" name="funcionario" id="funcionario">
          <option value=" ">Selecione</option>
          <option value="Funcionario1">Ivan Simionato</option>
          <option value="Funcionario2">Larissa Machado</option>
          <option value="Funcionario3">Osvaldo Gusmão</option>
          <option value="Funcionario4">Rafael Padua</option>
          <option value="Funcionario5">Vanessa Rossi</option>
        </select>   
        <input class="span2" type="text" name="Empresa" id="Empresa"/>
        <select class="span2" name="empresa" id="empresa">
          <option value=" ">Selecione</option>
          <option value="Empresa1">Unifeob</option>
<<<<<<< HEAD
          <option>Teste</option>
=======
          <option></option>
          
>>>>>>> 8d78eca905d6a2024ce58ea471c0051f4f331e75
        </select>  
        <input class="span2" type="text" name="Cargo" id="Cargo"/>
        <select class="span2" name="cargo" id="cargo">
        <option selected value="Selecione">Selecione</option>
        <option value="Cargo">Analista de Sistemas</option>
        <option value="Cargo2">Programador</option>
        <option value="Cargo3">Gerente de Infraestrutura</option>
        <option value="Cargo4">Arquiteto de BI</option>
        <option value="Cargo5">Coordenador de Projetos</option>
        </select>  
      </div>  
      <div class="controls controls-row">
        <input type="submit" name="inserir" value="Inserir">
<input type="submit" name="alterar" value="Alterar">
<input type="submit" name="deletar" value="Deletar">
<input type="submit" name="visualizar" value="Visualizar">
      </div>
      <div class="controls controls-row">
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
      </div>

    </fieldset>
      <a href="${pageContext.request.contextPath }/paginaInicial/index.jsp" class="btn pull-right">Voltar</a>
      
  </form>
  

  
<c:import url="/layout/footer.jsp"></c:import>