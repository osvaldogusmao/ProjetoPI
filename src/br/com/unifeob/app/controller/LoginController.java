package br.com.unifeob.app.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.LoginDao;
import br.com.unifeob.app.util.Util;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	@Inject
	private LoginDao loginDao;
	Util util = new Util();
   
    public LoginController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String logica = request.getParameter("logica");
		 if (logica.equals("entrar")) {
			String usuario = request.getParameter("usuario");
			String senha = util.converterSenhaParaMd5(request.getParameter("senha"));
			Boolean resultado = loginDao.vetificaLogin(usuario, senha);
			if (resultado.equals(true)) {				
				request.getRequestDispatcher("/paginaInicial/index.jsp").forward(request, response);
				
			} else {
				request.setAttribute("msg", "USUARIO OU SENHA INVALIDO");
				request.getRequestDispatcher("/").forward(request, response);	
			}
				
		}
	}
}


