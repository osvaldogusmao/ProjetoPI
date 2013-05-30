package br.com.unifeob.app.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.PessoaDao;
import br.com.unifeob.app.entidades.Pessoa;
import br.com.unifeob.app.util.Util;

@WebServlet("/PessoaController")
public class PessoaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	private PessoaDao pessoaDao;
	Pessoa pessoa = new Pessoa();

	
	public PessoaController() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String logica = request.getParameter("logica");
		if (logica.equals("cadastrar")) {
			String nome = request.getParameter("nome");
			String rg = request.getParameter("rg");
			String orgaoExpeditor = request.getParameter("orgaoExpeditor");
			String cpf = request.getParameter("cpf");
			String dataNascimento = request.getParameter("dataNascimento");
			String estadoCivil = request.getParameter("estadoCivil");
			String deficienteFisico = request.getParameter("deficienteFisico");
			String cnh = request.getParameter("cnh");
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
			request.getRequestDispatcher("/dependente/index.jsp").forward(request, response);
			
		}
	}

}
