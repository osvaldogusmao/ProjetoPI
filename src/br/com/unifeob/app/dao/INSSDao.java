package br.com.unifeob.app.dao;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import br.com.unifeob.app.entidades.INSS;

public class INSSDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(INSS inss){
		manager.getTransaction().begin();
		manager.merge(inss);
		manager.getTransaction().commit();
	}

}