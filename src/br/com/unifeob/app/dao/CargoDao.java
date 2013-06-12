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
	
	public void deletar(Long codigo){
		manager.getTransaction().begin();
		Cargo cargo = manager.find(Cargo.class, codigo);
		manager.remove(cargo);
		manager.getTransaction().commit();
	}
	
	public List<Cargo> listar(){
		return manager.createQuery("from Cargo").getResultList();
	}
	
	public Cargo recuperarEstancia(Long codigo){
		manager.getTransaction().begin();
		Cargo cargo = manager.find(Cargo.class, codigo);
		manager.getTransaction().commit();
		return cargo;
	}

	public void altera(Cargo cargo) {
		manager.getTransaction().begin();
		manager.merge(cargo);
		manager.getTransaction().commit();
	}
}
