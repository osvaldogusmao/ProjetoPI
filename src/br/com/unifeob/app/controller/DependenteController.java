package br.com.unifeob.app.controller;

import java.io.IOException;

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
			request.getRequestDispatcher("/dependente/index.jsp").forward(request, response);
			
			
		}
		
	}

}
