package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.unifeob.app.entidades.INSS;
import br.com.unifeob.app.entidades.Pessoa;

@RequestScoped
public class PessoaDao {

	@Inject
	private EntityManager entityManager;
	
	
    public Pessoa buscarPessoaCPF(String cpf) {
    	Pessoa pessoa;
        entityManager.getTransaction().begin();
        Query query = entityManager.createQuery("FROM Pessoa p WHERE p.cpf =:cpf");
        query.setParameter("cpf", cpf);
        entityManager.getTransaction().commit();
        pessoa = (Pessoa) query.getSingleResult();
        return pessoa;
    }
    public Pessoa buscaPessoa(Long codigo){   	
    	Pessoa pessoa = entityManager.find(Pessoa.class, codigo);
    	return pessoa;
    }
    public List<Pessoa> listaPessoas(){
    	return entityManager.createQuery("from Pessoa").getResultList();
    }

	public void salvar(Pessoa pessoa){
		entityManager.getTransaction().begin();
		entityManager.merge(pessoa);
		entityManager.getTransaction().commit();
	}
	public void editar(Pessoa pessoa){
		entityManager.getTransaction().begin();
		entityManager.merge(pessoa);
		entityManager.getTransaction().commit();
	}
    public void deletar(Long codigo) {
        entityManager.getTransaction().begin();
        Pessoa pessoa = buscaPessoa(codigo);
        entityManager.remove(pessoa);
        entityManager.getTransaction().commit();
    }

	
}
