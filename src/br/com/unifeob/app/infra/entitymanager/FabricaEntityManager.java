package br.com.unifeob.app.infra.entitymanager;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Disposes;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaEntityManager {

	@Produces
	@ApplicationScoped
	public EntityManagerFactory criaEntityManagerFactory(){
		System.out.println("Criando EntityManagerFactory");
		return Persistence.createEntityManagerFactory("ProjetoPI");
	}
	
	@Produces
	@RequestScoped
	public EntityManager criaEntityManager(EntityManagerFactory factory){
		System.out.println("Criando EntityManager");
		return factory.createEntityManager();
	}
	
	public void fechaEntityManager(@Disposes EntityManager entityManager){
		entityManager.close();
	}
	
	public void fechaEntityManagerFactory(@Disposes EntityManagerFactory entityManagerFactory){
		entityManagerFactory.close();
	}
	
}
