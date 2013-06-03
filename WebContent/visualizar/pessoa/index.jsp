<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="/layout/header.jsp"></c:import>
		<fieldset>
			<h1 align="center">Pessoas Cadastradas</h1>
				<table class="table table-condensed table-hover table-bordered">
					<tr>
						<th>Nome Pessoa</th>
						<th>Data de Nascimento</th>
						<th>Nome da Mãe</th>
						<th>Cidade</th>
						<th>Estado</th>			
					</tr>
				<c:forEach items="${listaDePessoas}" var="pessoa">
					<tr>
						<td>${pessoa.nome}</td>
						<td>${pessoa.dataNascimento}</td>
						<td>${pessoa.nomeMae}</td>
						<td>${pessoa.cidade}</td>
						<td>${pessoa.uf}</td>
						<td>
							<form action="${pageContext.request.contextPath}/PessoaController" method="post">
								<input type="hidden" name="logica" value="visualizarDetalhes" /> 
								<input type="hidden" name="codigo" value="${pessoa.codigo}"/>
								<input type="submit" value="Visualizar Detalhes" class="btn-mini btn btn btn-info">
							</form>
						</td>
						<td>
							<form action="${pageContext.request.contextPath}/PessoaController" method="post">
								<input type="hidden" name="logica" value="deletar" /> 
								<input type="hidden" name="codigo" value="${pessoa.codigo}"/>
								<input type="submit" value="Deletar" class="btn-mini btn btn-danger">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
				<a href="${pageContext.request.contextPath }/paginaInicial/index.jsp" class="btn pull-right">Voltar</a>
		</fieldset>	
		<c:import url="/layout/footer.jsp"></c:import>		