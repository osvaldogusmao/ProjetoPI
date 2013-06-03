package br.com.unifeob.app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="irrf")
public class IRRF {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private Integer anoReferente;
	
	private Float valorFaixaUm;
	private Float valorLimiteFaixaUm;
	private Float percentualFaixaUm;
	private Float deducaoFaixaUm;
	
	private Float valorFaixaDois;
	private Float valorLimiteFaixaDois;
	private Float percentualFaixaDois;
	private Float deducaoFaixaDois;
	
	private Float valorFaixaTres;
	private Float valorLimiteFaixaTres;
	private Float percentualFaixaTres;
	private Float deducaoFaixaTres;
	
	private Float valorLimiteFaixaQuatro;
	private Float percentualFaixaQuatro;
	private Float deducaoFaixaQuatro;
	
	private Float deducaoPorDependente;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getAnoReferente() {
		return anoReferente;
	}

	public void setAnoReferente(Integer anoReferente) {
		this.anoReferente = anoReferente;
	}

	public Float getValorLimiteFaixaUm() {
		return valorLimiteFaixaUm;
	}

	public void setValorLimiteFaixaUm(Float valorLimiteFaixaUm) {
		this.valorLimiteFaixaUm = valorLimiteFaixaUm;
	}

	public Float getPercentualFaixaUm() {
		return percentualFaixaUm;
	}

	public void setPercentualFaixaUm(Float percentualFaixaUm) {
		this.percentualFaixaUm = percentualFaixaUm;
	}

	public Float getDeducaoFaixaUm() {
		return deducaoFaixaUm;
	}

	public void setDeducaoFaixaUm(Float deducaoFaixaUm) {
		this.deducaoFaixaUm = deducaoFaixaUm;
	}

	public Float getValorLimiteFaixaDois() {
		return valorLimiteFaixaDois;
	}

	public void setValorLimiteFaixaDois(Float valorLimiteFaixaDois) {
		this.valorLimiteFaixaDois = valorLimiteFaixaDois;
	}

	public Float getPercentualFaixaDois() {
		return percentualFaixaDois;
	}

	public void setPercentualFaixaDois(Float percentualFaixaDois) {
		this.percentualFaixaDois = percentualFaixaDois;
	}

	public Float getDeducaoFaixaDois() {
		return deducaoFaixaDois;
	}

	public void setDeducaoFaixaDois(Float deducaoFaixaDois) {
		this.deducaoFaixaDois = deducaoFaixaDois;
	}

	public Float getValorLimiteFaixaTres() {
		return valorLimiteFaixaTres;
	}

	public void setValorLimiteFaixaTres(Float valorLimiteFaixaTres) {
		this.valorLimiteFaixaTres = valorLimiteFaixaTres;
	}

	public Float getPercentualFaixaTres() {
		return percentualFaixaTres;
	}

	public void setPercentualFaixaTres(Float percentualFaixaTres) {
		this.percentualFaixaTres = percentualFaixaTres;
	}

	public Float getDeducaoFaixaTres() {
		return deducaoFaixaTres;
	}

	public void setDeducaoFaixaTres(Float deducaoFaixaTres) {
		this.deducaoFaixaTres = deducaoFaixaTres;
	}

	public Float getValorLimiteFaixaQuatro() {
		return valorLimiteFaixaQuatro;
	}

	public void setValorLimiteFaixaQuatro(Float valorLimiteFaixaQuatro) {
		this.valorLimiteFaixaQuatro = valorLimiteFaixaQuatro;
	}

	public Float getPercentualFaixaQuatro() {
		return percentualFaixaQuatro;
	}

	public void setPercentualFaixaQuatro(Float percentualFaixaQuatro) {
		this.percentualFaixaQuatro = percentualFaixaQuatro;
	}

	public Float getDeducaoFaixaQuatro() {
		return deducaoFaixaQuatro;
	}

	public void setDeducaoFaixaQuatro(Float deducaoFaixaQuatro) {
		this.deducaoFaixaQuatro = deducaoFaixaQuatro;
	}

	public Float getDeducaoPorDependente() {
		return deducaoPorDependente;
	}

	public void setDeducaoPorDependente(Float deducaoPorDependente) {
		this.deducaoPorDependente = deducaoPorDependente;
	}

	public Float getValorFaixaUm() {
		return valorFaixaUm;
	}

	public void setValorFaixaUm(Float valorFaixaUm) {
		this.valorFaixaUm = valorFaixaUm;
	}

	public Float getValorFaixaDois() {
		return valorFaixaDois;
	}

	public void setValorFaixaDois(Float valorFaixaDois) {
		this.valorFaixaDois = valorFaixaDois;
	}

	public Float getValorFaixaTres() {
		return valorFaixaTres;
	}

	public void setValorFaixaTres(Float valorFaixaTres) {
		this.valorFaixaTres = valorFaixaTres;
	}
	
	
	

}
