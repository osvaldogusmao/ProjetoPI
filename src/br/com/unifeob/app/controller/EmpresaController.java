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
import br.com.unifeob.app.entidades.Estado;

@WebServlet("/EmpresaController")
public class EmpresaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private EmpresaDao dao;

	
    public EmpresaController() {
        super();
    }
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String logica = req.getParameter("logica"); 
        
        if(logica.equals("salvar")){
            
        	Empresa empresa = new Empresa();
        	empresa.setRazaoSocial(req.getParameter("razaosocial"));
        	empresa.setNomeFantasia(req.getParameter("nomefantasia"));
        	empresa.setCnpj(req.getParameter("cnpj"));
        	empresa.setInscricaoEstadual(req.getParameter("inscricaoestadual"));
        	empresa.setInscricaoMuncipa(req.getParameter("inscricaomunicipal"));
        	empresa.setLogradouro(req.getParameter("logradouro"));
        	empresa.setNumero(Integer.parseInt(req.getParameter("numero")));
        	empresa.setComplemento(req.getParameter("complemento"));
        	empresa.setBairro(req.getParameter("bairro"));
        	empresa.setCep(req.getParameter("cep"));
        	empresa.setUf(req.getParameter("uf"));
        	empresa.setCidade(req.getParameter("cidade"));
        	empresa.setTelefone1(req.getParameter("telefone1"));
        	empresa.setTelefone2(req.getParameter("telefone2"));
        	empresa.setTelefone3(req.getParameter("telefone3"));
        	empresa.setEmail(req.getParameter("email"));
        	empresa.setSite(req.getParameter("site"));
        	dao.salvar(empresa);
        }
   
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	}
}

