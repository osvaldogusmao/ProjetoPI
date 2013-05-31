package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import br.com.unifeob.app.entidades.MesVigente;

@RequestScoped
public class MesVigenteDao {
	@Inject
	private EntityManager manager;
	
	public void salvar(MesVigente mesVigente){
		manager.getTransaction().begin();
		manager.persist(mesVigente);
		manager.getTransaction().commit();	
	}
}
