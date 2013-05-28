package br.com.unifeob.app.dao;

import java.util.List;

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
	
	public List<IRRF> listar(){
		return manager.createQuery("from IRRF").getResultList();
	}
	
	public IRRF recuperarInstancia(Long id){
		manager.getTransaction().begin();
		IRRF irrf = manager.find(IRRF.class, id);
		manager.getTransaction().commit();
		return irrf;
	}
	
	public void alterar(IRRF irrf){
		manager.getTransaction().begin();
		manager.merge(irrf);
		manager.getTransaction().commit();
	}
	
	public void apagar(Long id){
		manager.getTransaction().begin();
		IRRF irrf = recuperarInstancia(id);
		manager.remove(irrf);
		manager.getTransaction().commit();
	}
	

}
