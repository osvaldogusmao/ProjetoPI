package br.com.unifeob.app.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.FuncionarioEmpresaDao;
import br.com.unifeob.app.entidades.FuncionarioEmpresa;

@WebServlet("/FuncionarioEmpresaController")
public class FuncionarioEmpresaController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private FuncionarioEmpresaDao dao;

	public FuncionarioEmpresaController() {

	}


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		String logica = request.getParameter("logica");
		
		
		if ("salvar".equals(logica)) {
			FuncionarioEmpresa funcempresa = new FuncionarioEmpresa();
			funcempresa.setIdFuncionario(Integer.parseInt(request.getParameter("IdFuncionario")));
			funcempresa.setIdEmpresa(Integer.parseInt(request.getParameter("IdEmpresa")));
			funcempresa.setIdCargo(Integer.parseInt(request.getParameter("IdCargo")));
			
			dao.salvar(funcempresa);
		}
		
	}
}
