<div class="navbar">
	<div class="navbar-inner">
		<a class="brand" href="#">OPEBUS</a>
		<ul class="nav">
			<li>
				<a href="${pageContext.request.contextPath }">Home</a>
			</li>
			<li class="divider-vertical"></li>
			<ul class="nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						Cadastro <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/pessoa/index.jsp">Pessoa</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/empresa/index.jsp">Empresa</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/cargo/index.jsp">Cargo</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/inss/index.jsp">INSS</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/irrf/index.jsp">IRRF</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/mes/cadastroMesVigente.jsp">Mês Vigente</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/verba">Verbas</a>
							<a href="${pageContext.request.contextPath }/cadastro/cargo">Cargos</a>
							<a href="${pageContext.request.contextPath }/cadastro/empresa">Empresa</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/cadastro/funcionarioEmpresa/funcionarioEmpresa.jsp">Funcionário Empresa e Cargo</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						Visualizar <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="/ProjetoPI/PessoaController?logica=visualizar">Pessoas</a>
						</li>	
						<li>
							<a href="/ProjetoPI/EmpresaController?logica=listar">Empresas</a>
						</li>
						<li>
							<a href="/ProjetoPI/CargoController?logica=listar">Cargos</a>
						</li>
						<li>
							<a href="/ProjetoPI/INSSController?logica=listar">INSS</a>
						</li>
						<li>
							<a href="/ProjetoPI/IRRFController?logica=listar">IRRF</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						Lançamento <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="">Fazer Lançamento</a>
						</li>
					</ul>
				</li>
			<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						Impressão <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="">Recibo de Pagamento</a>
						</li>
						<li>
							<a href="">Folha de Pagamento</a>
						</li>
					</ul>
				</li>
			</ul>
		</ul>
	</div>
</div>
