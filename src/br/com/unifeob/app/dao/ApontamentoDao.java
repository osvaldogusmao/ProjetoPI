package br.com.unifeob.app.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.Apontamento;

@RequestScoped
public class ApontamentoDao {

	@Inject
	private EntityManager entityManager;

	public Apontamento salva(Apontamento apontamento) {

		entityManager.getTransaction().begin();
		apontamento = entityManager.merge(apontamento);
		entityManager.getTransaction().commit();

		return apontamento;
	}

}
