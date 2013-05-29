package br.com.unifeob.app.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.LoginDao;
import br.com.unifeob.app.util.SenhaMD5;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	@Inject
	private LoginDao loginDao;
	SenhaMD5 converteSenha = new SenhaMD5();
   
    public LoginController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String logica que recebera o parametro do hidden
		String logica = request.getParameter("logica");
		 //verificando o valor de logica
		 if (logica.equals("entrar")) {
		 //criando variaveis e dando seus valores conforme o que foi digitado no form
			String usuario = request.getParameter("usuario");
		//convertendo senha para md5
			String senha = converteSenha.transformarParaMd5(request.getParameter("senha"));
		//string boolean resultado pega o resultado do DAO
			Boolean resultado = loginDao.vetificaLogin(usuario, senha);
		//virifica se o resultado é true ou false 
			if (resultado.equals(true)) {				
				request.getRequestDispatcher("/paginaInicial/index.jsp").forward(request, response);
				
			} else {
				request.setAttribute("msg", "USUARIO OU SENHA INVALIDO");
				request.getRequestDispatcher("/").forward(request, response);	
			}
				
		}
	}
}


