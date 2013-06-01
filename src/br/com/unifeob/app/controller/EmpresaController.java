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
import br.com.unifeob.app.dao.EmpresaDao;
import br.com.unifeob.app.entidades.Empresa;

@WebServlet("/EmpresaController")
public class EmpresaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private EmpresaDao dao;

	
    public EmpresaController() {
        super();
    }
    
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String logica = request.getParameter("logica");
		
		if(logica.equals("listar")){
        	List<Empresa> listaEmpresas = dao.listarEmpresas();
        	
        	
        	
        	request.setAttribute("lista", listaEmpresas);
        	RequestDispatcher dispatcher = request.getRequestDispatcher("/visualizar/empresa/index.jsp");
        	dispatcher.forward(request, response);
        }
		
	}
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String logica = request.getParameter("logica"); 
        
        if(logica.equals("salvar")){
            
        	Empresa empresa = new Empresa();
        	empresa.setRazaoSocial(request.getParameter("razaosocial"));
        	empresa.setNomeFantasia(request.getParameter("nomefantasia"));
        	empresa.setCnpj(request.getParameter("cnpj"));
        	empresa.setInscricaoEstadual(request.getParameter("inscricaoestadual"));
        	empresa.setInscricaoMuncipal(request.getParameter("inscricaomunicipal"));
        	empresa.setLogradouro(request.getParameter("logradouro"));
        	empresa.setNumero(Integer.parseInt(request.getParameter("numero")));
        	empresa.setComplemento(request.getParameter("complemento"));
        	empresa.setBairro(request.getParameter("bairro"));
        	empresa.setCep(request.getParameter("cep"));
        	empresa.setUf(request.getParameter("uf"));
        	empresa.setCidade(request.getParameter("cidade"));
        	empresa.setTelefone1(request.getParameter("telefone1"));
        	empresa.setTelefone2(request.getParameter("telefone2"));
        	empresa.setTelefone3(request.getParameter("telefone3"));
        	empresa.setEmail(request.getParameter("email"));
        	empresa.setSite(request.getParameter("site"));
        	dao.salvar(empresa);
        	
        	request.setAttribute("sucesso", "");
            RequestDispatcher dispacher = request.getRequestDispatcher("/sucesso/index.jsp");
            dispacher.forward(request, response);
        }
	}
}

