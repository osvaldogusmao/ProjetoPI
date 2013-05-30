package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.Pessoa;

@RequestScoped
public class PessoaDao {

	@Inject
	private EntityManager entityManager;
	
	public void salvar(Pessoa pessoa){
		
		entityManager.getTransaction().begin();
		entityManager.merge(pessoa);
		entityManager.getTransaction().commit();
	}
	
}
