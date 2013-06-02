package br.com.unifeob.app.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.DependenteDao;
import br.com.unifeob.app.dao.PessoaDao;
import br.com.unifeob.app.entidades.Dependente;
import br.com.unifeob.app.entidades.Pessoa;
import br.com.unifeob.app.util.Util;



@WebServlet("/DependenteController")
public class DependenteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	@Inject
	DependenteDao dependenteDao;
	
	@Inject
	PessoaDao pessoaDao;
	
	Pessoa pessoa = new Pessoa();
	Dependente dependente = new Dependente();
	
    public DependenteController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String logica = request.getParameter("logica");
		 String cpfPessoa = request.getParameter("cpfPessoa");
		 
		if (logica.equals("adicionar")) {
			pessoa = pessoaDao.buscarPessoaCPF(cpfPessoa);
			String nome = request.getParameter("nomeDependente");
			String rg = request.getParameter("rgDependente");
			String orgaoExpeditor = request.getParameter("orgaoExpeditorDependente");
			String cpf = request.getParameter("cpfDependente");
			String dataNascimento = request.getParameter("dataNascimentoDependente");
			
			dependente.setNome(nome);
			dependente.setDataNascimento(new Util().converterStringParaData(dataNascimento));
			dependente.setRg(rg);
			dependente.setOrgaoExpeditor(orgaoExpeditor);
			dependente.setCpf(cpf);
			dependente.setPessoa(pessoa);
			
			dependenteDao.salvar(dependente);
			pessoa = pessoaDao.buscarPessoaCPF(cpfPessoa);
			List<Dependente> listaDeDependentes = dependenteDao.listarDependenteDePessoa(pessoa); 
			request.setAttribute("pessoa", pessoa);
            request.setAttribute("dependentes", listaDeDependentes);
			request.getRequestDispatcher("/cadastro/dependente/index.jsp").forward(request, response);
		}
		if (logica.equals("deletarDependente")) {
			Long codigo = Long.parseLong(request.getParameter("codigoDependente"));
			Long codigoPessoa = Long.parseLong(request.getParameter("codigoPessoa"));
			dependenteDao.deletar(codigo);
			pessoa =  pessoaDao.buscaPessoa(codigoPessoa);
			List<Dependente> dependentes = dependenteDao.listarDependenteDePessoa(pessoa);
			request.setAttribute("pessoa", pessoa);
			request.setAttribute("dependentes", dependentes);
			request.getRequestDispatcher(("/visualizar/pessoa/pessoaCompleta/index.jsp")).forward(request, response);	
		}
		if (logica.equals("visualizarDetalhesDependente")) {	
			Long codigo = Long.parseLong(request.getParameter("codigoDependente"));
			 Long codigoPessoa = Long.parseLong(request.getParameter("codigoPessoa"));
			pessoa = pessoaDao.buscaPessoa(codigoPessoa);
			dependente = dependenteDao.buscaDependente(codigo);
			List<Dependente> listaDeDependentes = dependenteDao.listarDependenteDePessoa(pessoa); 
			request.setAttribute("pessoa", pessoa);
			request.setAttribute("dependente", dependente);
			request.setAttribute("dependentes", listaDeDependentes);
			request.getRequestDispatcher("/visualizar/dependente/index.jsp").forward(request, response);
		}
		if (logica.equals("editar")) {
			Long codigo = Long.parseLong(request.getParameter("codigoDependente"));
			Long codigoPessoa = Long.parseLong(request.getParameter("codigoPessoa"));
			 
			pessoa = pessoaDao.buscaPessoa(codigoPessoa);
			String nome = request.getParameter("nomeDependente");
			String rg = request.getParameter("rgDependente");
			String orgaoExpeditor = request.getParameter("orgaoExpeditorDependente");
			String cpf = request.getParameter("cpfDependente");
			String dataNascimento = request.getParameter("dataNascimentoDependente");
			
			dependente.setCodigo(codigo);
			dependente.setNome(nome);
			dependente.setDataNascimento(new Util().converterStringParaData(dataNascimento));
			dependente.setRg(rg);
			dependente.setOrgaoExpeditor(orgaoExpeditor);
			dependente.setCpf(cpf);
			dependente.setPessoa(pessoa);
			
			dependenteDao.editar(dependente);
			
			List<Dependente> listaDeDependentes = dependenteDao.listarDependenteDePessoa(pessoa); 
			request.setAttribute("pessoa", pessoa);
            request.setAttribute("dependentes", listaDeDependentes);
			request.getRequestDispatcher("/visualizar/dependente/index.jsp").forward(request, response);
			
			
		}
	}

}
