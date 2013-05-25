package br.com.unifeob.app.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.INSSDao;
import br.com.unifeob.app.entidades.INSS;

@WebServlet("/INSSController")
public class INSSController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private INSSDao dao;

	public INSSController() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		String logica = request.getParameter("logica");
		
		
		if ("salvar".equals(logica)) {
			INSS inss = new INSS();
			inss.setAnoRereferente(Integer.parseInt(request.getParameter("anoreferencia")));
			
			inss.setValorLimiteFaixaUm(Float.parseFloat(request.getParameter("valorLimiteFaixaUm")));
			inss.setPercentualFaixaUm(Float.parseFloat(request.getParameter("percentualFaixaUm")));
			
			inss.setValorLimiteFaixaDois(Float.parseFloat(request.getParameter("valorLimiteFaixaDois")));
			inss.setPercentualFaixaDois(Float.parseFloat(request.getParameter("percentualFaixaDois")));
			
			inss.setValorLimiteFaixaTres(Float.parseFloat(request.getParameter("valorLimiteFaixaTres")));
			inss.setPercentualFaixaTres(Float.parseFloat(request.getParameter("percentualFaixaTres")));
			
			dao.salvar(inss);
		}
		
		
	}

}
