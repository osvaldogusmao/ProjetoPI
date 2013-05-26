package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.Empresa;

@RequestScoped
public class EmpresaDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(Empresa empresa){
		manager.getTransaction().begin();
		manager.persist(empresa);
		manager.getTransaction().commit();	
	}
}
