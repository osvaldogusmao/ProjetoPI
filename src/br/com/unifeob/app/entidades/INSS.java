package br.com.unifeob.app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="inss")
public class INSS {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private Integer anoRereferente;
	private Float valorLimiteFaixaUm;
	private Float percentualFaixaUm;
	private Float valorLimiteFaixaDois;
	private Float percentualFaixaDois;
	private Float valorLimiteFaixaTres;
	private Float percentualFaixaTres;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getAnoRereferente() {
		return anoRereferente;
	}
	public void setAnoRereferente(Integer anoRereferente) {
		this.anoRereferente = anoRereferente;
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
	
	
	

}
