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

import br.com.unifeob.app.dao.EstadosDao;
import br.com.unifeob.app.entidades.Estado;

@WebServlet("/EstadoController")
public class EstadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private EstadosDao dao;
 
    public EstadoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Estado> listaEstados = dao.listar();
		
		request.setAttribute("listaEstados", listaEstados);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/cadastro/empresa/index.jsp");
		dispatcher.forward(request, response);
			
	}
}
