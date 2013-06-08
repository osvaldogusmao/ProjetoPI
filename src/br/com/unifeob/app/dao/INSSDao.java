package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.INSS;
import br.com.unifeob.app.entidades.PorcentagemDeducao;

@RequestScoped
public class INSSDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(INSS inss){
		manager.getTransaction().begin();
		manager.merge(inss);
		manager.getTransaction().commit();
	}
	
	public List<INSS> listar(){
		return manager.createQuery("from INSS").getResultList();
	}
	
	public INSS recuperarInstancia(Long id){
		manager.getTransaction().begin();
		INSS inss = manager.find(INSS.class, id);
		manager.getTransaction().commit();
		return inss;
	}
	
	public void alterar(INSS inss){
		manager.getTransaction().begin();
		manager.merge(inss);
		manager.getTransaction().commit();
	}
	
	public void apagar(Long id){
		INSS inss = recuperarInstancia(id);
		manager.getTransaction().begin();
		manager.remove(inss);
		manager.getTransaction().commit();
	}
	
	public INSS recuperarINSSPorAno(Integer anoReferente){
		manager.getTransaction().begin();
		INSS inss = (INSS) manager.createQuery("from INSS where anoReferente = "+anoReferente).getSingleResult();
		manager.getTransaction().commit();
		return inss;
	}
	
	public PorcentagemDeducao recuperarPorcentagem(Integer anoReferente, Float valor){
		INSS inss = recuperarINSSPorAno(anoReferente);
		
		PorcentagemDeducao porcentagemDeducao = new PorcentagemDeducao();
		
		if(valor <= inss.getValorLimiteFaixaUm() && valor >= inss.getValorFaixaUm()){
			porcentagemDeducao.setPorcentagem(inss.getPercentualFaixaUm());
			return porcentagemDeducao;
		
		}else if((valor <= inss.getValorLimiteFaixaDois()) && (valor >= inss.getValorFaixaDois())){
			porcentagemDeducao.setPorcentagem(inss.getPercentualFaixaDois());
			return porcentagemDeducao;
		
		}else if(valor >= inss.getValorFaixaTres() && valor <=inss.getValorLimiteFaixaTres()){
			porcentagemDeducao.setPorcentagem(inss.getPercentualFaixaTres());
			return porcentagemDeducao;
		
		}else if(valor >= inss.getValorFaixaTres() && valor >=inss.getValorLimiteFaixaTres()){
			porcentagemDeducao.setDeducao(inss.getDeducao());
			return porcentagemDeducao;
			
		}else{
			porcentagemDeducao.setPorcentagem(inss.getPercentualFaixaUm());
			return porcentagemDeducao;
		}
	}
	
	

}
