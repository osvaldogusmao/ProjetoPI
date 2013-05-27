package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.IRRF;

@RequestScoped
public class IRRFDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(IRRF irrf){
		manager.getTransaction().begin();
		manager.merge(irrf);
		manager.getTransaction().commit();
	}

}
