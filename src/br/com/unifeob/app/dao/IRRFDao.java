package br.com.unifeob.app.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.unifeob.app.entidades.IRRF;
import br.com.unifeob.app.entidades.PorcentagemDeducao;

@RequestScoped
public class IRRFDao {
	
	@Inject
	private EntityManager manager;
	
	public void salvar(IRRF irrf){
		manager.getTransaction().begin();
		manager.merge(irrf);
		manager.getTransaction().commit();
	}
	
	public List<IRRF> listar(){
		return manager.createQuery("from IRRF").getResultList();
	}
	
	public IRRF recuperarInstancia(Long id){
		manager.getTransaction().begin();
		IRRF irrf = manager.find(IRRF.class, id);
		manager.getTransaction().commit();
		return irrf;
	}
	
	public void alterar(IRRF irrf){
		manager.getTransaction().begin();
		manager.merge(irrf);
		manager.getTransaction().commit();
	}
	
	public void apagar(Long id){
		IRRF irrf = recuperarInstancia(id);
		manager.getTransaction().begin();
		manager.remove(irrf);
		manager.getTransaction().commit();
	}
	
	public IRRF recuperarIRRFPorAno(Integer anoReferente){
		manager.getTransaction().begin();
		IRRF irrf = (IRRF) manager.createQuery("from IRRF where anoReferente=" +anoReferente).getSingleResult();
		manager.getTransaction().commit();
		return irrf;
	}
	
	public PorcentagemDeducao recuperarPorcentagem(Integer anoReferente, Float valor){
		IRRF irrf = recuperarIRRFPorAno(anoReferente);
		PorcentagemDeducao porcentagemDeducao = new PorcentagemDeducao();
		
		if(valor >= irrf.getValorFaixaUm() && valor <= irrf.getValorLimiteFaixaUm()){
			porcentagemDeducao.setDeducao(irrf.getDeducaoFaixaUm());
			porcentagemDeducao.setPorcentagem(irrf.getPercentualFaixaUm());
			return porcentagemDeducao;
			
		}else if(valor >= irrf.getValorFaixaDois() && valor <= irrf.getValorLimiteFaixaDois()){
			porcentagemDeducao.setDeducao(irrf.getDeducaoFaixaDois());
			porcentagemDeducao.setPorcentagem(irrf.getPercentualFaixaDois());
			return porcentagemDeducao;
			
		}else if(valor >= irrf.getValorFaixaTres() && valor <= irrf.getValorLimiteFaixaTres()){
			porcentagemDeducao.setDeducao(irrf.getDeducaoFaixaTres());
			porcentagemDeducao.setPorcentagem(irrf.getPercentualFaixaTres());
			return porcentagemDeducao;
			
		}else if (valor >= irrf.getValorLimiteFaixaQuatro()){
			porcentagemDeducao.setDeducao(irrf.getDeducaoFaixaQuatro());
			porcentagemDeducao.setPorcentagem(irrf.getPercentualFaixaQuatro());
			return porcentagemDeducao;
		}else{
			return porcentagemDeducao;
		}
		
	}
	

}
