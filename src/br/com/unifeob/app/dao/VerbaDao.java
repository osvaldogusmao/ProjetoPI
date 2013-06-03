package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.Verba;

@RequestScoped
public class VerbaDao {

	@Inject
	private EntityManager entityManager;

	public Verba salva(Verba verba) {
		Verba v = null;
		entityManager.getTransaction().begin();
		v = entityManager.merge(verba);
		entityManager.getTransaction().commit();
		return v;
	}

	public Verba carrega(Integer id){
		return (Verba)entityManager.find(Verba.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Verba> lista() {
		return entityManager.createQuery("from Verba").getResultList();
	}

	public void deleta(Verba verba) {
		
		entityManager.getTransaction().begin();
		entityManager.remove(verba);
		entityManager.getTransaction().commit();
	}

}
