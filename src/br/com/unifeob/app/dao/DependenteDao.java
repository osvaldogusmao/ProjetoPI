package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.unifeob.app.entidades.Dependente;
import br.com.unifeob.app.entidades.Pessoa;

@RequestScoped
public class DependenteDao {

	
	@Inject
	private EntityManager entityManager;
	
	public void salvar(Dependente dependente){
		
		entityManager.getTransaction().begin();
		entityManager.merge(dependente);
		entityManager.getTransaction().commit();
	}
	
	public List<Dependente> listarDependenteDePessoa(Pessoa pessoa){
		Query query = entityManager.createQuery("from Dependente d join fetch d.pessoa p  where d.pessoa = :pessoa");
        query.setParameter("pessoa", pessoa);
        List<Dependente> listaDeDependente = query.getResultList();
        return  listaDeDependente;

	}
}
