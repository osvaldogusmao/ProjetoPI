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
	
	
	public List<Dependente> listarDependenteDePessoa(Pessoa pessoa){
		Query query = entityManager.createQuery("from Dependente d join fetch d.pessoa p  where d.pessoa = :pessoa");
        query.setParameter("pessoa", pessoa);
        List<Dependente> listaDeDependente = query.getResultList();
        return  listaDeDependente;
	}
    public Dependente buscaDependente(Long codigo){   	
    	Dependente dependente = entityManager.find(Dependente.class, codigo);
    	return dependente;
    }
	public void salvar(Dependente dependente){
		entityManager.getTransaction().begin();
		entityManager.merge(dependente);
		entityManager.getTransaction().commit();
	}
	public void editar(Dependente dependente){
		entityManager.getTransaction().begin();
		entityManager.merge(dependente);
		entityManager.getTransaction().commit();
	}
    public void deletar(Long codigo) {
        entityManager.getTransaction().begin();
        Dependente dependente = buscaDependente(codigo);
        entityManager.remove(dependente);
        entityManager.getTransaction().commit();
    }
}
