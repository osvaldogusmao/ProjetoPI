package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import br.com.unifeob.app.entidades.Pessoa;

@RequestScoped
public class PessoaDao {

	@Inject
	private EntityManager entityManager;
	
	public void salvar(Pessoa pessoa){
		
		entityManager.getTransaction().begin();
		entityManager.merge(pessoa);
		entityManager.getTransaction().commit();
	}
	
    public Pessoa buscarPessoaCPF(String cpf) {
    	Pessoa pessoa;
        entityManager.getTransaction().begin();
        Query query = entityManager.createQuery("FROM Pessoa p WHERE p.cpf =:cpf");
        query.setParameter("cpf", cpf);
        entityManager.getTransaction().commit();
        pessoa = (Pessoa) query.getSingleResult();
        return pessoa;
    } 

	
}
