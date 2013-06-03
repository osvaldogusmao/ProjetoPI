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

import br.com.unifeob.app.dao.IRRFDao;
import br.com.unifeob.app.entidades.IRRF;


@WebServlet("/IRRFController")
public class IRRFController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	@Inject
	private IRRFDao dao;
   
    public IRRFController() {
  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String logica = request.getParameter("logica");
		
		if("listar".equals(logica)){
			
			List<IRRF> lista = dao.listar();
			
			request.setAttribute("lista", lista);
			RequestDispatcher rd = request.getRequestDispatcher("/visualizar/irrf/index.jsp");
			rd.forward(request, response);
			
		}
	
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String logica = request.getParameter("logica");
		
		if ("salvar".equals(logica)) {
			
			IRRF irrf = new IRRF();
			irrf.setAnoReferente(Integer.parseInt(request.getParameter("anoreferencia")));
			
			irrf.setValorFaixaUm(Float.parseFloat(request.getParameter("valorFaixaUm")));
			irrf.setValorLimiteFaixaUm(Float.parseFloat(request.getParameter("valorLimiteFaixaUm")));
			irrf.setPercentualFaixaUm(Float.parseFloat(request.getParameter("percentualFaixaUm")));
			irrf.setDeducaoFaixaUm(Float.parseFloat(request.getParameter("deducaoFaixaUm")));
			
			irrf.setValorFaixaDois(Float.parseFloat(request.getParameter("valorFaixaDois")));
			irrf.setValorLimiteFaixaDois(Float.parseFloat(request.getParameter("valorLimiteFaixaDois")));
			irrf.setPercentualFaixaDois(Float.parseFloat(request.getParameter("percentualFaixaDois")));
			irrf.setDeducaoFaixaDois(Float.parseFloat(request.getParameter("deducaoFaixaDois")));
			
			irrf.setValorFaixaTres(Float.parseFloat(request.getParameter("valorFaixaTres")));
			irrf.setValorLimiteFaixaTres(Float.parseFloat(request.getParameter("valorLimiteFaixaTres")));
			irrf.setPercentualFaixaTres(Float.parseFloat(request.getParameter("percentualFaixaTres")));
			irrf.setDeducaoFaixaTres(Float.parseFloat(request.getParameter("deducaoFaixaTres")));
			
			irrf.setValorLimiteFaixaQuatro(Float.parseFloat(request.getParameter("valorLimiteFaixaQuatro")));
			irrf.setPercentualFaixaQuatro(Float.parseFloat(request.getParameter("percentualFaixaQuatro")));
			irrf.setDeducaoFaixaQuatro(Float.parseFloat(request.getParameter("deducaoFaixaQuatro")));
			
			irrf.setDeducaoPorDependente(Float.parseFloat(request.getParameter("deducaoPorDependente")));
			
			dao.salvar(irrf);
		}
		
		if("apagar".equals(logica)){
			dao.apagar(Long.parseLong(request.getParameter("id")));
		}
		
		if("alterar".equals(logica)){
			IRRF irrf = dao.recuperarInstancia(Long.parseLong(request.getParameter("id")));
			request.setAttribute("irrf", irrf);
			RequestDispatcher rd = request.getRequestDispatcher("/alterar/irrf/index.jsp");
			rd.forward(request, response);
		}
		
		if("update".equals(logica)){
			
			IRRF irrf = new IRRF();
			
			irrf.setId(Long.parseLong(request.getParameter("id")));
			
			irrf.setAnoReferente(Integer.parseInt(request.getParameter("anoreferencia")));
			
			irrf.setValorFaixaUm(Float.parseFloat(request.getParameter("valorFaixaUm")));
			irrf.setValorLimiteFaixaUm(Float.parseFloat(request.getParameter("valorLimiteFaixaUm")));
			irrf.setPercentualFaixaUm(Float.parseFloat(request.getParameter("percentualFaixaUm")));
			irrf.setDeducaoFaixaUm(Float.parseFloat(request.getParameter("deducaoFaixaUm")));
			
			irrf.setValorFaixaDois(Float.parseFloat(request.getParameter("valorFaixaDois")));
			irrf.setValorLimiteFaixaDois(Float.parseFloat(request.getParameter("valorLimiteFaixaDois")));
			irrf.setPercentualFaixaDois(Float.parseFloat(request.getParameter("percentualFaixaDois")));
			irrf.setDeducaoFaixaDois(Float.parseFloat(request.getParameter("deducaoFaixaDois")));
			
			irrf.setValorFaixaTres(Float.parseFloat(request.getParameter("valorFaixaTres")));
			irrf.setValorLimiteFaixaTres(Float.parseFloat(request.getParameter("valorLimiteFaixaTres")));
			irrf.setPercentualFaixaTres(Float.parseFloat(request.getParameter("percentualFaixaTres")));
			irrf.setDeducaoFaixaTres(Float.parseFloat(request.getParameter("deducaoFaixaTres")));
			
			irrf.setValorLimiteFaixaQuatro(Float.parseFloat(request.getParameter("valorLimiteFaixaQuatro")));
			irrf.setPercentualFaixaQuatro(Float.parseFloat(request.getParameter("percentualFaixaQuatro")));
			irrf.setDeducaoFaixaQuatro(Float.parseFloat(request.getParameter("deducaoFaixaQuatro")));
			
			irrf.setDeducaoPorDependente(Float.parseFloat(request.getParameter("deducaoPorDependente")));
			
			dao.alterar(irrf);
			
		}
		
		
	}

}
