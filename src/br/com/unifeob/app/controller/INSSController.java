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
		INSS inss = new INSS();
		inss.setAnoRereferente(2014);
		inss.setPercentualFaixaDois(41f);
		inss.setPercentualFaixaTres(12f);
		inss.setPercentualFaixaUm(23f);
		inss.setValorLimiteFaixaDois(3412423f);
		inss.setValorLimiteFaixaTres(6666353f);
		inss.setValorLimiteFaixaUm(999f);
		dao.salvar(inss);
	}

}
