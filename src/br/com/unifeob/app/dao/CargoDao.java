package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.Cargo;

@RequestScoped
public class CargoDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(Cargo cargo){
		manager.getTransaction().begin();
		manager.persist(cargo);
		manager.getTransaction().commit();	
	}
	
	public List<Cargo> listar(){
		return manager.createQuery("from Cargo").getResultList();
	}
}
