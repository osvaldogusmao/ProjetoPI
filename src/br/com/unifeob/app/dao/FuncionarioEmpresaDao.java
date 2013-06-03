package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.FuncionarioEmpresa;

@RequestScoped
public class FuncionarioEmpresaDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(FuncionarioEmpresa funcionarioEmpresa){
		manager.getTransaction().begin();
		manager.merge(funcionarioEmpresa);
		manager.getTransaction().commit();
	}
	
	public FuncionarioEmpresa recuperarId(Long idFuncEmpresa){
		manager.getTransaction().begin();
		FuncionarioEmpresa funcionarioEmpresa = manager.find(FuncionarioEmpresa.class, idFuncEmpresa);
		manager.getTransaction().commit();
		return funcionarioEmpresa;
	}

	public List<FuncionarioEmpresa> listar(){
		return manager.createQuery("from FuncionarioEmpresa").getResultList();
	}
	
	public void alterar(FuncionarioEmpresa funcionarioEmpresa){
		manager.getTransaction().begin();
		manager.merge(funcionarioEmpresa);
		manager.getTransaction().commit();
	}
	
	public void apagar(Long idFuncEmpresa){
		manager.getTransaction().begin();
		FuncionarioEmpresa funcionarioEmpresa = recuperarId(idFuncEmpresa);
		manager.remove(funcionarioEmpresa);
		manager.getTransaction().commit();
	}
	
	

}
