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
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	INSS inss = new INSS();
	inss.setAnoRereferente(2012);
	inss.setPercentualFaixaDois(4f);
	inss.setPercentualFaixaTres(1f);
	inss.setPercentualFaixaUm(2f);
	inss.setValorLimiteFaixaDois(342423f);
	inss.setValorLimiteFaixaTres(545353f);
	inss.setValorLimiteFaixaUm(42343f);
	dao.salvar(inss);
	}

}
