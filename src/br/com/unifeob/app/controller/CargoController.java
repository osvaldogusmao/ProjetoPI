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
import javax.swing.JOptionPane;

import br.com.unifeob.app.dao.CargoDao;
import br.com.unifeob.app.entidades.Cargo;
import br.com.unifeob.app.entidades.Empresa;
import br.com.unifeob.app.entidades.INSS;

@WebServlet("/CargoController")
public class CargoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private CargoDao dao;

    public CargoController() {
    super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String logica = request.getParameter("logica");
		
		if(logica.equals("listar")){
			
			List<Cargo> lista = dao.listar();
			
			request.setAttribute("lista", lista);
			RequestDispatcher dp = request.getRequestDispatcher("/visualizar/cargo/index.jsp");
			dp.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String logica = request.getParameter("logica");
		
		if(logica.equals("salvar")){
			Cargo cargo = new Cargo();
			cargo.setNome(request.getParameter("descricao"));
			
			if(request.getParameter("txtinsalibridade").isEmpty()){
				cargo.setInsalubridade(0);
			}else{
				cargo.setInsalubridade(Float.parseFloat(request.getParameter("txtinsalibridade")));
			}
			
			if(request.getParameter("txtpericulosidade").isEmpty()){
				cargo.setPericulosidade(0);
			}else{
				cargo.setPericulosidade(Float.parseFloat(request.getParameter("txtpericulosidade")));
			}
			
			dao.salvar(cargo);
			
			request.setAttribute("sucesso", "");
            RequestDispatcher dispacher = request.getRequestDispatcher("/sucesso/index.jsp");
            dispacher.forward(request, response);
		}
		
		if(logica.equals("alterar")){
			Cargo cargo = dao.recuperarEstancia(Long.parseLong(request.getParameter("codigo")));
			request.setAttribute("cargo", cargo);
            RequestDispatcher dispacher = request.getRequestDispatcher("alterar/cargo/index.jsp");
            dispacher.forward(request, response);
		}
		
		if(logica.equals("deletar")){
			dao.deletar(Long.parseLong(request.getParameter("codigo")));
			
			List<Cargo> listaCargos = dao.listar();
			request.setAttribute("lista", listaCargos);
			RequestDispatcher dispatcher = request.getRequestDispatcher("visualizar/cargo/index.jsp");
			dispatcher.forward(request, response);
		}
		
		if(logica.equals("atualizar")){
        	Cargo cargo = new Cargo();
        	cargo.setId(Long.parseLong(request.getParameter("id")));
        	cargo.setNome(request.getParameter("descricao"));
        	cargo.setInsalubridade(Float.parseFloat(request.getParameter("txtinsalibridade")));
        	cargo.setPericulosidade(Float.parseFloat(request.getParameter("txtpericulosidade")));
        	dao.altera(cargo);
        	
        	List<Cargo> lista = dao.listar();
        	
        	request.setAttribute("lista", lista);
        	RequestDispatcher dispatcher = request.getRequestDispatcher("/visualizar/cargo/index.jsp");
        	dispatcher.forward(request, response);
        }

	}
}
