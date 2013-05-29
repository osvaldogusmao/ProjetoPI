package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;

@RequestScoped
public class LoginDao {

	@Inject
	private EntityManager entityManager;

	public Boolean vetificaLogin(String usuario , String senha){
	
		// criando uma variavel de retorno boolean
		boolean retorno = false;
		entityManager.getTransaction().begin();
		//query que busca o login que contem a senha e o usuario que vai ser passado
		Query query =  entityManager.createQuery("FROM Login l WHERE l.usuario =:usuario AND l.senha =:senha");
		// passando usuario e senha para a query pelo setParameter
		query.setParameter("usuario", usuario);
		query.setParameter("senha", senha);
		/*verificando se o getResultList que a query gera é vazio
		 se for vazio a variavel retorno é falsa 			 
		 */
		 if (query.getResultList().isEmpty()) {
			retorno = false;
		}else{
			retorno = true;
		}
		return retorno;
	}
	
}
