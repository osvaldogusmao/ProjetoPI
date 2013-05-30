package br.com.unifeob.app.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.CargoDao;
import br.com.unifeob.app.entidades.Cargo;

@WebServlet("/CargoController")
public class CargoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private CargoDao dao;

    public CargoController() {
    super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String logica = request.getParameter("logica");
		
		if(logica.equals("salvar")){
			Cargo cargo = new Cargo();
			cargo.setNome(request.getParameter("descricao"));
			cargo.setInsalubridade(Float.parseFloat(request.getParameter("txtinsalibridade")));
			cargo.setPericulosidade(Float.parseFloat(request.getParameter("txtpericulosidade")));
			dao.salvar(cargo);
		}
	}
}
