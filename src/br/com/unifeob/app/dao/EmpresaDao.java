package br.com.unifeob.app.dao;

import java.util.List;

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
	
	public List<Empresa> listarEmpresas(){
		return manager.createQuery("from Empresa").getResultList();
	}
}
