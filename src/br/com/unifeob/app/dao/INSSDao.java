package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.INSS;

@RequestScoped
public class INSSDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(INSS inss){
		manager.getTransaction().begin();
		manager.merge(inss);
		manager.getTransaction().commit();
	}
	
	public List<INSS> listar(){
		return manager.createQuery("from INSS").getResultList();
	}
	
	public INSS recuperarInstancia(Long id){
		manager.getTransaction().begin();
		INSS inss = manager.find(INSS.class, id);
		manager.getTransaction().commit();
		return inss;
	}
	
	public void alterar(INSS inss){
		manager.getTransaction().begin();
		manager.merge(inss);
		manager.getTransaction().commit();
	}
	
	public void apagar(Long id){
		manager.getTransaction().begin();
		INSS inss = recuperarInstancia(id);
		manager.remove(inss);
		manager.getTransaction().commit();
	}
	
	

}
