package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import br.com.unifeob.app.entidades.Dependente;

@RequestScoped
public class DependenteDao {

	
	@Inject
	private EntityManager entityManager;
	
	public void salvar(Dependente dependente){
		
		entityManager.getTransaction().begin();
		entityManager.merge(dependente);
		entityManager.getTransaction().commit();
	}
}
