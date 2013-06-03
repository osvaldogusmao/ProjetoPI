package br.com.unifeob.app.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unifeob.app.dao.VerbaDao;
import br.com.unifeob.app.entidades.Verba;
import br.com.unifeob.app.enumator.TipoVerbaEnum;

@WebServlet("/cadastro/verba")
public class CadastroVerbasController extends HttpServlet {

	/**
	 * Serial Version
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constantes
	 * */
	private String LISTA = "/cadastro/verba/listagem.jsp";
	private String FORMULARIO = "/cadastro/verba/formulario.jsp";

	/**
	 * @Inject
	 * */
	@Inject
	private VerbaDao verbaDao;

	/**
	 * 
	 * Variaveis da classe
	 * 
	 * */
	private HttpServletRequest request;
	private HttpServletResponse response;

	public CadastroVerbasController() {

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.request = request;
		this.response = response;

		Map<String, String[]> parametros = request.getParameterMap();

		if (parametros.size() == 0) {
			lista();
		}

		if (parametros.containsKey("novo")) {
			novo();
		}

		if (parametros.containsKey("edita") && parametros.containsKey("id")) {
			edita(Integer.parseInt(request.getParameter("id")));
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {

		this.request = request;
		this.response = response;

		Map<String, String[]> parametros = request.getParameterMap();

		if (parametros.containsKey("salva")) {
			if(request.getParameter("verba_id").isEmpty()){
				salva();
			}else{
				atualiza();
			}
		}

		if (parametros.containsKey("deleta")) {
			deleta(Integer.parseInt(request.getParameter("verba_id")));
		}
	}
	
	/**
	 * 
	 * Lista as verbas cadastradas
	 * 
	 * */
	private void lista() {
		List<Verba> verbas = verbaDao.lista();
		request.setAttribute("verbas", verbas);

		dispatcher(LISTA);
	}

	/**
	 * 
	 * Prepara o formulário para adicionar uma nova verba
	 * 
	 * */
	private void novo() {
		List<TipoVerbaEnum> tipoVerbaEnums = Arrays.asList(TipoVerbaEnum.values());
		request.setAttribute("tipoVerbas", tipoVerbaEnums);

		dispatcher(FORMULARIO);
	}

	/**
	 * 
	 * Método responsável em salvar uma verba
	 * */
	private void salva() {

		Verba verba = new Verba();
		verba.setDescricao(request.getParameter("verba_descricao"));
		verba.setTipoVerba(TipoVerbaEnum.valueOf(request.getParameter("verba_tipoVerba")));
		verba.setIncideINSS(new Boolean(request.getParameter("verba_incideINSS")));
		verba.setIncideIRRF(new Boolean(request.getParameter("verba_incideIRRF")));

		if (verbaDao.salva(verba).getId() > 0) {
			request.setAttribute("msg", "Registro incluido com sucesso!");
			lista();
		} else {
			request.setAttribute("msg", "Erro ao incluir");
			request.setAttribute("verba", verba);
			edita(0);
		}
	}

	private void atualiza() {
		Verba verba = verbaDao.carrega(Integer.parseInt(request.getParameter("verba_id")));
		verba.setDescricao(request.getParameter("verba_descricao"));
		verba.setTipoVerba(TipoVerbaEnum.valueOf(request.getParameter("verba_tipoVerba")));
		verba.setIncideINSS(new Boolean(request.getParameter("verba_incideINSS")));
		verba.setIncideIRRF(new Boolean(request.getParameter("verba_incideIRRF")));

		if (verbaDao.salva(verba).getId() > 0) {
			request.setAttribute("msg", "Registro atualizado com sucesso!");
			lista();
		} else {
			request.setAttribute("msg", "Erro ao atualizar");
			request.setAttribute("verba", verba);
			edita(0);
		}

	}

	
	/**
	 * Método responsável em prepara a página para edição do registro
	 * 
	 * */
	private void edita(Integer id) {
		
		List<TipoVerbaEnum> tipoVerbaEnums = Arrays.asList(TipoVerbaEnum.values());
		request.setAttribute("tipoVerbas", tipoVerbaEnums);
		
		if (id > 0) {
			Verba verba = verbaDao.carrega(id);
			request.setAttribute("verba", verba);
		} 
		
		dispatcher(FORMULARIO);
	}

	private void deleta(Integer id) {

		Verba verba = verbaDao.carrega(id);

		verbaDao.deleta(verba);

		request.setAttribute("msg", "Registro excluido com sucesso!");
		lista();

	}

	/**
	 * Métodos responsavel em fazer o dispacher da página
	 * 
	 * */
	private void dispatcher(String dispather) {

		RequestDispatcher view = request.getRequestDispatcher(dispather);
		try {
			view.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
}
