package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.Empresa;
import br.com.unifeob.app.entidades.INSS;
import br.com.unifeob.app.entidades.Pessoa;

@RequestScoped
public class EmpresaDao {

	@Inject
	private EntityManager manager;

	public void salvar(Empresa empresa) {
		manager.getTransaction().begin();
		manager.merge(empresa);
		manager.getTransaction().commit();
	}

	public void deletar(Integer codigo) {
		manager.getTransaction().begin();
		Empresa empresa = manager.find(Empresa.class, codigo);
		manager.remove(empresa);
		manager.getTransaction().commit();
	}

	public List<Empresa> listarEmpresas() {
		return manager.createQuery("from Empresa").getResultList();
	}

	public Empresa recuperarEstancia(Integer codigo) {
		manager.getTransaction().begin();
		Empresa empresa = manager.find(Empresa.class, codigo);
		manager.getTransaction().commit();
		return empresa;
	}
	
	public void alterar(Empresa empresa){
		manager.getTransaction().begin();
		manager.merge(empresa);
		manager.getTransaction().commit();
	}
}
