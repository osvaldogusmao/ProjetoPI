<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Pagina Inicial</title>
</head>
<body>
	<h1>Pagina Inicial do Sistema</h1>
		<div id="menu">
			<ul>
				<li>Cadastro
					<ul>
						<li><a href="/ProjetoPI/pessoa/index.jsp">Cadastro de Pessoa</a></li>
						<li><a href="/ProjetoPI/cadastro/pessoa/index.jsp">Cadastro de Pessoa</a></li>
						<li><a href="/ProjetoPI/cadastro/cargo/index.jsp">Cadastro de Cargo</a></li>
						<li><a href="/ProjetoPI/cadastro/empresa/index.jsp">Cadastro de Empresa</a></li>
						<li><a href="/ProjetoPI/cadastro/inss/index.jsp">Cadastro de INSS</a></li>
						<li><a href="/ProjetoPI/cadastro/irrf/index.jsp">Cadastro de IRRF</a></li>
						<li><a href="/ProjetoPI/cadastro/mes/cadastroMesVigente.jsp">Cadastro de Mês Vigente</a></li>
						<li><a href="">Cadastro de Verbas</a></li>
						<li><a href="/ProjetoPI/cadastro/funcionarioEmpresa/funcionarioEmpresa.jsp">Cadastro de Funcionário Empresa e Cargo</a></li>

					</ul>
				</li>	
				<li>Visualizar:
					<ul>
						<li><a href="/ProjetoPI/INSSController?logica=listar">Visualizar parametros INSS cadastrados</a></li>
						<li><a href="/ProjetoPI/IRRFController?logica=listar">Visualizar parametros IRRF cadastrados</a></li>
						<li><a href="/ProjetoPI/EmpresaController?logica=listar">Visualizar Empresas Cadastradas</a></li>
						<li><a href="/ProjetoPI/CargoController?logica=listar">Visualizar Cargos Cadastradas</a></li>
						<li><a href="/ProjetoPI/PessoaController?logica=visualizar">Visualizar pessoas cadastrados</a></li>
					</ul>
				</li>
				
				<li>Lançamento
					<ul>
						<li><a href="">Fazer Lançamento</a></li>
					</ul>
				</li>
				<li>Impressão
					<ul>
						<li><a href="">Impressão de Recibo de Pagamento</a></li>
						<li><a href="">Impressão da Folha de Pagamento</a></li>
					</ul>
				</li>
			</ul>
	</div>
</body>
</html>