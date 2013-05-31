package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.Estado;

@RequestScoped
public class EstadosDao {
	
	@Inject
	private EntityManager manager;
	
	public List<Estado> listar(){
		return manager.createQuery("from estados").getResultList();
	}
}
