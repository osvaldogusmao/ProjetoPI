package br.com.unifeob.app.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.EmpresaDao;
import br.com.unifeob.app.dao.FuncionarioEmpresaDao;
import br.com.unifeob.app.dao.VerbaDao;
import br.com.unifeob.app.entidades.Empresa;
import br.com.unifeob.app.entidades.Verba;

@WebServlet("/apontamento")
public class ApontamentoController extends HttpServlet {

	/**
	 * Serial Version
	 * 
	 * */
	private static final long serialVersionUID = 1L;

	/**
	 * Constantes
	 * */
	private String LISTA = "/apontamento/listagem.jsp";
	private String FORMULARIO = "/apontamento/formulario.jsp";

	/**
	 * @Inject
	 * */
	@Inject
	private VerbaDao verbaDao;

	@Inject
	private EmpresaDao empresaDao;

	@Inject
	private FuncionarioEmpresaDao funcionarioEmpresaDao;

	/**
	 * Variaveis da classe
	 * */
	private HttpServletRequest request;
	private HttpServletResponse response;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.request = req;
		this.response = resp;
		
		Map<String, String[]> parametros = request.getParameterMap();

		if (parametros.size() == 0) {
			lista();
		}
		
		if(parametros.containsKey("novo")){
			novo();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.request = req;
		this.response = resp;

		Map<String, String[]> parametros = request.getParameterMap();

		if (parametros.size() == 0) {
			lista();
		}
	}

	/**
	 * MŽtodos privados
	 * */

	private void lista() {
		dispatcher(LISTA);
	}

	private void novo() {
		List<Verba> verbas = verbaDao.lista();
		List<Empresa> empresas = empresaDao.listarEmpresas();
		
		this.request.setAttribute("verbas", verbas);
		this.request.setAttribute("empresas", empresas);

		dispatcher(FORMULARIO);
	}
	
	/**
	 * MŽtodos responsavel em fazer o dispacher da p‡gina
	 * 
	 * */
	private void dispatcher(String dispather) {

		RequestDispatcher view = request.getRequestDispatcher(dispather);
		try {
			view.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
