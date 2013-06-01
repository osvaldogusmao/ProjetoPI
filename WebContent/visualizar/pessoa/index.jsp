<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css" />
<title>Pessoa</title>
</head>
<body>
		<fieldset class="cadastros">
			<legend>Pessoas Cadastradas</legend>
				<table class="table table-bordered">
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
								<input type="submit" value="Visualizar Detalhes" class="btn btn-info btn btn-mini">
							</form>
							
						</td>
						<td>
							<form action="${pageContext.request.contextPath}/PessoaController" method="post">
								<input type="hidden" name="logica" value="deletarPessoa" /> 
								<input type="hidden" name="codigo" value="${pessoa.codigo}"/>
								<input type="submit" value="Deletar" class="btn btn-danger btn btn-mini">
							</form>
						</td>
						<td>
							<form action="${pageContext.request.contextPath}/PessoaController" method="post">
								<input type="hidden" name="logica" value="alterarPessoa" /> 
								<input type="submit" value="Alterar" class="btn btn-primary btn btn-mini">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
				<br>
				<br>
			<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
		</fieldset>			
</body>
</html>