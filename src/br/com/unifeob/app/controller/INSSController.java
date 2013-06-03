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
		
		String logica = request.getParameter("logica");
		
		if("listar".equals(logica)){
			
			List<INSS> lista = dao.listar();
			
			request.setAttribute("lista", lista);
			RequestDispatcher dp = request.getRequestDispatcher("/visualizar/inss/index.jsp");
			dp.forward(request, response);
			
			}
		
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		String logica = request.getParameter("logica");
		
		
		if ("salvar".equals(logica)) {
			try{
			INSS inss = new INSS();
			inss.setAnoRereferente(Integer.parseInt(request.getParameter("anoreferencia")));
			
			inss.setValorFaixaUm(Float.parseFloat(request.getParameter("valorFaixaUm")));
			inss.setValorLimiteFaixaUm(Float.parseFloat(request.getParameter("valorLimiteFaixaUm")));
			inss.setPercentualFaixaUm(Float.parseFloat(request.getParameter("percentualFaixaUm")));
			
			inss.setValorFaixaDois(Float.parseFloat(request.getParameter("valorFaixaDois")));
			inss.setValorLimiteFaixaDois(Float.parseFloat(request.getParameter("valorLimiteFaixaDois")));
			inss.setPercentualFaixaDois(Float.parseFloat(request.getParameter("percentualFaixaDois")));
			
			inss.setValorFaixaTres(Float.parseFloat(request.getParameter("valorFaixaTres")));
			inss.setValorLimiteFaixaTres(Float.parseFloat(request.getParameter("valorLimiteFaixaTres")));
			inss.setPercentualFaixaTres(Float.parseFloat(request.getParameter("percentualFaixaTres")));
			
			dao.salvar(inss);
			
			request.setAttribute("sucesso", "INSS cadastrado com sucesso!");
			RequestDispatcher dp = request.getRequestDispatcher("/sucesso/index.jsp");
			dp.forward(request, response);
			
			}catch(Exception ex){
			request.setAttribute("erro", ex);
			RequestDispatcher dp = request.getRequestDispatcher("/erro/erro.jsp");
			dp.forward(request, response);
			}
		}
		
		if("listar".equals(logica)){
			
		List<INSS> lista = dao.listar();
		
		request.setAttribute("lista", lista);
		RequestDispatcher dp = request.getRequestDispatcher("/visualizar/inss/index.jsp");
		dp.forward(request, response);
		
		}
		
		if("apagar".equals(logica)){
			try{
			dao.apagar(Long.parseLong(request.getParameter("id")));
			
			request.setAttribute("sucesso", "INSS removido com sucesso!");
			RequestDispatcher dp = request.getRequestDispatcher("/sucesso/index.jsp");
			dp.forward(request, response);
			
			}catch(Exception ex){
				request.setAttribute("erro", ex);
				RequestDispatcher dp = request.getRequestDispatcher("/erro/erro.jsp");
				dp.forward(request, response);
			}
		}
		
		if("alterar".equals(logica)){
			INSS inss = dao.recuperarInstancia(Long.parseLong(request.getParameter("id")));
			request.setAttribute("inss", inss);
			RequestDispatcher rd = request.getRequestDispatcher("/alterar/inss/index.jsp");
			rd.forward(request, response);
		}
		
		if("update".equals(logica)){
			
			try{
			INSS inss = new INSS();
			
			inss.setId(Long.parseLong(request.getParameter("id")));
			
			inss.setAnoRereferente(Integer.parseInt(request.getParameter("anoreferencia")));
			
			inss.setValorFaixaUm(Float.parseFloat(request.getParameter("valorFaixaUm")));
			inss.setValorLimiteFaixaUm(Float.parseFloat(request.getParameter("valorLimiteFaixaUm")));
			inss.setPercentualFaixaUm(Float.parseFloat(request.getParameter("percentualFaixaUm")));
			
			inss.setValorFaixaDois(Float.parseFloat(request.getParameter("valorFaixaDois")));
			inss.setValorLimiteFaixaDois(Float.parseFloat(request.getParameter("valorLimiteFaixaDois")));
			inss.setPercentualFaixaDois(Float.parseFloat(request.getParameter("percentualFaixaDois")));
			
			inss.setValorFaixaTres(Float.parseFloat(request.getParameter("valorFaixaTres")));
			inss.setValorLimiteFaixaTres(Float.parseFloat(request.getParameter("valorLimiteFaixaTres")));
			inss.setPercentualFaixaTres(Float.parseFloat(request.getParameter("percentualFaixaTres")));
			
			dao.alterar(inss);
			
			request.setAttribute("sucesso", "INSS alterado com sucesso!");
			RequestDispatcher dp = request.getRequestDispatcher("/sucesso/index.jsp");
			dp.forward(request, response);
			
			}catch(Exception ex){
				request.setAttribute("erro", ex);
				RequestDispatcher dp = request.getRequestDispatcher("/erro/erro.jsp");
				dp.forward(request, response);
			}
			
		}
		
	}
}
