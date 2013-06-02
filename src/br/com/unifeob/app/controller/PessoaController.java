package br.com.unifeob.app.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.DependenteDao;
import br.com.unifeob.app.dao.PessoaDao;
import br.com.unifeob.app.entidades.Dependente;
import br.com.unifeob.app.entidades.IRRF;
import br.com.unifeob.app.entidades.Pessoa;
import br.com.unifeob.app.util.Util;

@WebServlet("/PessoaController")
public class PessoaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	private PessoaDao pessoaDao;
	@Inject
	private DependenteDao dependenteDao;
	Pessoa pessoa = new Pessoa();
	Dependente dependente = new Dependente();

	
	public PessoaController() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String logica = request.getParameter("logica");
		if(logica.equals("visualizar")){
			List<Pessoa> listaDePessoas = pessoaDao.listaPessoas();
			request.setAttribute("listaDePessoas", listaDePessoas);
			request.getRequestDispatcher(("/visualizar/pessoa/index.jsp")).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String logica = request.getParameter("logica");
		
		if (logica.equals("cadastrar")) {
			String nome = request.getParameter("nomePessoa");
			String rg = request.getParameter("rgPessoa");
			String orgaoExpeditor = request.getParameter("orgaoExpeditorPessoa");
			String cpf = request.getParameter("cpfPessoa");
			String dataNascimento = request.getParameter("dataNascimentoPessoa");
			String estadoCivil = request.getParameter("estadoCivilPessoa");
			String deficienteFisico = request.getParameter("deficienteFisicoPessoa");
			String cnh = request.getParameter("cnhPessoa");
			String nomeDaMae = request.getParameter("nomeDaMae");
			String logradouro = request.getParameter("logradouro");
			Integer numero = Integer.parseInt(request.getParameter("numero"));
			String bairro = request.getParameter("bairro");
			String uf = request.getParameter("uf");
			String cidade = request.getParameter("cidade");
			String cep = request.getParameter("cep");
			
			pessoa.setNome(nome);
			pessoa.setRg(rg);
			pessoa.setOrgaoExpeditor(orgaoExpeditor);
			pessoa.setCpf(cpf);
			pessoa.setDataNascimento(new Util().converterStringParaData(dataNascimento));
			pessoa.setEstadoCivil(estadoCivil);
			pessoa.setDeficienteFisico(deficienteFisico);
			pessoa.setCnh(cnh);
			pessoa.setNomeMae(nomeDaMae);
			pessoa.setLogradouro(logradouro);
			pessoa.setNumero(numero);
			pessoa.setBairro(bairro);
			pessoa.setUf(uf);
			pessoa.setCidade(cidade);
			pessoa.setCep(cep);
			
			pessoaDao.salvar(pessoa);
			pessoa = pessoaDao.buscarPessoaCPF(cpf);
			request.setAttribute("pessoa", pessoa);
			request.getRequestDispatcher("/cadastro/dependente/index.jsp").forward(request, response);
				
		}
		if (logica.equals("alterar")) {
			String codigo = request.getParameter("codigo");
			String nome = request.getParameter("nomePessoa");
			String rg = request.getParameter("rgPessoa");
			String orgaoExpeditor = request.getParameter("orgaoExpeditorPessoa");
			String cpf = request.getParameter("cpfPessoa");
			String dataNascimento = request.getParameter("dataNascimentoPessoa");
			String estadoCivil = request.getParameter("estadoCivilPessoa");
			String deficienteFisico = request.getParameter("deficienteFisicoPessoa");
			String cnh = request.getParameter("cnhPessoa");
			String nomeDaMae = request.getParameter("nomeDaMae");
			String logradouro = request.getParameter("logradouro");
			Integer numero = Integer.parseInt(request.getParameter("numero"));
			String bairro = request.getParameter("bairro");
			String uf = request.getParameter("uf");
			String cidade = request.getParameter("cidade");
			String cep = request.getParameter("cep");
			
			pessoa.setCodigo(Long.parseLong(codigo));
			pessoa.setNome(nome);
			pessoa.setRg(rg);
			pessoa.setOrgaoExpeditor(orgaoExpeditor);
			pessoa.setCpf(cpf);
			pessoa.setDataNascimento(new Util().converterStringParaData(dataNascimento));
			pessoa.setEstadoCivil(estadoCivil);
			pessoa.setDeficienteFisico(deficienteFisico);
			pessoa.setCnh(cnh);
			pessoa.setNomeMae(nomeDaMae);
			pessoa.setLogradouro(logradouro);
			pessoa.setNumero(numero);
			pessoa.setBairro(bairro);
			pessoa.setUf(uf);
			pessoa.setCidade(cidade);
			pessoa.setCep(cep);
			
			pessoaDao.editar(pessoa);
			pessoa = pessoaDao.buscaPessoa(Long.parseLong(codigo));
			List<Dependente> listaDeDependentes = dependenteDao.listarDependenteDePessoa(pessoa); 
			request.setAttribute("pessoa", pessoa);
            request.setAttribute("dependentes", listaDeDependentes);
			request.getRequestDispatcher("/cadastro/dependente/index.jsp").forward(request, response);
				
		}
			
		if (logica.equals("deletarPessoa")) {
			Long codigo = Long.parseLong(request.getParameter("codigo"));
			pessoaDao.deletar(codigo);
			List<Pessoa> listaDePessoas = pessoaDao.listaPessoas();
			request.setAttribute("listaDePessoas", listaDePessoas);
			request.getRequestDispatcher(("/visualizar/pessoa/index.jsp")).forward(request, response);
		}
		
		if (logica.equals("visualizarDetalhes")) {
			Long codigo = Long.parseLong(request.getParameter("codigo"));
			pessoa =  pessoaDao.buscaPessoa(codigo);
			List<Dependente> dependentes = dependenteDao.listarDependenteDePessoa(pessoa);
			request.setAttribute("pessoa", pessoa);
			request.setAttribute("dependentes", dependentes);
			request.getRequestDispatcher(("/visualizar/pessoa/pessoaCompleta/index.jsp")).forward(request, response);			
		}
		
	}
}

