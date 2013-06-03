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

import br.com.unifeob.app.dao.MesVigenteDao;
import br.com.unifeob.app.entidades.MesVigente;

@WebServlet("/MesVigenteController")
public class MesVigenteController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private MesVigenteDao dao;

	public MesVigenteController() {

	}


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		String logica = request.getParameter("logica");
		
		
		if ("salvar".equals(logica)) {
			MesVigente mesvigente = new MesVigente();
			mesvigente.setId(Integer.parseInt(request.getParameter("IdMes")));
			mesvigente.setMes(request.getParameter("Mes").toString());
			mesvigente.setAno(Integer.parseInt(request.getParameter("Ano")));
			mesvigente.setDiasUteis(Integer.parseInt(request.getParameter("DiasUteis")));
			mesvigente.setDiasNaoUteis(Integer.parseInt(request.getParameter("DiasNaoUteis")));
			dao.salvar(mesvigente);
		}
		
	}
}
